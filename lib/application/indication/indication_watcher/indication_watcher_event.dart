part of 'indication_watcher_bloc.dart';

@freezed
class IndicationWatcherEvent with _$IndicationWatcherEvent {
  const factory IndicationWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory IndicationWatcherEvent.watchFilteredStarted(String keyword) =
      _WatchFilteredStarted;
  const factory IndicationWatcherEvent.indicationReceived(
          Either<IndicationFailure, KtList<Indication>> failureOrUnit) =
      _IndicationReceived;
}
