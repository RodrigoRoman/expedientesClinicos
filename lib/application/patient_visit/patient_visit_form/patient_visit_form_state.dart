part of 'patient_visit_form_bloc.dart';

@freezed
abstract class PatientVisitFormState with _$PatientVisitFormState {
  const factory PatientVisitFormState(
      {required PatientVisit patientVisit,
      required bool showErrorMessages,
      required bool isUpdating,
      required bool isSaving,
      required Option<Either<PatientVisitFailures, Unit>>
          saveFailureOrSuccessOption}) = _PatientVisitFormState;

  factory PatientVisitFormState.initial() => PatientVisitFormState(
      patientVisit: PatientVisit.empty(),
      showErrorMessages: false,
      isUpdating: false,
      isSaving: false,
      saveFailureOrSuccessOption: none());
}
