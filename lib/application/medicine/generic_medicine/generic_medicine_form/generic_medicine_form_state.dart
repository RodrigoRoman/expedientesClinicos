part of 'generic_medicine_form_bloc.dart';

@freezed
class GenericMedicineFormState with _$GenericMedicineFormState {
  const factory GenericMedicineFormState({
    required GenericMedicine medicine,
    required bool showErrorMessages,
    required bool isUpdating,
    required bool isSaving,
    required Option<Either<GenericMedicineFailures, Unit>>
        saveFailureOrSuccessOption,
  }) = _GenericMedicineFormState;
  factory GenericMedicineFormState.initial() => GenericMedicineFormState(
      medicine: GenericMedicine.empty(),
      showErrorMessages: false,
      isSaving: false,
      isUpdating: false,
      saveFailureOrSuccessOption: none());
}
