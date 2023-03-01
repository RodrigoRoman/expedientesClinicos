part of 'time_interval_watcher_bloc.dart';

@freezed
class TimeIntervalWatcherEvent with _$TimeIntervalWatcherEvent {
  const factory TimeIntervalWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory TimeIntervalWatcherEvent.watchFilteredStarted(String keyword) =
      _WatchFilteredStarted;
  const factory TimeIntervalWatcherEvent.timeIntervalReceived(
          Either<TimeIntervalFailure, KtList<TimeInterval>> failureOrUnit) =
      _TimeIntervalReceived;
}
