part of 'prescription_watcher_bloc.dart';

@freezed
class PrescriptionWatcherEvent with _$PrescriptionWatcherEvent {
  const factory PrescriptionWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory PrescriptionWatcherEvent.watchFilteredStarted(String keyword) =
      _WatchFilteredStarted;
  const factory PrescriptionWatcherEvent.prescriptionsReceived(
      Either<PrescriptionFailures, KtList<Prescription>>
          failureOrPrescriptions) = _PrescriptionsReceived;
}
