import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/medicine/branded_medicine/branded_medicine.dart';
import 'package:expedientes_clinicos/domain/medicine/branded_medicine/branded_medicine_failures.dart';
import 'package:kt_dart/collection.dart';

abstract class IBrandedMedicineRepository {
  Stream<Either<BrandedMedicineFailures, KtList<BrandedMedicine>>> watchAll();
  Stream<Either<BrandedMedicineFailures, KtList<BrandedMedicine>>>
      watchFiltered(String name);
  Future<Either<BrandedMedicineFailures, BrandedMedicine>> create(
      BrandedMedicine brandedMedicine);
  Future<Either<BrandedMedicineFailures, Unit>> createFake();
  Future<Either<BrandedMedicineFailures, BrandedMedicine>> update(
      BrandedMedicine brandedMedicine);
  Future<Either<BrandedMedicineFailures, Unit>> delete(
      BrandedMedicine brandedMedicine);
}
