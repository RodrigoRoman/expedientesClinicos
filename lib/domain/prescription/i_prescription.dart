import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/prescription/prescription.dart';
import 'package:expedientes_clinicos/domain/prescription/prescription_failures.dart';
import 'package:kt_dart/kt.dart';

abstract class IPrescriptionRepository {
  Stream<Either<PrescriptionFailures, KtList<Prescription>>> watchAll();
  Stream<Either<PrescriptionFailures, KtList<Prescription>>> watchFiltered(
      String name);
  Future<Either<PrescriptionFailures, Unit>> create(Prescription prescription);
  Future<Either<PrescriptionFailures, Unit>> update(Prescription prescription);
  Future<Either<PrescriptionFailures, Unit>> delete(Prescription prescription);
}
