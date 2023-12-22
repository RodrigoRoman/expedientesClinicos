part of 'label_double_amount_actor_bloc.dart';

@freezed
class LabelDoubleAmountActorState with _$LabelDoubleAmountActorState {
  const factory LabelDoubleAmountActorState.initial() = _Initial;
  const factory LabelDoubleAmountActorState.actionInProgress() =
      _ActionInProgress;
  const factory LabelDoubleAmountActorState.deleteFailure(
      LabelDoubleAmountFailure labelDoubleAmountFailure) = _DeleteFailure;
  const factory LabelDoubleAmountActorState.deleteSuccess() = _DeleteSuccess;
  const factory LabelDoubleAmountActorState.fakeFailure(
      LabelDoubleAmountFailure labelDoubleAmountFailure) = _FakeFailure;
  const factory LabelDoubleAmountActorState.fakeSuccess() = _FakeSuccess;
}
