part of 'label_double_amount_watcher_bloc.dart';

@freezed
class LabelDoubleAmountWatcherEvent with _$LabelDoubleAmountWatcherEvent {
  const factory LabelDoubleAmountWatcherEvent.watchAllStarted() =
      _WatchAllStarted;
  const factory LabelDoubleAmountWatcherEvent.watchFilteredStarted(
      String keyword) = _WatchFilteredStarted;
  const factory LabelDoubleAmountWatcherEvent.labelDoubleAmountsReceived(
      Either<LabelDoubleAmountFailure, KtList<LabelDoubleAmount>>
          failureOrLabelDoubleAmounts) = _LabelDoubleAmountReceived;
}
