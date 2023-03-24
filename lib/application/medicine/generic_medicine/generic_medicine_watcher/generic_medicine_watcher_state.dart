part of 'generic_medicine_watcher_bloc.dart';

@freezed
class GenericMedicineWatcherState with _$GenericMedicineWatcherState {
  const factory GenericMedicineWatcherState.initial() = _Initial;
  const factory GenericMedicineWatcherState.loadInProgress() = _LoadInProgress;
  const factory GenericMedicineWatcherState.loadSuccess(
      KtList<GenericMedicine> medicines) = _LoadSuccess;

  const factory GenericMedicineWatcherState.loadFailure(
      GenericMedicineFailures medicineFailure) = _MedicineFailure;
}
