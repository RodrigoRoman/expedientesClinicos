part of 'label_double_amount_watcher_bloc.dart';

@freezed
class LabelDoubleAmountWatcherState with _$LabelDoubleAmountWatcherState {
  const factory LabelDoubleAmountWatcherState.initial() = _Initial;
  const factory LabelDoubleAmountWatcherState.loadInProgress() =
      _LoadInProgress;
  const factory LabelDoubleAmountWatcherState.loadSuccess(
      KtList<LabelDoubleAmount> labelDoubleAmount) = _LoadSuccess;
  const factory LabelDoubleAmountWatcherState.loadFailure(
          LabelDoubleAmountFailure labelDoubleAmountFailure) =
      _LabelDoubleAmountFailure;
}
