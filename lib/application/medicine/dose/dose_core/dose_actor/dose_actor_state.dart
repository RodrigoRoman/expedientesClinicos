part of 'dose_actor_bloc.dart';

@freezed
class DoseActorState with _$DoseActorState {
  const factory DoseActorState.initial() = _Initial;
  const factory DoseActorState.actionInProgress() = _ActionInProgress;
  const factory DoseActorState.deleteFailure(DoseFailures doseFailure) =
      _DeleteFailure;
  const factory DoseActorState.deleteSuccess() = _DeleteSuccess;
  const factory DoseActorState.fakeFailure(DoseFailures doseFailure) =
      _FakeFailure;
  const factory DoseActorState.fakeSuccess() = _FakeSuccess;
}
