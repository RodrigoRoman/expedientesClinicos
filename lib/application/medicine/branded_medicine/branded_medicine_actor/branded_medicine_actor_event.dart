part of 'branded_medicine_actor_bloc.dart';

@freezed
class BrandedMedicineActorEvent with _$BrandedMedicineActorEvent {
  const factory BrandedMedicineActorEvent.deleted(BrandedMedicine medicine) =
      _DeleteMedicine;
  const factory BrandedMedicineActorEvent.faker() = _FakeMedicine;
}
