import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart';

import 'package:expedientes_clinicos/domain/medicine/i_administration_route_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AdministrationRouteWatcherBloc extends AbbreviationNameWatcherBloc {
  final IAdministrationRouteRepository _iAdministrationRouteRepository;
  AdministrationRouteWatcherBloc(this._iAdministrationRouteRepository)
      : super(_iAdministrationRouteRepository);
}
