import 'package:expedientes_clinicos/application/categories/category_watcher/category_watcher_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/i_category_repository.dart';
import 'package:expedientes_clinicos/infraestructure/category/category_db_collection_name.dart';
import 'package:injectable/injectable.dart';

@injectable
class IndicationCategoryWatcherBloc extends CategoryWatcherBloc {
  final ICategoryRepository _indicationCategoryRepository;
  IndicationCategoryWatcherBloc(this._indicationCategoryRepository)
      : super(_indicationCategoryRepository,
            FirebaseCollectionCategories.indicationCategories);
}
