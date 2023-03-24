import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/generic_medicine.dart';
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/generic_medicine_failures.dart';
import 'package:kt_dart/collection.dart';

abstract class IGenericMedicineRepository {
  Stream<Either<GenericMedicineFailures, KtList<GenericMedicine>>> watchAll();
  Stream<Either<GenericMedicineFailures, KtList<GenericMedicine>>>
      watchFiltered(String name);
  Future<Either<GenericMedicineFailures, Unit>> create(
      GenericMedicine genericMedicine);
  Future<Either<GenericMedicineFailures, Unit>> createFake();
  Future<Either<GenericMedicineFailures, Unit>> update(
      GenericMedicine genericMedicine);
  Future<Either<GenericMedicineFailures, Unit>> delete(
      GenericMedicine genericMedicine);
}
