import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_actor/abbreviation_name_actor_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/i_name_abbreviation_repository.dart';
import 'package:expedientes_clinicos/infraestructure/name_abbreviation/name_abbreviation_db_collection_names.dart';
import 'package:injectable/injectable.dart';

@injectable
class MeasureUnitActorBloc extends AbbreviationNameActorBloc {
  final INameAbbreviationRepository _measureUnitRepository;
  MeasureUnitActorBloc(
      @Named(FirebaseCollectionNameAbbreviations.measureUnits)
          this._measureUnitRepository)
      : super(_measureUnitRepository);
}
