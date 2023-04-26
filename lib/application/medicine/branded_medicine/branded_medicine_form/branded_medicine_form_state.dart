part of 'branded_medicine_form_bloc.dart';

@freezed
class BrandedMedicineFormState with _$BrandedMedicineFormState {
  const factory BrandedMedicineFormState({
    required BrandedMedicine medicine,
    required bool showErrorMessages,
    required bool isUpdating,
    required bool isSaving,
    required Option<Either<BrandedMedicineFailures, BrandedMedicine>>
        saveFailureOrSuccessOption,
  }) = _BrandedMedicineFormState;
  factory BrandedMedicineFormState.initial() => BrandedMedicineFormState(
      medicine: BrandedMedicine.empty(),
      showErrorMessages: false,
      isSaving: false,
      isUpdating: false,
      saveFailureOrSuccessOption: none());
}
