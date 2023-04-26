part of 'day_hours_dose_actor_bloc.dart';

@freezed
class DayHoursDoseActorEvent with _$DayHoursDoseActorEvent {
  const factory DayHoursDoseActorEvent.deleted(DayHoursDose dayHoursDose) =
      _DeleteDayHoursDose;
  const factory DayHoursDoseActorEvent.faker() = _FakeDayHoursDose;
}
