import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/abbreviation_name_form_abstract_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/i_name_abbreviation_repository.dart';
import 'package:expedientes_clinicos/infraestructure/name_abbreviation/name_abbreviation_db_collection_names.dart';
import 'package:injectable/injectable.dart';

@injectable
class PharmaceuticalFormFormBloc extends AbbreviationNameFormBloc {
  final INameAbbreviationRepository _pharmaceuticalFormRepository;
  PharmaceuticalFormFormBloc(
      @Named(FirebaseCollectionNameAbbreviations.pharmaceuticalForms)
          this._pharmaceuticalFormRepository)
      : super(_pharmaceuticalFormRepository);
}
