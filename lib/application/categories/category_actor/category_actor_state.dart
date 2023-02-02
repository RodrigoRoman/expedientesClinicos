part of 'category_actor_bloc.dart';

@freezed
class CategoryActorState with _$CategoryActorState {
  const factory CategoryActorState.initial() = _Initial;
  const factory CategoryActorState.actionInProgress() = _ActionInProgress;
  const factory CategoryActorState.deleteFailure(
      CategoryFailures categoryFailure) = _DeleteFailure;
  const factory CategoryActorState.deleteSuccess() = _DeleteSuccess;
}
