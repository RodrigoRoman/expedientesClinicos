import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/i_time_interval_repository.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/time_interval.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/time_interval_failure.dart';
import 'package:expedientes_clinicos/infraestructure/helper_functions/string_manipulation.dart';
import 'package:expedientes_clinicos/infraestructure/time_interval/time_interval_dtos.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart' hide TimeInterval;

@LazySingleton(as: ITimeIntervalRepository)
class TimeIntervalRepository implements ITimeIntervalRepository {
  final FirebaseFirestore _firestore;
  final String _collectionName;
  TimeIntervalRepository(this._firestore, this._collectionName);
  @override
  Future<Either<TimeIntervalFailure, Unit>> create(
      TimeInterval timeInterval) async {
    final timeIntervals = _firestore.collection(_collectionName);
    try {
      final timeIntervalDto = TimeIntervalDto.fromDomain(timeInterval);
      Map<String, dynamic> data = timeIntervalDto.toJson();
      data['keyWords'] = await generateKeywords(timeIntervalDto.label);
      //We keep the id that comes from ingredientDto and avoid autogeneration
      await timeIntervals.doc(timeIntervalDto.id).set(data);
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const TimeIntervalFailure.insufficientPermissions());
      } else {
        return left(const TimeIntervalFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<TimeIntervalFailure, Unit>> delete(
      TimeInterval timeInterval) async {
    final timeIntervals = _firestore.collection(_collectionName);
    try {
      final timeIntervalDto = TimeIntervalDto.fromDomain(timeInterval);
      await timeIntervals.doc(timeIntervalDto.id).delete();
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const TimeIntervalFailure.insufficientPermissions());
      } else {
        return left(const TimeIntervalFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<TimeIntervalFailure, Unit>> update(
      TimeInterval timeInterval) async {
    final timeIntervals = _firestore.collection(_collectionName);
    try {
      final timeIntervalDto = TimeIntervalDto.fromDomain(timeInterval);
      Map<String, dynamic> data = timeIntervalDto.toJson();
      data['keyWords'] = await generateKeywords(timeIntervalDto.label);
      await timeIntervals.doc(timeIntervalDto.id).update(data);
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const TimeIntervalFailure.insufficientPermissions());
      } else {
        return left(const TimeIntervalFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<TimeIntervalFailure, KtList<TimeInterval>>> watchAll() async* {
    final timeIntervals = _firestore.collection(_collectionName);
    yield* timeIntervals
        .snapshots()
        .map(
          (snapshot) => right<TimeIntervalFailure, KtList<TimeInterval>>(
            snapshot.docs
                .map((doc) => TimeIntervalDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const TimeIntervalFailure.insufficientPermissions());
      } else {
        return left(const TimeIntervalFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<TimeIntervalFailure, KtList<TimeInterval>>> watchFiltered(
      String name) async* {
    final timeIntervals = _firestore.collection(_collectionName);
    yield* timeIntervals
        .where('keyWords', arrayContains: removeSpecialCharacters(name))
        .snapshots()
        .map(
          (snapshot) => right<TimeIntervalFailure, KtList<TimeInterval>>(
            snapshot.docs.map((doc) {
              return TimeIntervalDto.fromFirestore(doc).toDomain();
            }).toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const TimeIntervalFailure.insufficientPermissions());
      } else {
        return left(const TimeIntervalFailure.unexpected());
      }
    });
  }
}
