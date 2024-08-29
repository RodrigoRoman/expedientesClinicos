part of 'dynamic_form_form_bloc.dart';

@freezed
abstract class DynamicFormFormState with _$DynamicFormFormState {
  const factory DynamicFormFormState({
    required FormSection formSection,
    required bool showErrorMessages,
    required bool isUpdating,
    required bool isSaving,
    required Option<Either<DynamicFormFailures, FormSection>>
        saveFailureOrSuccessOption,
  }) = _DynamicFormFormState;
  factory DynamicFormFormState.initial() => DynamicFormFormState(
      formSection: FormSection.empty(),
      showErrorMessages: false,
      isSaving: false,
      isUpdating: false,
      saveFailureOrSuccessOption: none());
}
