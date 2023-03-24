part of 'generic_medicine_actor_bloc.dart';

@freezed
class GenericMedicineActorState with _$GenericMedicineActorState {
  const factory GenericMedicineActorState.initial() = _Initial;
  const factory GenericMedicineActorState.actionInProgress() =
      _ActionInProgress;
  const factory GenericMedicineActorState.deleteFailure(
      GenericMedicineFailures medicineFailure) = _DeleteFailure;
  const factory GenericMedicineActorState.deleteSuccess() = _DeleteSuccess;
  const factory GenericMedicineActorState.fakeFailure(
      GenericMedicineFailures medicineFailure) = _FakeFailure;
  const factory GenericMedicineActorState.fakeSuccess() = _FakeSuccess;
}
