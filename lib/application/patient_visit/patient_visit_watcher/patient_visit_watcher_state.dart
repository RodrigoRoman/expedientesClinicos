part of 'patient_visit_watcher_bloc.dart';

@freezed
class PatientVisitWatcherState with _$PatientVisitWatcherState {
  const factory PatientVisitWatcherState.initial() = _Initial;
  const factory PatientVisitWatcherState.loadInProgress() = _LoadInProgress;
  const factory PatientVisitWatcherState.loadSuccess(
      KtList<PatientVisit> patientVisit) = _LoadSuccess;
  const factory PatientVisitWatcherState.loadFailure(
      PatientVisitFailures patientVisitFailure) = _PatientVisitFailure;
}
