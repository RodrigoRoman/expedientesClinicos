import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/i_name_abbreviation_repository.dart';
import 'package:expedientes_clinicos/infraestructure/name_abbreviation/name_abbreviation_db_collection_names.dart';

import 'package:injectable/injectable.dart';

@injectable
class AdministrationRouteWatcherBloc extends AbbreviationNameWatcherBloc {
  final INameAbbreviationRepository _iAdministrationRouteRepository;
  AdministrationRouteWatcherBloc(this._iAdministrationRouteRepository)
      : super(_iAdministrationRouteRepository,
            FirebaseCollectionNameAbbreviations.administrationRoutes);
}
