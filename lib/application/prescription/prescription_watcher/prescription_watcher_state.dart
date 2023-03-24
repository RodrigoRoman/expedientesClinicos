part of 'prescription_watcher_bloc.dart';

@freezed
class PrescriptionWatcherState with _$PrescriptionWatcherState {
  const factory PrescriptionWatcherState.initial() = _Initial;
  const factory PrescriptionWatcherState.loadInProgress() = _LoadInProgress;
  const factory PrescriptionWatcherState.loadSuccess(
      KtList<Prescription> prescriptions) = _LoadSuccess;
  const factory PrescriptionWatcherState.loadFailure(
      PrescriptionFailures prescriptionFailure) = _PrescriptionFailure;
}
