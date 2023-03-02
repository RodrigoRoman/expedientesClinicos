part of 'prescription_watcher_bloc.dart';

@freezed
class PrescriptionWatcherEvent with _$PrescriptionWatcherEvent {
  const factory PrescriptionWatcherEvent.started() = _Started;
}