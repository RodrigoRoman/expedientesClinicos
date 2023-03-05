import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_actor/abbreviation_name_actor_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/i_name_abbreviation_repository.dart';
import 'package:expedientes_clinicos/infraestructure/name_abbreviation/name_abbreviation_db_collection_names.dart';
import 'package:injectable/injectable.dart';

@injectable
class PharmaceuticalFormActorBloc extends AbbreviationNameActorBloc {
  final INameAbbreviationRepository _pharmaceuticalFormRepository;
  PharmaceuticalFormActorBloc(this._pharmaceuticalFormRepository)
      : super(_pharmaceuticalFormRepository,
            FirebaseCollectionNameAbbreviations.pharmaceuticalForms);
}
