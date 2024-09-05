import 'package:expedientes_clinicos/application/categories/category_watcher/category_watcher_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/i_category_repository.dart';
import 'package:expedientes_clinicos/infraestructure/category/category_db_collection_name.dart';
import 'package:injectable/injectable.dart';

@injectable
class DynamicCategoryWatcherBloc extends CategoryWatcherBloc {
  final ICategoryRepository _dynamicCategoryRepository;
  DynamicCategoryWatcherBloc(
      @Named(FirebaseCollectionCategories.dynamicCategories)
      this._dynamicCategoryRepository)
      : super(_dynamicCategoryRepository);
}
