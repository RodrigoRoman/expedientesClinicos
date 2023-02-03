part of 'measure_unit_actor_bloc.dart';

@freezed
class AbbreviationNameActorState with _$AbbreviationNameActorState {
  const factory AbbreviationNameActorState.initial() = _Initial;
  const factory AbbreviationNameActorState.actionInProgress() =
      _ActionInProgress;
  const factory AbbreviationNameActorState.deleteFailure(
      NameAbbreviationFailure nameAbbreviationFailure) = _DeleteFalure;
  const factory AbbreviationNameActorState.deleteSuccess() = _DeleteSuccess;
}
