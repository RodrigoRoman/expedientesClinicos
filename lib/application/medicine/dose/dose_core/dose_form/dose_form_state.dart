part of 'dose_form_bloc.dart';

@freezed
class DoseFormState with _$DoseFormState {
  const factory DoseFormState({
    required Dose dose,
    required bool showErrorMessages,
    required bool isUpdating,
    required bool isSaving,
    required Option<Either<DoseFailures, Unit>> saveFailureOrSuccessOption,
  }) = _DoseFormState;
  factory DoseFormState.initial() => DoseFormState(
      dose: Dose.empty(),
      showErrorMessages: false,
      isSaving: false,
      isUpdating: false,
      saveFailureOrSuccessOption: none());
}
