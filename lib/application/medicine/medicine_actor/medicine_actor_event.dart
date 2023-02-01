part of 'medicine_actor_bloc.dart';

@freezed
class MedicineActorEvent with _$MedicineActorEvent {
  const factory MedicineActorEvent.started() = _Started;
}