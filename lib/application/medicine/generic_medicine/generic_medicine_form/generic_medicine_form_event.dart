part of 'generic_medicine_form_bloc.dart';

@freezed
class GenericMedicineFormEvent with _$GenericMedicineFormEvent {
  const factory GenericMedicineFormEvent.started() = _Started;
  const factory GenericMedicineFormEvent.intial(
      Option<GenericMedicine> intialMedicineOption) = _Initialized;
  const factory GenericMedicineFormEvent.genericNameChanged(
      String genericName) = _GenericNameChanged;
  const factory GenericMedicineFormEvent.measureUnitChanged(
      NameAbbreviation measureUnit) = _MeasureUnitChanged;
  const factory GenericMedicineFormEvent.amountMeasureChanged(
      double amountMeasure) = _AmountMeasureChanged;
  const factory GenericMedicineFormEvent.administrationRouteChanged(
      NameAbbreviation administrationRoute) = _AdministrationRouteChanged;
  const factory GenericMedicineFormEvent.pharmaceuticalFormChanged(
      NameAbbreviation pharmaceuticalForm) = _PharmaceuticalFormChanged;
  const factory GenericMedicineFormEvent.amountPerPackageChanged(
      int amountPerPackage) = _AmountPerPackageChanged;
  const factory GenericMedicineFormEvent.categoryChanged(Category category) =
      _CategoryChanged;
  const factory GenericMedicineFormEvent.controlledChanged() =
      _ControlledChanged;
  const factory GenericMedicineFormEvent.saved() = _Saved;
}
