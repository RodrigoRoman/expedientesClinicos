import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/i_name_abbreviation_repository.dart';
import 'package:expedientes_clinicos/infraestructure/name_abbreviation/name_abbreviation_db_collection_names.dart';
import 'package:injectable/injectable.dart';

@injectable
class MeasureUnitWatcherBloc extends AbbreviationNameWatcherBloc {
  final INameAbbreviationRepository _iMeasureUnitRepository;
  MeasureUnitWatcherBloc(this._iMeasureUnitRepository)
      : super(_iMeasureUnitRepository,
            FirebaseCollectionNameAbbreviations.measureUnits);
}
