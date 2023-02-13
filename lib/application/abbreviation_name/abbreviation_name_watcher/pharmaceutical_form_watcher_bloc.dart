import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart';
import 'package:expedientes_clinicos/domain/medicine/i_pharmaceutical_form_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class PharmaceuticalFormWatcherBloc extends AbbreviationNameWatcherBloc {
  final IPharmaceuticalFormRepository _pharmaceuticalFormRepository;
  PharmaceuticalFormWatcherBloc(this._pharmaceuticalFormRepository)
      : super(_pharmaceuticalFormRepository);
}
