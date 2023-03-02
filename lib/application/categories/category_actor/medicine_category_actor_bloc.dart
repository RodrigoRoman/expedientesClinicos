import 'package:expedientes_clinicos/application/categories/category_actor/category_actor_bloc.dart';
import 'package:expedientes_clinicos/domain/medicine/i_medicine_category_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class MedicineCategoryActorBloc extends CategoryActorBloc {
  final IMedicineCategoryRepository _medicineCategoryRepository;
  MedicineCategoryActorBloc(this._medicineCategoryRepository)
      : super(_medicineCategoryRepository);
}
