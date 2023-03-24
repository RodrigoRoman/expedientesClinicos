import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/medicine/branded_medicine/branded_medicine.dart';
import 'package:expedientes_clinicos/domain/medicine/branded_medicine/branded_medicine_failures.dart';
import 'package:expedientes_clinicos/domain/medicine/dose/dose.dart';
import 'package:expedientes_clinicos/domain/medicine/dose/dose_failures.dart';
import 'package:kt_dart/collection.dart';

abstract class IDoseRepository {
  Stream<Either<DoseFailures, KtList<Dose>>> watchAll();
  Stream<Either<DoseFailures, KtList<Dose>>> watchFiltered(String name);
  Future<Either<DoseFailures, Unit>> create(Dose dose);
  Future<Either<DoseFailures, Unit>> createFake();
  Future<Either<DoseFailures, Unit>> update(Dose dose);
  Future<Either<DoseFailures, Unit>> delete(Dose dose);
}
