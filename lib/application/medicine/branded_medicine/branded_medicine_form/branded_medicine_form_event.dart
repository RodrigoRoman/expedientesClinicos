part of 'branded_medicine_form_bloc.dart';

@freezed
class BrandedMedicineFormEvent with _$BrandedMedicineFormEvent {
  const factory BrandedMedicineFormEvent.started() = _Started;
  const factory BrandedMedicineFormEvent.intial(
      Option<BrandedMedicine> intialMedicineOption) = _Initialized;
  const factory BrandedMedicineFormEvent.comercialNameChanged(
      String comercialName) = _ComercialNameChanged;
  const factory BrandedMedicineFormEvent.existenceChanged(int existence) =
      _ExistenceChanged;
  const factory BrandedMedicineFormEvent.optimumChanged(int optimum) =
      _OptimumChanged;
  const factory BrandedMedicineFormEvent.imageUrlChanged(String imageURL) =
      _ImageUrlChanged;
  const factory BrandedMedicineFormEvent.genericMedicineChanged(
      GenericMedicine genericMedicine) = _GenericMedicineChanged;
  const factory BrandedMedicineFormEvent.saved() = _Saved;
}
