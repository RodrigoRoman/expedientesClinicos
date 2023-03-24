part of 'generic_medicine_watcher_bloc.dart';

@freezed
class GenericMedicineWatcherEvent with _$GenericMedicineWatcherEvent {
  const factory GenericMedicineWatcherEvent.watchAllStarted() =
      _WatchAllStarted;
  const factory GenericMedicineWatcherEvent.watchFilteredStarted(
      String keyword) = _WatchFilteredStarted;
  const factory GenericMedicineWatcherEvent.medicinesReceived(
      Either<GenericMedicineFailures, KtList<GenericMedicine>>
          failureOrMedicines) = _MedicinesReceived;
}
