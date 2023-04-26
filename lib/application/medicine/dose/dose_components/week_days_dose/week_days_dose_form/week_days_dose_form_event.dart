part of 'week_days_dose_form_bloc.dart';

@freezed
class WeekDaysDoseFormEvent with _$WeekDaysDoseFormEvent {
  const factory WeekDaysDoseFormEvent.intial(
      Option<WeekDaysDose> initialWeekDaysDoseOption) = _Initialized;
  const factory WeekDaysDoseFormEvent.labelChanged(String label) =
      _LabelChanged;
  const factory WeekDaysDoseFormEvent.weekDaysChanged(List<int> weekDays) =
      _WeekDaysChanged;
  const factory WeekDaysDoseFormEvent.saved() = _Saved;
}
