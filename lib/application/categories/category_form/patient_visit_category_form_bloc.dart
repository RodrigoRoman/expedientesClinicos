import 'package:expedientes_clinicos/application/categories/category_form/category_form_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/i_category_repository.dart';
import 'package:expedientes_clinicos/infraestructure/category/category_db_collection_name.dart';
import 'package:injectable/injectable.dart';

@injectable
class PatientVisitTypeCategoryFormBloc extends CategoryFormBloc {
  final ICategoryRepository _patienCategoryRepository;
  PatientVisitTypeCategoryFormBloc(
      @Named(FirebaseCollectionCategories.patientVisitCategories)
      this._patienCategoryRepository)
      : super(_patienCategoryRepository);
}
