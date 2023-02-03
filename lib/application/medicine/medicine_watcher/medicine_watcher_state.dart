part of 'medicine_watcher_bloc.dart';

@freezed
class MedicineWatcherState with _$MedicineWatcherState {
  const factory MedicineWatcherState.initial() = _Initial;
  const factory MedicineWatcherState.loadInProgress() = _LoadInProgress;
  const factory MedicineWatcherState.loadSuccess(KtList<Medicine> medicines) =
      _LoadSuccess;

  const factory MedicineWatcherState.loadFailure(
      MedicineFailures medicineFailure) = _MedicineFailure;
}
