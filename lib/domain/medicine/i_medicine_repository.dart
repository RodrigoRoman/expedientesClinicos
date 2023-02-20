import 'package:expedientes_clinicos/domain/medicine/medicine.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/medicine/medicine_failures.dart';
import 'package:kt_dart/collection.dart';

abstract class IMedicineRepository {
  Stream<Either<MedicineFailures, KtList<Medicine>>> watchAll();
  Stream<Either<MedicineFailures, KtList<Medicine>>> watchFiltered(String name);
  Future<Either<MedicineFailures, Unit>> create(Medicine medicine);
  Future<Either<MedicineFailures, Unit>> createFake();
  Future<Either<MedicineFailures, Unit>> update(Medicine medicine);
  Future<Either<MedicineFailures, Unit>> delete(Medicine medicine);
}
