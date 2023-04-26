part of 'dose_amount_actor_bloc.dart';

@freezed
class DoseAmountActorState with _$DoseAmountActorState {
  const factory DoseAmountActorState.initial() = _Initial;
  const factory DoseAmountActorState.actionInProgress() = _ActionInProgress;
  const factory DoseAmountActorState.deleteFailure(
      DoseAmountFailures doseAmountFailure) = _DeleteFailure;
  const factory DoseAmountActorState.deleteSuccess() = _DeleteSuccess;
  const factory DoseAmountActorState.fakeFailure(
      DoseAmountFailures doseAmountFailure) = _FakeFailure;
  const factory DoseAmountActorState.fakeSuccess() = _FakeSuccess;
}
