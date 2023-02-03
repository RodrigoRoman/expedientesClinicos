part of 'medicine_watcher_bloc.dart';

@freezed
class MedicineWatcherEvent with _$MedicineWatcherEvent {
  const factory MedicineWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory MedicineWatcherEvent.watchFilteredStarted(String keyword) =
      _WatchFilteredStarted;
  const factory MedicineWatcherEvent.medicinesReceived(
          Either<MedicineFailures, KtList<Medicine>> failureOrMedicines) =
      _MedicinesReceived;
}
