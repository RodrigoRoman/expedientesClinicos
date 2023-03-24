part of 'branded_medicine_actor_bloc.dart';

@freezed
class BrandedMedicineActorState with _$BrandedMedicineActorState {
  const factory BrandedMedicineActorState.initial() = _Initial;
  const factory BrandedMedicineActorState.actionInProgress() =
      _ActionInProgress;
  const factory BrandedMedicineActorState.deleteFailure(
      BrandedMedicineFailures medicineFailure) = _DeleteFailure;
  const factory BrandedMedicineActorState.deleteSuccess() = _DeleteSuccess;
  const factory BrandedMedicineActorState.fakeFailure(
      BrandedMedicineFailures medicineFailure) = _FakeFailure;
  const factory BrandedMedicineActorState.fakeSuccess() = _FakeSuccess;
}
