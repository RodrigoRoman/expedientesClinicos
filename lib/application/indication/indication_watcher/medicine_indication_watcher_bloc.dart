import 'package:expedientes_clinicos/application/indication/indication_watcher/indication_watcher_bloc.dart';
import 'package:expedientes_clinicos/domain/medicine/i_medicine_indication_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class MedicineIndicationWatcherBloc extends IndicationWatcherBloc {
  final IMedicineIndicationRepository _medicineIndicationRepository;
  MedicineIndicationWatcherBloc(this._medicineIndicationRepository)
      : super(_medicineIndicationRepository);
}
