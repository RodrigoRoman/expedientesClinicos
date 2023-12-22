import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/patient_visit/patient_visit.dart';
import 'package:expedientes_clinicos/domain/patient_visit/patient_visit_failures.dart';
import 'package:kt_dart/collection.dart';

abstract class IPatientVisitRepository {
  Stream<Either<PatientVisitFailures, KtList<PatientVisit>>> watchAll();
  Stream<Either<PatientVisitFailures, KtList<PatientVisit>>> watchFiltered(
      String name);
  Future<Either<PatientVisitFailures, Unit>> create(PatientVisit patientVisit);
  Future<Either<PatientVisitFailures, Unit>> createFake();
  Future<Either<PatientVisitFailures, Unit>> update(PatientVisit patientVisit);
  Future<Either<PatientVisitFailures, Unit>> delete(PatientVisit patientVisit);
}
