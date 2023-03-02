part of 'prescription_actor_bloc.dart';

@freezed
class PrescriptionActorEvent with _$PrescriptionActorEvent {
  const factory PrescriptionActorEvent.deleted(Prescription prescription) =
      _Deleted;
}
