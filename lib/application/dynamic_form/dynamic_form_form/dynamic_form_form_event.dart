part of 'dynamic_form_form_bloc.dart';

@freezed
class DynamicFormFormEvent with _$DynamicFormFormEvent {
  const factory DynamicFormFormEvent.intial(
      Option<FormSection> intialDynamicFormOption) = _Initialized;
  const factory DynamicFormFormEvent.sectionNameChanged(String sectionName) =
      _SectionNameChanged;
  const factory DynamicFormFormEvent.sectionTypeChanged(
      SectionTypes sectionType) = _SectionTypeChanged;
  const factory DynamicFormFormEvent.formRowsChanged(List<FormRow> formRows) =
      _FormRowsChanged;
  const factory DynamicFormFormEvent.changeFormElementValue(
          FormElement formElement, dynamic newValue, int rowIndex) =
      _ValueFormElementChanged;

  const factory DynamicFormFormEvent.layoutYPercentChanged(
      List<LayoutPercent> layoutPercent) = _LayoutYPercentChanged;
  const factory DynamicFormFormEvent.categoryChanged(Category category) =
      _CategoryChanged;
  const factory DynamicFormFormEvent.saved() = _Saved;
}
