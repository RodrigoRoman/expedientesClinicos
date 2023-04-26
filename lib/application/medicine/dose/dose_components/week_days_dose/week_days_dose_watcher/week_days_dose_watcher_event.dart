part of 'week_days_dose_watcher_bloc.dart';

@freezed
class WeekDaysDoseWatcherEvent with _$WeekDaysDoseWatcherEvent {
  const factory WeekDaysDoseWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory WeekDaysDoseWatcherEvent.watchFilteredStarted(String keyword) =
      _WatchFilteredStarted;
  const factory WeekDaysDoseWatcherEvent.weekDaysDoseReceived(
      Either<WeekDaysDoseFailures, KtList<WeekDaysDose>>
          failureOrWeekDays) = _WeekDaysReceived;
}
