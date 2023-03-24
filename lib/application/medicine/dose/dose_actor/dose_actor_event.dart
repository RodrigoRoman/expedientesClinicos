part of 'dose_actor_bloc.dart';

@freezed
class DoseActorEvent with _$DoseActorEvent {
  const factory DoseActorEvent.deleted(Dose dose) = _DeleteDose;
  const factory DoseActorEvent.faker() = _FakeDose;
}
