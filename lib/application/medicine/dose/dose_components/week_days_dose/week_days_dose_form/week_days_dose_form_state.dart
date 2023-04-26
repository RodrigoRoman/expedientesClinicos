part of 'week_days_dose_form_bloc.dart';

@freezed
class WeekDaysDoseFormState with _$WeekDaysDoseFormState {
  const factory WeekDaysDoseFormState({
    required WeekDaysDose weekDays,
    required bool showErrorMessages,
    required bool isUpdating,
    required bool isSaving,
    required Option<Either<WeekDaysDoseFailures, Unit>>
        saveFailureOrSuccessOption,
  }) = _WeekDaysDoseFormState;
  factory WeekDaysDoseFormState.initial() => WeekDaysDoseFormState(
      weekDays: WeekDaysDose.empty(),
      showErrorMessages: false,
      isSaving: false,
      isUpdating: false,
      saveFailureOrSuccessOption: none());
}
