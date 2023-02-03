part of 'measure_unit_watcher_bloc.dart';

@freezed
class AbbreviationNameWatcherState with _$AbbreviationNameWatcherState {
  const factory AbbreviationNameWatcherState.initial() = _Initial;
  const factory AbbreviationNameWatcherState.loadInProgress() = _LoadInProgress;
  const factory AbbreviationNameWatcherState.loadSuccess(
      KtList<NameAbbreviation> abbreviationName) = _LoadSuccess;
  const factory AbbreviationNameWatcherState.loadFailure(
      NameAbbreviationFailure abbreviationNameFailure) = _LoadFailure;
}
