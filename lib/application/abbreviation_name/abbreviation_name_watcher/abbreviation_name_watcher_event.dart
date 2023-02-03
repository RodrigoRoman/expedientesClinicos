part of 'measure_unit_watcher_bloc.dart';

@freezed
class AbbreviationNameWatcherEvent with _$AbbreviationNameWatcherEvent {
  const factory AbbreviationNameWatcherEvent.watchAllStarted() =
      _WatchAllStarted;
  const factory AbbreviationNameWatcherEvent.watchFilteredStarted(
      String keyword) = _WatchFilteredStarted;
  const factory AbbreviationNameWatcherEvent.measureUnitsReceived(
      Either<NameAbbreviationFailure, KtList<NameAbbreviation>>
          failureOrUnit) = _AbbreviationNameReceived;
}
