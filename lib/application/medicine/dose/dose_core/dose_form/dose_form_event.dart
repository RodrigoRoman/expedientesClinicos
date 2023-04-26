part of 'dose_form_bloc.dart';

@freezed
class DoseFormEvent with _$DoseFormEvent {
  const factory DoseFormEvent.intial(Option<Dose> intialMedicineOption) =
      _Initialized;
  const factory DoseFormEvent.dayHoursDoseChanged(DayHoursDose dayHoursDose) =
      _DayHoursDoseChanged;
  const factory DoseFormEvent.durationChanged(TimeInterval duration) =
      _DurationChanged;
  const factory DoseFormEvent.weekDaysChanged(WeekDaysDose weekDaysDose) =
      _WeekDaysDoseChanged;
  const factory DoseFormEvent.labelChanged(String label) = _LabelChanged;
  const factory DoseFormEvent.saved() = _Saved;
}
