part of 'patient_visit_actor_bloc.dart';

@freezed
class PatientVisitActorState with _$PatientVisitActorState {
  const factory PatientVisitActorState.initial() = _Initial;
  const factory PatientVisitActorState.actionInProgress() = _ActionInProgress;
  const factory PatientVisitActorState.deleteFailure(
      PatientVisitFailures patientVisitFailure) = _DeleteFalure;
  const factory PatientVisitActorState.deleteSuccess() = _DeleteSuccess;
}
