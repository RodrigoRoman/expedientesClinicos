part of 'medicine_form_bloc.dart';

@freezed
class MedicineFormEvent with _$MedicineFormEvent {
  const factory MedicineFormEvent.started() = _Started;
  const factory MedicineFormEvent.intial(
      Option<Medicine> intialMedicineOption) = _Initialized;
  const factory MedicineFormEvent.comercialNameChanged(String comercialName) =
      _ComercialNameChanged;
  const factory MedicineFormEvent.genericNameChanged(String genericName) =
      _GenericNameChanged;
  const factory MedicineFormEvent.measureUnitChanged(
      NameAbbreviation measureUnit) = _MeasureUnitChanged;
  const factory MedicineFormEvent.amountMeasureChanged(double amountMeasure) =
      _AmountMeasureChanged;
  const factory MedicineFormEvent.administrationRouteChanged(
      NameAbbreviation administrationRoute) = _AdministrationRouteChanged;
  const factory MedicineFormEvent.pharmaceuticalFormChanged(
      NameAbbreviation pharmaceuticalForm) = _PharmaceuticalFormChanged;
  const factory MedicineFormEvent.amountPerPackageChanged(
      int amountPerPackage) = _AmountPerPackageChanged;
  const factory MedicineFormEvent.categoryChanged(Category category) =
      _CategoryChanged;
  const factory MedicineFormEvent.imageUrlChanged(String imageURL) =
      _ImageUrlChanged;
  const factory MedicineFormEvent.controlledChanged(bool controlled) =
      _ControlledChanged;
  const factory MedicineFormEvent.saved() = _Saved;
}
