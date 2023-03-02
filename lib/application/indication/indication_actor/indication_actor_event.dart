part of 'indication_actor_bloc.dart';

@freezed
class IndicationActorEvent with _$IndicationActorEvent {
  const factory IndicationActorEvent.deleted(Indication indication) = _Deleted;
}
