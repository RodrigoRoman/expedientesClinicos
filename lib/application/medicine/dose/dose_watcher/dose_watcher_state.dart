part of 'dose_watcher_bloc.dart';

@freezed
class DoseWatcherState with _$DoseWatcherState {
  const factory DoseWatcherState.initial() = _Initial;
  const factory DoseWatcherState.loadInProgress() = _LoadInProgress;
  const factory DoseWatcherState.loadSuccess(KtList<Dose> dose) = _LoadSuccess;

  const factory DoseWatcherState.loadFailure(DoseFailures medicineFailure) =
      _DoseFailure;
}
