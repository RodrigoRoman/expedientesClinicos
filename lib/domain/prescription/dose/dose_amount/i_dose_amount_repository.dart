import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/dose_amount.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/dose_amount_failures.dart';
import 'package:kt_dart/kt.dart';

abstract class IDoseAmountRepository {
  Stream<Either<DoseAmountFailures, KtList<DoseAmount>>> watchAll();
  Stream<Either<DoseAmountFailures, KtList<DoseAmount>>> watchFiltered(
      String name);
  Future<Either<DoseAmountFailures, Unit>> create(DoseAmount doseAmount);
  Future<Either<DoseAmountFailures, Unit>> update(DoseAmount doseAmount);
  Future<Either<DoseAmountFailures, Unit>> delete(DoseAmount doseAmount);
}
