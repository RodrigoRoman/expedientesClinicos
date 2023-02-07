part of 'category_actor_bloc.dart';

@freezed
class CategoryActorState with _$CategoryActorState {
  const factory CategoryActorState.initial() = _Initial;
  const factory CategoryActorState.actionInProgress() = _ActionInProgress;
  const factory CategoryActorState.deleteFailure(
      CategoryFailures categoryFailure) = _DeleteFailure;
  const factory CategoryActorState.fakeFailure(
      CategoryFailures categoryFailure) = _FakeFailure;
  const factory CategoryActorState.deleteSuccess() = _DeleteSuccess;
  const factory CategoryActorState.fakeSuccess() = _FakeSuccess;
}
