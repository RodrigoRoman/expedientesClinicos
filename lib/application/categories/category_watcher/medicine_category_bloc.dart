import 'package:expedientes_clinicos/application/categories/category_watcher/category_watcher_bloc.dart';
import 'package:expedientes_clinicos/domain/medicine/i_medicine_category_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class MedicineCategoryWatcherBloc extends CategoryWatcherBloc {
  final IMedicineCategoryRepository _medicineCategoryRepository;
  MedicineCategoryWatcherBloc(this._medicineCategoryRepository)
      : super(_medicineCategoryRepository);
}
