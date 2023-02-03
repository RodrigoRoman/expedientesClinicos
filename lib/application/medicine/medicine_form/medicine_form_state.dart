part of 'medicine_form_bloc.dart';

@freezed
class MedicineFormState with _$MedicineFormState {
  const factory MedicineFormState({
    required Medicine medicine,
    required bool showErrorMessages,
    required bool isUpdating,
    required bool isSaving,
    required Option<Either<MedicineFailures, Unit>> saveFailureOrSuccessOption,
  }) = _MedicineFormState;
  factory MedicineFormState.initial() => MedicineFormState(
      medicine: Medicine.empty(),
      showErrorMessages: false,
      isSaving: false,
      isUpdating: false,
      saveFailureOrSuccessOption: none());
}
