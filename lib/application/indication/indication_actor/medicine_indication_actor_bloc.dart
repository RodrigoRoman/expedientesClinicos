import 'package:expedientes_clinicos/application/indication/indication_actor/indication_actor_bloc.dart';
import 'package:expedientes_clinicos/domain/medicine/i_medicine_indication_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class MedicineIndicationActorBloc extends IndicationActorBloc {
  final IMedicineIndicationRepository _medicineIndicationRepository;
  MedicineIndicationActorBloc(this._medicineIndicationRepository)
      : super(_medicineIndicationRepository);
}
