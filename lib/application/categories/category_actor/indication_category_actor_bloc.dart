import 'package:expedientes_clinicos/application/categories/category_actor/category_actor_bloc.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication_class/i_indication_class_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class IndicationCategoryActorBloc extends CategoryActorBloc {
  final IIndicationCategoryRepository _indicationCategoryRepository;
  IndicationCategoryActorBloc(this._indicationCategoryRepository)
      : super(_indicationCategoryRepository);
}
