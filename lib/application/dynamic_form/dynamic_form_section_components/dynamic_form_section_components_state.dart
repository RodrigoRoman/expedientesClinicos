part of 'dynamic_form_section_components_bloc.dart';

@freezed
abstract class DynamicFormSectionComponentsState
    with _$DynamicFormSectionComponentsState {
  const factory DynamicFormSectionComponentsState(
      {required List3<FormRow> listRows,
      required List3<LayoutPercent> layoutYPercent,
      required bool showErrorMessages,
      required bool isUpdating}) = _DynamicFormSectionComponentsState;
  factory DynamicFormSectionComponentsState.initial() =>
      DynamicFormSectionComponentsState(
        listRows: List3(KtList.empty()),
        layoutYPercent: List3(KtList.empty()),
        showErrorMessages: false,
        isUpdating: false,
      );
}
