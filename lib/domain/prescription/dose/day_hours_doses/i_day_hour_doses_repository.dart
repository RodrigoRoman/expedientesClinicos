import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/day_hour_doses_failures.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/day_hours_doses.dart';
import 'package:kt_dart/kt.dart';

abstract class IDayHoursDoseRepository {
  Stream<Either<DayHoursDoseFailures, KtList<DayHoursDose>>> watchAll();
  Stream<Either<DayHoursDoseFailures, KtList<DayHoursDose>>> watchFiltered(
      String name);
  Future<Either<DayHoursDoseFailures, Unit>> create(DayHoursDose dayHourDose);
  Future<Either<DayHoursDoseFailures, Unit>> update(DayHoursDose dayHourDose);
  Future<Either<DayHoursDoseFailures, Unit>> delete(DayHoursDose dayHourDose);
}
