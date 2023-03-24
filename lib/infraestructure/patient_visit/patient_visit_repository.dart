import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/patient_visit/i_patient_visit_repository.dart';
import 'package:expedientes_clinicos/domain/patient_visit/patient_visit.dart';
import 'package:expedientes_clinicos/domain/patient_visit/patient_visit_failures.dart';
import 'package:expedientes_clinicos/infraestructure/helper_functions/string_manipulation.dart';
import 'package:expedientes_clinicos/infraestructure/patient_visit/patient_visit_dtos.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IPatientVisitRepository)
class PatientVisitRepository implements IPatientVisitRepository {
  final FirebaseFirestore _firestore;
  PatientVisitRepository(this._firestore);
  @override
  Future<Either<PatientVisitFailures, Unit>> create(
      PatientVisit patientVisit) async {
    try {
      final patientVisits = _firestore.collection('patientVisits');

      PatientVisitDto patientVisitDto =
          PatientVisitDto.fromDomain(patientVisit);

      Map<String, dynamic> data = patientVisitDto.toJson();

      //store the keyword that we will use for querying this document
      // data['keyWords'] = generateKeywords(patientVisitDto.comercialName) +
      //     generateKeywords(patientVisitDto.genericMedicine.genericName) +
      //     generateKeywords(
      //         patientVisitDto.genericMedicine.administrationRoute.name) +
      //     generateKeywords(patientVisitDto.genericMedicine.category.name);

      //We keep the id that comes from BrandedpatientVisitDto and avoid autogeneration
      await patientVisits.doc(patientVisitDto.id).set(data);
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const PatientVisitFailures.insufficientPermissions());
      } else {
        return left(const PatientVisitFailures.unexpected());
      }
    } catch (e) {
      return left(const PatientVisitFailures.unexpected());
    }
  }

  @override
  Future<Either<PatientVisitFailures, Unit>> createFake() async {
    // TODO: implement watchFiltered
    throw UnimplementedError();
  }

  @override
  Future<Either<PatientVisitFailures, Unit>> delete(
      PatientVisit patientVisit) async {
    final patientVisits = _firestore.collection('patientVisits');
    try {
      final BrandedpatientVisitDto = PatientVisitDto.fromDomain(patientVisit);
      await patientVisits.doc(BrandedpatientVisitDto.id).delete();
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const PatientVisitFailures.insufficientPermissions());
      } else {
        return left(const PatientVisitFailures.unexpected());
      }
    }
  }

  @override
  Future<Either<PatientVisitFailures, Unit>> update(
      PatientVisit patientVisit) async {
    try {
      final patientVisits = _firestore.collection('patientVisits');

      PatientVisitDto patientVisitDto =
          PatientVisitDto.fromDomain(patientVisit);

      Map<String, dynamic> data = patientVisitDto.toJson();

      //store the keyword that we will use for querying this document
      // data['keyWords'] = generateKeywords(patientVisitDto.comercialName) +
      //     generateKeywords(patientVisitDto.genericMedicine.genericName) +
      //     generateKeywords(
      //         patientVisitDto.genericMedicine.administrationRoute.name) +
      //     generateKeywords(patientVisitDto.genericMedicine.category.name);

      //We keep the id that comes from BrandedpatientVisitDto and avoid autogeneration
      await patientVisits.doc(patientVisitDto.id).set(data);
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const PatientVisitFailures.insufficientPermissions());
      } else {
        return left(const PatientVisitFailures.unexpected());
      }
    }
  }

  @override
  Stream<Either<PatientVisitFailures, KtList<PatientVisit>>> watchAll() async* {
    final patientVisits = _firestore.collection('patientVisits');
    yield* patientVisits
        .orderBy('lastUpdated', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<PatientVisitFailures, KtList<PatientVisit>>(
            snapshot.docs
                .map((doc) => PatientVisitDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const PatientVisitFailures.insufficientPermissions());
      } else {
        return left(const PatientVisitFailures.unexpected());
      }
    });

    // ingredientVersionCollection();
  }

  @override
  Stream<Either<PatientVisitFailures, KtList<PatientVisit>>> watchFiltered(
      String name) {
    // TODO: implement watchFiltered
    throw UnimplementedError();
  }
}
