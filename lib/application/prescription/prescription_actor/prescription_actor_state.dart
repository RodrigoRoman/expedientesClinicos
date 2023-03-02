part of 'prescription_actor_bloc.dart';

@freezed
class PrescriptionActorState with _$PrescriptionActorState {
  const factory PrescriptionActorState.initial() = _Initial;
  const factory PrescriptionActorState.actionInProgress() = _ActionInProgress;
  const factory PrescriptionActorState.deleteFailure(
      PrescriptionFailures prescriptionFailure) = _DeleteFalure;
  const factory PrescriptionActorState.deleteSuccess() = _DeleteSuccess;
}
