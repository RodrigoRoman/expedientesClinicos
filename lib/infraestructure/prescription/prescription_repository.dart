import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/prescription/i_prescription_repository.dart';
import 'package:expedientes_clinicos/domain/prescription/prescription.dart';
import 'package:expedientes_clinicos/domain/prescription/prescription_failures.dart';
import 'package:expedientes_clinicos/infraestructure/helper_functions/string_manipulation.dart';
import 'package:expedientes_clinicos/infraestructure/prescription/prescription_dtos.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IPrescriptionRepository)
class PrescriptionRepository implements IPrescriptionRepository {
  final FirebaseFirestore _firestore;
  PrescriptionRepository(this._firestore);
  @override
  Future<Either<PrescriptionFailures, Unit>> create(
      Prescription prescription) async {
    try {
      final prescriptions = _firestore.collection('prescriptions');

      PrescriptionDto prescriptionDto =
          PrescriptionDto.fromDomain(prescription);

      Map<String, dynamic> data = prescriptionDto.toJson();

      //store the keyword that we will use for querying this document
      data['keyWords'] =
          await generateKeywords(prescriptionDto.medicine.comercialName) +
              await generateKeywords(
                  prescriptionDto.medicine.genericMedicine.genericName) +
              await generateKeywords(
                  prescriptionDto.medicine.genericMedicine.measureUnit.name) +
              await generateKeywords(prescriptionDto
                  .medicine.genericMedicine.amountMeasureUnit
                  .toInt()
                  .toString()) +
              await generateKeywords(prescriptionDto
                  .medicine.genericMedicine.administrationRoute.name);

      //We keep the id that comes from prescriptionDto and avoid autogeneration
      await prescriptions.doc(prescriptionDto.id).set(data);

      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const PrescriptionFailures.insufficientPermissions());
      } else {
        return left(const PrescriptionFailures.unexpected());
      }
    } on FirebaseException catch (e) {
      return left(const PrescriptionFailures.unableToUploadImage());
    } catch (e) {
      return left(const PrescriptionFailures.unexpected());
    }
  }

  @override
  Future<Either<PrescriptionFailures, Unit>> createFake() async {
    // TODO: implement watchFiltered
    throw UnimplementedError();
  }

  @override
  Future<Either<PrescriptionFailures, Unit>> delete(
      Prescription prescription) async {
    final prescriptions = _firestore.collection('prescriptions');
    try {
      final prescriptionDto = PrescriptionDto.fromDomain(prescription);
      await prescriptions.doc(prescriptionDto.id).delete();
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const PrescriptionFailures.insufficientPermissions());
      } else {
        return left(const PrescriptionFailures.unexpected());
      }
    }
  }

  @override
  Future<Either<PrescriptionFailures, Unit>> update(
      Prescription prescription) async {
    try {
      final prescriptions = _firestore.collection('prescriptions');

      PrescriptionDto prescriptionDto =
          PrescriptionDto.fromDomain(prescription);

      Map<String, dynamic> data = prescriptionDto.toJson();

      //We keep the id that comes from prescriptionDto and avoid autogeneration
      await prescriptions.doc(prescriptionDto.id).set(data);
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const PrescriptionFailures.insufficientPermissions());
      } else {
        return left(const PrescriptionFailures.unexpected());
      }
    }
  }

  @override
  Stream<Either<PrescriptionFailures, KtList<Prescription>>> watchAll() async* {
    final prescriptions = _firestore.collection('prescriptions');
    yield* prescriptions
        .snapshots()
        .map(
          (snapshot) => right<PrescriptionFailures, KtList<Prescription>>(
            snapshot.docs
                .map((doc) => PrescriptionDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const PrescriptionFailures.insufficientPermissions());
      } else {
        return left(const PrescriptionFailures.unexpected());
      }
    });
    // ingredientVersionCollection();
  }

  @override
  Stream<Either<PrescriptionFailures, KtList<Prescription>>> watchFiltered(
      String name) async* {
    final medicines = _firestore.collection('prescriptions');
    yield* medicines
        .where('keyWords', arrayContains: removeSpecialCharacters(name))
        .snapshots()
        .map(
          (snapshot) => right<PrescriptionFailures, KtList<Prescription>>(
            snapshot.docs
                .map((doc) => PrescriptionDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const PrescriptionFailures.insufficientPermissions());
      } else {
        return left(const PrescriptionFailures.unexpected());
      }
    });
  }
}
