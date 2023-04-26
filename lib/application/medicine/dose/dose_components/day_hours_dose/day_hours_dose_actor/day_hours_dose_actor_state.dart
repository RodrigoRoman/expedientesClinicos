part of 'day_hours_dose_actor_bloc.dart';

@freezed
class DayHoursDoseActorState with _$DayHoursDoseActorState {
  const factory DayHoursDoseActorState.initial() = _Initial;
  const factory DayHoursDoseActorState.actionInProgress() = _ActionInProgress;
  const factory DayHoursDoseActorState.deleteFailure(
      DayHoursDoseFailures dayHoursDoseFailure) = _DeleteFailure;
  const factory DayHoursDoseActorState.deleteSuccess() = _DeleteSuccess;
  const factory DayHoursDoseActorState.fakeFailure(
      DayHoursDoseFailures dayHoursDoseFailure) = _FakeFailure;
  const factory DayHoursDoseActorState.fakeSuccess() = _FakeSuccess;
}
