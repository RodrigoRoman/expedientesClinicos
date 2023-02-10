import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_actor/abbreviation_name_actor_bloc.dart';
import 'package:expedientes_clinicos/domain/medicine/i_administration_route_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AdministrationRouteActorBloc extends AbbreviationNameActorBloc {
  final IAdministrationRouteRepository _iAdministrationRouteRepository;
  AdministrationRouteActorBloc(this._iAdministrationRouteRepository)
      : super(_iAdministrationRouteRepository);
}
