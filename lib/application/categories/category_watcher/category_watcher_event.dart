part of 'category_watcher_bloc.dart';

@freezed
class CategoryWatcherEvent with _$CategoryWatcherEvent {
  const factory CategoryWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory CategoryWatcherEvent.watchFilteredStarted(String keyword) =
      _WatchFilteredStarted;
  const factory CategoryWatcherEvent.categoriesReceived(
          Either<CategoryFailures, KtList<Category>> failureOrCategories) =
      _CategoriesReceived;
}
