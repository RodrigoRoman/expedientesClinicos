import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/abbreviation_name_form_abstract_bloc.dart';
import 'package:expedientes_clinicos/domain/medicine/i_measure_unit_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class MeasureUnitFormBloc extends AbbreviationNameFormBloc {
  final IMeasureUnitRepository _iAdministrationRouteRepository;
  MeasureUnitFormBloc(this._iAdministrationRouteRepository)
      : super(_iAdministrationRouteRepository);
}
