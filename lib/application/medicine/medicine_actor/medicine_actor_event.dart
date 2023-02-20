part of 'medicine_actor_bloc.dart';

@freezed
class MedicineActorEvent with _$MedicineActorEvent {
  const factory MedicineActorEvent.deleted(Medicine medicine) = _DeleteMedicine;
  const factory MedicineActorEvent.faker() = _FakeMedicine;
}
