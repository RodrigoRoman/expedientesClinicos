part of 'time_interval_actor_bloc.dart';

@freezed
class TimeIntervalActorState with _$TimeIntervalActorState {
  const factory TimeIntervalActorState.initial() = _Initial;
  const factory TimeIntervalActorState.actionInProgress() = _ActionInProgress;
  const factory TimeIntervalActorState.deleteFailure(
      TimeIntervalFailure timeIntervalFailure) = _DeleteFalure;
  const factory TimeIntervalActorState.deleteSuccess() = _DeleteSuccess;
}
