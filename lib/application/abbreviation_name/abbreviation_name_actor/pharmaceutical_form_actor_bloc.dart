import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_actor/abbreviation_name_actor_bloc.dart';
import 'package:expedientes_clinicos/domain/medicine/i_measure_unit_repository.dart';
import 'package:expedientes_clinicos/domain/medicine/i_pharmaceutical_form_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class PharmaceuticalFormActorBloc extends AbbreviationNameActorBloc {
  final IPharmaceuticalFormRepository _pharmaceuticalFormRepository;
  PharmaceuticalFormActorBloc(this._pharmaceuticalFormRepository)
      : super(_pharmaceuticalFormRepository);
}