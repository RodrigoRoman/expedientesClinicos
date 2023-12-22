import 'package:expedientes_clinicos/application/label_double_amount/label_double_amount_actor/label_double_amount_actor_bloc.dart';
import 'package:expedientes_clinicos/domain/core/label_double_amount/i_label_double_amount_repository.dart';
import 'package:expedientes_clinicos/infraestructure/name_abbreviation/name_abbreviation_db_collection_names.dart';
import 'package:injectable/injectable.dart';

@injectable
class DoseAmountActorBloc extends LabelDoubleAmountActorBloc {
  final ILabelDoubleAmountRepository _iDoseAmountRepository;
  DoseAmountActorBloc(
      @Named(FirebaseCollectionNameAbbreviations.doseAmount)
      this._iDoseAmountRepository)
      : super(_iDoseAmountRepository);
}
