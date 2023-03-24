part of 'patient_visit_watcher_bloc.dart';

@freezed
class PatientVisitWatcherEvent with _$PatientVisitWatcherEvent {
  const factory PatientVisitWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory PatientVisitWatcherEvent.watchFilteredStarted(String keyword) =
      _WatchFilteredStarted;
  const factory PatientVisitWatcherEvent.patientVisitReceived(
      Either<PatientVisitFailures, KtList<PatientVisit>>
          failureOrPatientVisit) = _PatientVisitReceived;
}
