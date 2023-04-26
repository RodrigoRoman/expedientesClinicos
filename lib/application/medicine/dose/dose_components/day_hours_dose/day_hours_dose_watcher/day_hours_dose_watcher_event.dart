part of 'day_hours_dose_watcher_bloc.dart';

@freezed
class DayHoursDoseWatcherEvent with _$DayHoursDoseWatcherEvent {
  const factory DayHoursDoseWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory DayHoursDoseWatcherEvent.watchFilteredStarted(String keyword) =
      _WatchFilteredStarted;
  const factory DayHoursDoseWatcherEvent.dosesReceived(
          Either<DayHoursDoseFailures, KtList<DayHoursDose>> failureOrDoses) =
      _DayHoursDoseReceived;
}
