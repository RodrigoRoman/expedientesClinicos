part of 'dynamic_form_actor_bloc.dart';

@freezed
class DynamicFormActorState with _$DynamicFormActorState {
  const factory DynamicFormActorState.initial() = _Initial;
  const factory DynamicFormActorState.actionInProgress() = _ActionInProgress;
  const factory DynamicFormActorState.deleteFailure(
      DynamicFormFailures dynamicFormFailure) = _DeleteFailure;
  const factory DynamicFormActorState.deleteSucess(
      DynamicFormFailures dynamicFormFailure) = _DeleteSuccess;
}
