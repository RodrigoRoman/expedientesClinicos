import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/i_week_doses_repository.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/week_days_dose.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/week_days_dose_failures.dart';
import 'package:expedientes_clinicos/infraestructure/helper_functions/string_manipulation.dart';
import 'package:expedientes_clinicos/infraestructure/prescription/dose/week_days_dose/week_days_dose_dtos.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IWeekDaysDoseRepository)
class WeekDaysDoseRepository implements IWeekDaysDoseRepository {
  final FirebaseFirestore _firestore;
  WeekDaysDoseRepository(this._firestore);
  @override
  Future<Either<WeekDaysDoseFailures, Unit>> create(
      WeekDaysDose weekDaysDose) async {
    try {
      final weekDaysDoses = _firestore.collection('weekDaysDoses');

      WeekDaysDoseDto weekDaysDoseDto =
          WeekDaysDoseDto.fromDomain(weekDaysDose);

      Map<String, dynamic> data = weekDaysDoseDto.toJson();

      //store the keyword that we will use for querying this document
      data['keyWords'] = generateKeywords(weekDaysDoseDto.label);

      //We keep the id that comes from genericMedicineDto and avoid autogeneration
      await weekDaysDoses.doc(weekDaysDoseDto.id).set(data);

      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const WeekDaysDoseFailures.insufficientPermissions());
      } else {
        return left(const WeekDaysDoseFailures.unexpected());
      }
    } catch (e) {
      return left(const WeekDaysDoseFailures.unexpected());
    }
  }

  @override
  Future<Either<WeekDaysDoseFailures, Unit>> createFake() async {
    // TODO: implement watchFiltered
    throw UnimplementedError();
  }

  @override
  Future<Either<WeekDaysDoseFailures, Unit>> delete(
      WeekDaysDose weekDaysDose) async {
    final weekDaysDoses = _firestore.collection('weekDaysDoses');
    try {
      final weekDaysDoseDto = WeekDaysDoseDto.fromDomain(weekDaysDose);
      await weekDaysDoses.doc(weekDaysDoseDto.id).delete();
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const WeekDaysDoseFailures.insufficientPermissions());
      } else {
        return left(const WeekDaysDoseFailures.unexpected());
      }
    }
  }

  @override
  Future<Either<WeekDaysDoseFailures, Unit>> update(
      WeekDaysDose weekDaysDose) async {
    try {
      final weekDaysDoses = _firestore.collection('weekDaysDoses');

      WeekDaysDoseDto weekDaysDoseDto =
          WeekDaysDoseDto.fromDomain(weekDaysDose);

      Map<String, dynamic> data = weekDaysDoseDto.toJson();

      //store the keyword that we will use for querying this document
      data['keyWords'] = generateKeywords(weekDaysDoseDto.label);

      //We keep the id that comes from genericMedicineDto and avoid autogeneration
      await weekDaysDoses.doc(weekDaysDoseDto.id).set(data);

      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const WeekDaysDoseFailures.insufficientPermissions());
      } else {
        return left(const WeekDaysDoseFailures.unexpected());
      }
    }
  }

  @override
  Stream<Either<WeekDaysDoseFailures, KtList<WeekDaysDose>>> watchAll() async* {
    final weekDaysDoses = _firestore.collection('weekDaysDoses');
    yield* weekDaysDoses
        .snapshots()
        .map(
          (snapshot) => right<WeekDaysDoseFailures, KtList<WeekDaysDose>>(
            snapshot.docs
                .map((doc) => WeekDaysDoseDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const WeekDaysDoseFailures.insufficientPermissions());
      } else {
        return left(const WeekDaysDoseFailures.unexpected());
      }
    });

    // ingredientVersionCollection();
  }

  @override
  Stream<Either<WeekDaysDoseFailures, KtList<WeekDaysDose>>> watchFiltered(
      String name) async* {
    final weekDaysDoses = _firestore.collection('weekDaysDoses');
    yield* weekDaysDoses
        .where('keyWords', arrayContains: removeSpecialCharacters(name))
        .snapshots()
        .map(
          (snapshot) => right<WeekDaysDoseFailures, KtList<WeekDaysDose>>(
            snapshot.docs
                .map((doc) => WeekDaysDoseDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const WeekDaysDoseFailures.insufficientPermissions());
      } else {
        return left(const WeekDaysDoseFailures.unexpected());
      }
    });
  }
}
