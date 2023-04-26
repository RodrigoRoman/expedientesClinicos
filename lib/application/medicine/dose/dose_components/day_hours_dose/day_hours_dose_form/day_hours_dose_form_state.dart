part of 'day_hours_dose_form_bloc.dart';

@freezed
class DayHoursDoseFormState with _$DayHoursDoseFormState {
  const factory DayHoursDoseFormState({
    required DayHoursDose dayHoursDose,
    required bool showErrorMessages,
    required bool isUpdating,
    required bool isSaving,
    required Option<Either<DayHoursDoseFailures, Unit>>
        saveFailureOrSuccessOption,
  }) = _DayHoursDoseFormState;
  factory DayHoursDoseFormState.initial() => DayHoursDoseFormState(
      dayHoursDose: DayHoursDose.empty(),
      showErrorMessages: false,
      isSaving: false,
      isUpdating: false,
      saveFailureOrSuccessOption: none());
}
