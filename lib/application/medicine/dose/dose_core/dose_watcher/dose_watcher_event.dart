part of 'dose_watcher_bloc.dart';

@freezed
class DoseWatcherEvent with _$DoseWatcherEvent {
  const factory DoseWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory DoseWatcherEvent.watchFilteredStarted(String keyword) =
      _WatchFilteredStarted;
  const factory DoseWatcherEvent.dosesReceived(
      Either<DoseFailures, KtList<Dose>> failureOrDoses) = _DosesReceived;
}
