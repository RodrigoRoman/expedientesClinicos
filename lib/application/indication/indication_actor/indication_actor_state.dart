part of 'indication_actor_bloc.dart';

@freezed
class IndicationActorState with _$IndicationActorState {
  const factory IndicationActorState.initial() = _Initial;
  const factory IndicationActorState.actionInProgress() = _ActionInProgress;
  const factory IndicationActorState.deleteFailure(
      IndicationFailure indicationFailure) = _DeleteFalure;
  const factory IndicationActorState.deleteSuccess() = _DeleteSuccess;
}
