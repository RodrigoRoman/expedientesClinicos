import 'package:expedientes_clinicos/application/categories/category_form/category_form_bloc.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication_class/i_indication_class_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class IndicationCategoryFormBloc extends CategoryFormBloc {
  final IIndicationCategoryRepository _indicationCategoryRepository;
  IndicationCategoryFormBloc(this._indicationCategoryRepository)
      : super(_indicationCategoryRepository);
}
