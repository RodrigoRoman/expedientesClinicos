part of 'prescription_form_bloc.dart';

@freezed
abstract class PrescriptionFormState with _$PrescriptionFormState {
  const factory PrescriptionFormState(
      {required Prescription prescription,
      required bool showErrorMessages,
      required bool isUpdating,
      required bool isSaving,
      required Option<Either<PrescriptionFailures, Unit>>
          saveFailureOrSuccessOption}) = _PrescriptionFormState;

  factory PrescriptionFormState.initial() => PrescriptionFormState(
      prescription: Prescription.empty(),
      showErrorMessages: false,
      isUpdating: false,
      isSaving: false,
      saveFailureOrSuccessOption: none());
}
