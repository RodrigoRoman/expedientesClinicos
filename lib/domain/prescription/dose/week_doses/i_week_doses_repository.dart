import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/dose_amount.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/week_days_dose.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/week_days_dose_failures.dart';
import 'package:kt_dart/kt.dart';

abstract class IWeekDaysDoseRepository {
  Stream<Either<WeekDaysDoseFailures, KtList<WeekDaysDose>>> watchAll();
  Stream<Either<WeekDaysDoseFailures, KtList<WeekDaysDose>>> watchFiltered(
      String name);
  Future<Either<WeekDaysDoseFailures, Unit>> create(WeekDaysDose weekDaysDose);
  Future<Either<WeekDaysDoseFailures, Unit>> update(WeekDaysDose weekDaysDose);
  Future<Either<WeekDaysDoseFailures, Unit>> delete(WeekDaysDose weekDaysDose);
}
