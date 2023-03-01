part of 'time_interval_actor_bloc.dart';

@freezed
class TimeIntervalActorEvent with _$TimeIntervalActorEvent {
  const factory TimeIntervalActorEvent.deleted(TimeInterval timeInterval) =
      _Deleted;
}
