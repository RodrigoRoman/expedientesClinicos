part of 'dose_amount_watcher_bloc.dart';

@freezed
class DoseAmountWatcherEvent with _$DoseAmountWatcherEvent {
  const factory DoseAmountWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory DoseAmountWatcherEvent.watchFilteredStarted(String keyword) =
      _WatchFilteredStarted;
  const factory DoseAmountWatcherEvent.doseAmountsReceived(
          Either<DoseAmountFailures, KtList<DoseAmount>> failureOrDoseAmounts) =
      _DoseAmountReceived;
}
