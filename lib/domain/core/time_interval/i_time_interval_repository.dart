import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/time_interval.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/time_interval_failure.dart';
import 'package:kt_dart/collection.dart';

abstract class ITimeIntervalRepository {
  Stream<Either<TimeIntervalFailure, KtList<TimeInterval>>> watchAll();
  Stream<Either<TimeIntervalFailure, KtList<TimeInterval>>> watchFiltered(
      String name);
  Future<Either<TimeIntervalFailure, Unit>> create(TimeInterval timeInterval);
  Future<Either<TimeIntervalFailure, Unit>> update(TimeInterval timeInterval);
  Future<Either<TimeIntervalFailure, Unit>> delete(TimeInterval timeINterval);
}
