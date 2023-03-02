import 'package:expedientes_clinicos/application/categories/category_watcher/category_watcher_bloc.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication_class/i_indication_class_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class IndicationCategoryWatcherBloc extends CategoryWatcherBloc {
  final IIndicationCategoryRepository _indicationCategoryRepository;
  IndicationCategoryWatcherBloc(this._indicationCategoryRepository)
      : super(_indicationCategoryRepository);
}
