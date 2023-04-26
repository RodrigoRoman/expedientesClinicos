part of 'day_hours_dose_form_bloc.dart';

@freezed
class DayHoursDoseFormEvent with _$DayHoursDoseFormEvent {
  const factory DayHoursDoseFormEvent.intial(
      Option<DayHoursDose> initialDayHourDoseOption) = _Initialized;
  const factory DayHoursDoseFormEvent.labelChanged(String label) =
      _LabelChanged;
  const factory DayHoursDoseFormEvent.listHoursChanged(
      List<HourTime> listHours) = _ListHoursChanged;
  const factory DayHoursDoseFormEvent.saved() = _Saved;
}
