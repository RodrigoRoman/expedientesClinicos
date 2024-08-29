import 'package:expedientes_clinicos/application/categories/category_watcher/category_watcher_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/i_category_repository.dart';
import 'package:expedientes_clinicos/infraestructure/category/category_db_collection_name.dart';
import 'package:injectable/injectable.dart';

@injectable
class PatientVisitTypeCategoryWatcherBloc extends CategoryWatcherBloc {
  final ICategoryRepository _patientVisitCategoryRepository;
  PatientVisitTypeCategoryWatcherBloc(
      @Named(FirebaseCollectionCategories.patientVisitCategories)
      this._patientVisitCategoryRepository)
      : super(_patientVisitCategoryRepository);
}
