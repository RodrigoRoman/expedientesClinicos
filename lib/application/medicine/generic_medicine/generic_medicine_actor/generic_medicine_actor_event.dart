part of 'generic_medicine_actor_bloc.dart';

@freezed
class GenericMedicineActorEvent with _$GenericMedicineActorEvent {
  const factory GenericMedicineActorEvent.deleted(GenericMedicine medicine) =
      _DeleteMedicine;
  const factory GenericMedicineActorEvent.faker() = _FakeMedicine;
}
