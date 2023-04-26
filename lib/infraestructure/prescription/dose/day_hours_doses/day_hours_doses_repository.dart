import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/day_hour_doses_failures.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/day_hours_doses.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/i_day_hour_doses_repository.dart';
import 'package:expedientes_clinicos/infraestructure/helper_functions/string_manipulation.dart';
import 'package:expedientes_clinicos/infraestructure/prescription/dose/day_hours_doses/day_hours_doses_dtos.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IDayHoursDoseRepository)
class DayHoursDosesRepository implements IDayHoursDoseRepository {
  final FirebaseFirestore _firestore;
  DayHoursDosesRepository(this._firestore);
  @override
  Future<Either<DayHoursDoseFailures, Unit>> create(
      DayHoursDose dayHoursDose) async {
    try {
      final dayHoursDoses = _firestore.collection('dayHoursDoses');

      DayHoursDoseDto dayHoursDoseDto =
          DayHoursDoseDto.fromDomain(dayHoursDose);

      Map<String, dynamic> data = dayHoursDoseDto.toJson();

      //store the keyword that we will use for querying this document
      data['keyWords'] = generateKeywords(dayHoursDoseDto.label);

      //We keep the id that comes from genericMedicineDto and avoid autogeneration
      await dayHoursDoses.doc(dayHoursDoseDto.id).set(data);

      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DayHoursDoseFailures.insufficientPermissions());
      } else {
        return left(const DayHoursDoseFailures.unexpected());
      }
    } catch (e) {
      return left(const DayHoursDoseFailures.unexpected());
    }
  }

  @override
  Future<Either<DayHoursDoseFailures, Unit>> createFake() async {
    // TODO: implement watchFiltered
    throw UnimplementedError();
  }

  @override
  Future<Either<DayHoursDoseFailures, Unit>> delete(
      DayHoursDose dayHoursDose) async {
    final dayHoursDoses = _firestore.collection('dayHoursDoses');
    try {
      final dayHoursDoseDto = DayHoursDoseDto.fromDomain(dayHoursDose);
      await dayHoursDoses.doc(dayHoursDoseDto.id).delete();
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DayHoursDoseFailures.insufficientPermissions());
      } else {
        return left(const DayHoursDoseFailures.unexpected());
      }
    }
  }

  @override
  Future<Either<DayHoursDoseFailures, Unit>> update(
      DayHoursDose dayHoursDose) async {
    try {
      final dayHoursDoses = _firestore.collection('dayHoursDoses');

      DayHoursDoseDto dayHoursDoseDto =
          DayHoursDoseDto.fromDomain(dayHoursDose);

      Map<String, dynamic> data = dayHoursDoseDto.toJson();

      //store the keyword that we will use for querying this document
      data['keyWords'] = generateKeywords(dayHoursDoseDto.label);

      //We keep the id that comes from genericMedicineDto and avoid autogeneration
      await dayHoursDoses.doc(dayHoursDoseDto.id).set(data);

      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DayHoursDoseFailures.insufficientPermissions());
      } else {
        return left(const DayHoursDoseFailures.unexpected());
      }
    }
  }

  @override
  Stream<Either<DayHoursDoseFailures, KtList<DayHoursDose>>> watchAll() async* {
    final dayHoursDoses = _firestore.collection('dayHoursDoses');
    yield* dayHoursDoses
        .snapshots()
        .map(
          (snapshot) => right<DayHoursDoseFailures, KtList<DayHoursDose>>(
            snapshot.docs
                .map((doc) => DayHoursDoseDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DayHoursDoseFailures.insufficientPermissions());
      } else {
        return left(const DayHoursDoseFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DayHoursDoseFailures, KtList<DayHoursDose>>> watchFiltered(
      String name) async* {
    final dayHoursDoses = _firestore.collection('dayHoursDoses');
    yield* dayHoursDoses
        .where('keyWords', arrayContains: removeSpecialCharacters(name))
        .snapshots()
        .map(
          (snapshot) => right<DayHoursDoseFailures, KtList<DayHoursDose>>(
            snapshot.docs
                .map((doc) => DayHoursDoseDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DayHoursDoseFailures.insufficientPermissions());
      } else {
        return left(const DayHoursDoseFailures.unexpected());
      }
    });
  }
}
