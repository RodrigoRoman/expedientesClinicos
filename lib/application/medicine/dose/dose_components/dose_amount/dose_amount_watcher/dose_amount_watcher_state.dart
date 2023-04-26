part of 'dose_amount_watcher_bloc.dart';

@freezed
class DoseAmountWatcherState with _$DoseAmountWatcherState {
  const factory DoseAmountWatcherState.initial() = _Initial;
  const factory DoseAmountWatcherState.loadInProgress() = _LoadInProgress;
  const factory DoseAmountWatcherState.loadSuccess(
      KtList<DoseAmount> doseAmounts) = _LoadSuccess;
  const factory DoseAmountWatcherState.loadFailure(
      DoseAmountFailures doseAmountFailure) = _DoseAmountFailure;
}
