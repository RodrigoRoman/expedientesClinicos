part of 'branded_medicine_watcher_bloc.dart';

@freezed
class BrandedMedicineWatcherState with _$BrandedMedicineWatcherState {
  const factory BrandedMedicineWatcherState.initial() = _Initial;
  const factory BrandedMedicineWatcherState.loadInProgress() = _LoadInProgress;
  const factory BrandedMedicineWatcherState.loadSuccess(
      KtList<BrandedMedicine> medicines) = _LoadSuccess;

  const factory BrandedMedicineWatcherState.loadFailure(
      BrandedMedicineFailures medicineFailure) = _MedicineFailure;
}
