import 'package:expedientes_clinicos/application/indication/indication_watcher/indication_watcher_bloc.dart';
import 'package:expedientes_clinicos/domain/core/indication/i_indication_repository.dart';
import 'package:expedientes_clinicos/infraestructure/indication/indication_db_collection_name.dart';
import 'package:injectable/injectable.dart';

@injectable
class MedicineIndicationWatcherBloc extends IndicationWatcherBloc {
  final IIndicationRepository _medicineIndicationRepository;
  MedicineIndicationWatcherBloc(
      @Named(FirebaseCollectionsIndication.medicineIndication)
          this._medicineIndicationRepository)
      : super(_medicineIndicationRepository);
}
