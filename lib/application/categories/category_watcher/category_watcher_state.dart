part of 'category_watcher_bloc.dart';

@freezed
class CategoryWatcherState with _$CategoryWatcherState {
  const factory CategoryWatcherState.initial() = _Initial;
  const factory CategoryWatcherState.loadInProgress() = _LoadInProgress;
  const factory CategoryWatcherState.loadSuccess(KtList<Category> categories) =
      _LoadSuccess;

  const factory CategoryWatcherState.loadFailure(
      CategoryFailures categoryFailure) = _CategoryFailure;
}
