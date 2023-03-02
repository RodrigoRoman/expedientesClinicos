part of 'indication_watcher_bloc.dart';

@freezed
class IndicationWatcherState with _$IndicationWatcherState {
  const factory IndicationWatcherState.initial() = _Initial;
  const factory IndicationWatcherState.loadInProgress() = _LoadInProgress;
  const factory IndicationWatcherState.loadSuccess(
      KtList<Indication> indication) = _LoadSuccess;
  const factory IndicationWatcherState.loadFailure(
      IndicationFailure indicationFailure) = _LoadFailure;
}
