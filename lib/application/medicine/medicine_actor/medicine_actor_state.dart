part of 'medicine_actor_bloc.dart';

@freezed
class MedicineActorState with _$MedicineActorState {
  const factory MedicineActorState.initial() = _Initial;
  const factory MedicineActorState.actionInProgress() = _ActionInProgress;
  const factory MedicineActorState.deleteFailure(
      MedicineFailures medicineFailure) = _DeleteFailure;
  const factory MedicineActorState.deleteSuccess() = _DeleteSuccess;
  const factory MedicineActorState.fakeFailure(
      MedicineFailures categoryFailure) = _FakeFailure;
  const factory MedicineActorState.fakeSuccess() = _FakeSuccess;
}
