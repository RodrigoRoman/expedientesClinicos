part of 'time_interval_watcher_bloc.dart';

@freezed
class TimeIntervalWatcherState with _$TimeIntervalWatcherState {
  const factory TimeIntervalWatcherState.initial() = _Initial;
  const factory TimeIntervalWatcherState.loadInProgress() = _LoadInProgress;
  const factory TimeIntervalWatcherState.loadSuccess(
      KtList<TimeInterval> timeIntervals) = _LoadSuccess;
  const factory TimeIntervalWatcherState.loadFailure(
      TimeIntervalFailure timeIntervalFailure) = _LoadFailure;
}
