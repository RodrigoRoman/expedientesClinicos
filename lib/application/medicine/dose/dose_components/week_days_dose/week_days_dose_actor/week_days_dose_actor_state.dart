part of 'week_days_dose_actor_bloc.dart';

@freezed
class WeekDaysDoseActorState with _$WeekDaysDoseActorState {
  const factory WeekDaysDoseActorState.initial() = _Initial;
  const factory WeekDaysDoseActorState.actionInProgress() = _ActionInProgress;
  const factory WeekDaysDoseActorState.deleteFailure(
      WeekDaysDoseFailures weekDaysDoseFailure) = _DeleteFailure;
  const factory WeekDaysDoseActorState.deleteSuccess() = _DeleteSuccess;
  const factory WeekDaysDoseActorState.fakeFailure(
      WeekDaysDoseFailures weekDaysDoseFailure) = _FakeFailure;
  const factory WeekDaysDoseActorState.fakeSuccess() = _FakeSuccess;
}
