import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/abbreviation_name_form_abstract_bloc.dart';
import 'package:expedientes_clinicos/domain/medicine/i_pharmaceutical_form_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class PharmaceuticalFormFormBloc extends AbbreviationNameFormBloc {
  final IPharmaceuticalFormRepository _pharmaceuticalFormRepository;
  PharmaceuticalFormFormBloc(this._pharmaceuticalFormRepository)
      : super(_pharmaceuticalFormRepository);
}
