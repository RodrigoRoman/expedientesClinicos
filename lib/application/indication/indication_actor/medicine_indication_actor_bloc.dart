import 'package:expedientes_clinicos/application/indication/indication_actor/indication_actor_bloc.dart';
import 'package:expedientes_clinicos/domain/core/indication/i_indication_repository.dart';
import 'package:expedientes_clinicos/infraestructure/indication/indication_db_collection_name.dart';
import 'package:injectable/injectable.dart';

@injectable
class MedicineIndicationActorBloc extends IndicationActorBloc {
  final IIndicationRepository _medicineIndicationRepository;
  MedicineIndicationActorBloc(this._medicineIndicationRepository)
      : super(_medicineIndicationRepository,
            FirebaseCollectionsIndication.medicineIndication);
}
