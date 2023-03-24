import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_visit_failures.freezed.dart';

@freezed
abstract class PatientVisitFailures with _$PatientVisitFailures {
  const factory PatientVisitFailures.unexpected() = _Unexpected;
  const factory PatientVisitFailures.insufficientPermissions() =
      _InsufficientPermission;
  const factory PatientVisitFailures.unableToUpdate() = _UnableToUpdate;
  const factory PatientVisitFailures.unableToCreate() = _UnableToCreate;
  const factory PatientVisitFailures.unableToDelete() = _UnableToDelete;
}
