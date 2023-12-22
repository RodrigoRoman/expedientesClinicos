part of 'label_double_amount_form_bloc.dart';

@freezed
class LabelDoubleAmountFormState with _$LabelDoubleAmountFormState {
  const factory LabelDoubleAmountFormState({
    required LabelDoubleAmount labelDoubleAmount,
    required bool showErrorMessages,
    required bool isUpdating,
    required bool isSaving,
    required Option<Either<LabelDoubleAmountFailure, Unit>>
        saveFailureOrSuccessOption,
  }) = _LabelDoubleAmountFormState;
  factory LabelDoubleAmountFormState.initial() => LabelDoubleAmountFormState(
      labelDoubleAmount: LabelDoubleAmount.empty(),
      showErrorMessages: false,
      isSaving: false,
      isUpdating: false,
      saveFailureOrSuccessOption: none());
}
