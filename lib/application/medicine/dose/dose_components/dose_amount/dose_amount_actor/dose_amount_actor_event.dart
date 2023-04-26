part of 'dose_amount_actor_bloc.dart';

@freezed
class DoseAmountActorEvent with _$DoseAmountActorEvent {
  const factory DoseAmountActorEvent.deleted(DoseAmount doseAmount) =
      _DeleteDoseAmount;
  const factory DoseAmountActorEvent.faker() = _FakeDoseAmount;
}
