import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/abbreviation_name_form_abstract_bloc.dart';
import 'package:expedientes_clinicos/domain/medicine/i_administration_route_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AdministrationRouteFormBloc extends AbbreviationNameFormBloc {
  final IAdministrationRouteRepository _iAdministrationRouteRepository;
  AdministrationRouteFormBloc(this._iAdministrationRouteRepository)
      : super(_iAdministrationRouteRepository);
}
