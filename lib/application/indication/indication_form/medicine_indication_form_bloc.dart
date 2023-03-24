import 'package:expedientes_clinicos/application/indication/indication_form/indication_form_bloc.dart';
import 'package:expedientes_clinicos/domain/core/indication/i_indication_repository.dart';
import 'package:expedientes_clinicos/infraestructure/indication/indication_db_collection_name.dart';
import 'package:injectable/injectable.dart';

@injectable
class MedicineIndicationFormBloc extends IndicationFormBloc {
  final IIndicationRepository _medicineIndicationRepository;
  MedicineIndicationFormBloc(
      @Named(FirebaseCollectionsIndication.medicineIndication)
          this._medicineIndicationRepository)
      : super(_medicineIndicationRepository);
}
