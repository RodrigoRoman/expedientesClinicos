part of 'week_days_dose_watcher_bloc.dart';

@freezed
class WeekDaysDoseWatcherState with _$WeekDaysDoseWatcherState {
  const factory WeekDaysDoseWatcherState.initial() = _Initial;
  const factory WeekDaysDoseWatcherState.loadInProgress() = _LoadInProgress;
  const factory WeekDaysDoseWatcherState.loadSuccess(
      KtList<WeekDaysDose> weekDaysDose) = _LoadSuccess;
  const factory WeekDaysDoseWatcherState.loadFailure(
      WeekDaysDoseFailures weekDaysDoseFailure) = _WeekDaysDoseFailure;
}
