part of 'abbreviation_name_watcher_bloc.dart';

@freezed
class AbbreviationNameWatcherEvent with _$AbbreviationNameWatcherEvent {
  const factory AbbreviationNameWatcherEvent.watchAllStarted() =
      _WatchAllStarted;
  const factory AbbreviationNameWatcherEvent.watchFilteredStarted(
      String keyword) = _WatchFilteredStarted;
  const factory AbbreviationNameWatcherEvent.abbreviationNamesReceived(
      Either<NameAbbreviationFailure, KtList<NameAbbreviation>>
          failureOrUnit) = _AbbreviationNameReceived;
}
