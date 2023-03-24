part of 'patient_visit_actor_bloc.dart';

@freezed
class PatientVisitActorEvent with _$PatientVisitActorEvent {
  const factory PatientVisitActorEvent.deleted(PatientVisit patientVisit) =
      _Deleted;
}
