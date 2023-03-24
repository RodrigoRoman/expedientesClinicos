part of 'branded_medicine_watcher_bloc.dart';

@freezed
class BrandedMedicineWatcherEvent with _$BrandedMedicineWatcherEvent {
  const factory BrandedMedicineWatcherEvent.watchAllStarted() =
      _WatchAllStarted;
  const factory BrandedMedicineWatcherEvent.watchFilteredStarted(
      String keyword) = _WatchFilteredStarted;
  const factory BrandedMedicineWatcherEvent.medicinesReceived(
      Either<BrandedMedicineFailures, KtList<BrandedMedicine>>
          failureOrMedicines) = _MedicinesReceived;
}
