part of 'abbreviation_name_actor_bloc.dart';

@freezed
class AbbreviationNameActorEvent with _$AbbreviationNameActorEvent {
  const factory AbbreviationNameActorEvent.deleted(
      NameAbbreviation abbreviationName) = _Deleted;
}
