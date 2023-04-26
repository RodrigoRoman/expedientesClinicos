part of 'day_hours_dose_watcher_bloc.dart';

@freezed
class DayHoursDoseWatcherState with _$DayHoursDoseWatcherState {
  const factory DayHoursDoseWatcherState.initial() = _Initial;
  const factory DayHoursDoseWatcherState.loadInProgress() = _LoadInProgress;
  const factory DayHoursDoseWatcherState.loadSuccess(
      KtList<DayHoursDose> dayHourDose) = _LoadSuccess;

  const factory DayHoursDoseWatcherState.loadFailure(
      DayHoursDoseFailures dayHoursDoseFailure) = _DayHoursDoseFailure;
}
