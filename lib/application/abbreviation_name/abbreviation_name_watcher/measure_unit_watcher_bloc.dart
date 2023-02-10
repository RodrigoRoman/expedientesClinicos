import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart';
import 'package:expedientes_clinicos/domain/medicine/i_measure_unit_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class MeasureUnitWatcherBloc extends AbbreviationNameWatcherBloc {
  final IMeasureUnitRepository _iMeasureUnitRepository;
  MeasureUnitWatcherBloc(this._iMeasureUnitRepository)
      : super(_iMeasureUnitRepository);
}
