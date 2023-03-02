part of 'indication_form_bloc.dart';

@freezed
abstract class IndicationFormState with _$IndicationFormState {
  const factory IndicationFormState(
      {required Indication indication,
      required bool showErrorMessages,
      required bool isUpdating,
      required bool isSaving,
      required Option<Either<IndicationFailure, Unit>>
          saveFailureOrSuccessOption}) = _IndicationFormState;

  factory IndicationFormState.initial() => IndicationFormState(
      indication: Indication.empty(),
      showErrorMessages: false,
      isUpdating: false,
      isSaving: false,
      saveFailureOrSuccessOption: none());
}
