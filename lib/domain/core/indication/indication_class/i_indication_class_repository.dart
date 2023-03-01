import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication_failures.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/time_interval.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/time_interval_failure.dart';
import 'package:kt_dart/collection.dart';

abstract class IIndicationRepository {
  Stream<Either<IndicationFailure, KtList<IndicationFailure>>> watchAll();
  Stream<Either<IndicationFailure, KtList<IndicationFailure>>> watchFiltered(
      String name);
  Future<Either<IndicationFailure, Unit>> create(
      IndicationFailure indicationFailure);
  Future<Either<IndicationFailure, Unit>> update(
      IndicationFailure indicationFailure);
  Future<Either<IndicationFailure, Unit>> delete(
      IndicationFailure indicationFailure);
}
