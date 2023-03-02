import 'package:expedientes_clinicos/application/categories/category_form/category_form_bloc.dart';
import 'package:expedientes_clinicos/domain/medicine/i_medicine_category_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class MedicineCategoryFormBloc extends CategoryFormBloc {
  final IMedicineCategoryRepository _medicineCategoryRepository;
  MedicineCategoryFormBloc(this._medicineCategoryRepository)
      : super(_medicineCategoryRepository);
}
