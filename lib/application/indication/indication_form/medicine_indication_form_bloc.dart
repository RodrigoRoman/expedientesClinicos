import 'package:expedientes_clinicos/application/indication/indication_form/indication_form_bloc.dart';
import 'package:expedientes_clinicos/domain/medicine/i_medicine_indication_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class MedicineIndicationFormBloc extends IndicationFormBloc {
  final IMedicineIndicationRepository _medicineIndicationRepository;
  MedicineIndicationFormBloc(this._medicineIndicationRepository)
      : super(_medicineIndicationRepository);
}
