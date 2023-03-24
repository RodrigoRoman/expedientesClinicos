import 'package:expedientes_clinicos/application/categories/category_actor/category_actor_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/i_category_repository.dart';
import 'package:expedientes_clinicos/infraestructure/category/category_db_collection_name.dart';
import 'package:injectable/injectable.dart';

@injectable
class MedicineCategoryActorBloc extends CategoryActorBloc {
  final ICategoryRepository _medicineCategoryRepository;
  MedicineCategoryActorBloc(
      @Named('categoryMedicine') this._medicineCategoryRepository)
      : super(_medicineCategoryRepository);
}
