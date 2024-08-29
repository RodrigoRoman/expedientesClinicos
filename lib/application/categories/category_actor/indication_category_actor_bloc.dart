import 'package:expedientes_clinicos/application/categories/category_actor/category_actor_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/i_category_repository.dart';
import 'package:expedientes_clinicos/infraestructure/category/category_db_collection_name.dart';
import 'package:injectable/injectable.dart';

@injectable
class IndicationCategoryActorBloc extends CategoryActorBloc {
  final ICategoryRepository _indicationCategoryRepository;
  IndicationCategoryActorBloc(
      @Named(FirebaseCollectionCategories.indicationCategories)
      this._indicationCategoryRepository)
      : super(_indicationCategoryRepository);
}
