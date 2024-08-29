part of 'dynamic_form_section_components_bloc.dart';

@freezed
class DynamicFormSectionComponentsEvent
    with _$DynamicFormSectionComponentsEvent {
  const factory DynamicFormSectionComponentsEvent.initialized(
    List3<FormRow> listRows,
    List3<LayoutPercent> layoutYPercent,
  ) = _Initialized;
  const factory DynamicFormSectionComponentsEvent.addFormRow(
    FormElement formElement,
    int rowIndex,
  ) = _AddFormRow;
  const factory DynamicFormSectionComponentsEvent.removeFormRow(
      int indexRemoved) = _RemoveFormRow;
  const factory DynamicFormSectionComponentsEvent.updateLayoutYpercent(
      List<LayoutPercent> newPercents) = _UpdateYLayout;
  const factory DynamicFormSectionComponentsEvent.addFormElement(
      int rowIndex, int columnIndex, FormElement formElement) = _AddFormElement;
  const factory DynamicFormSectionComponentsEvent.removeFormElement(
      int rowIndex, int columnIndex) = _RemoveFormElement;
  const factory DynamicFormSectionComponentsEvent.updateLayoutXpercent(
          int rowIndex, int columnIndex, List<LayoutPercent> newPercents) =
      _UpdateXLayout;
}
