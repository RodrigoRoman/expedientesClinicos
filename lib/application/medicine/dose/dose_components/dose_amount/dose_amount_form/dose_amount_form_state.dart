part of 'dose_amount_form_bloc.dart';

@freezed
class DoseAmountFormState with _$DoseAmountFormState {
  const factory DoseAmountFormState({
    required DoseAmount doseAmount,
    required bool showErrorMessages,
    required bool isUpdating,
    required bool isSaving,
    required Option<Either<DoseAmountFailures, Unit>>
        saveFailureOrSuccessOption,
  }) = _DoseAmountFormState;
  factory DoseAmountFormState.initial() => DoseAmountFormState(
      doseAmount: DoseAmount.empty(),
      showErrorMessages: false,
      isSaving: false,
      isUpdating: false,
      saveFailureOrSuccessOption: none());
}
