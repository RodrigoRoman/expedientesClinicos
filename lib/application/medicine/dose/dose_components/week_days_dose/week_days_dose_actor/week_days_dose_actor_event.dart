part of 'week_days_dose_actor_bloc.dart';

@freezed
class WeekDaysDoseActorEvent with _$WeekDaysDoseActorEvent {
  const factory WeekDaysDoseActorEvent.deleted(WeekDaysDose weekDaysDose) =
      _DeleteWeekDays;
  const factory WeekDaysDoseActorEvent.faker() = _FakeWeekDaysDose;
}
