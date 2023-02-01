part of 'medicine_watcher_bloc.dart';

@freezed
class MedicineWatcherEvent with _$MedicineWatcherEvent {
  const factory MedicineWatcherEvent.started() = _Started;
}