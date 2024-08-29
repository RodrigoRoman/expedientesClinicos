part of 'dynamic_form_actor_bloc.dart';

@freezed
class DynamicFormActorEvent with _$DynamicFormActorEvent {
  const factory DynamicFormActorEvent.deleted(FormSection dynamicForm) =
      _DeleteDynamicForm;
}
