import 'package:bloc/bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr_failure.dart';
import 'package:expedientes_clinicos/domain/medicine/i_measure_unit_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'abbreviation_name_actor_event.dart';
part 'abbreviation_name_actor_state.dart';
part 'measure_unit_actor_bloc.freezed.dart';

class MeasureUnitActorBloc
    extends Bloc<AbbreviationNameActorEvent, AbbreviationNameActorState> {
  final IMeasureUnitRepository _measureUnitRepository;
  MeasureUnitActorBloc(this._measureUnitRepository)
      : super(const AbbreviationNameActorState.initial()) {
    on<_Deleted>((event, emit) async {
      emit(const AbbreviationNameActorState.actionInProgress());
      final failureOrSuccessMeasureUnitDeletion =
          await _measureUnitRepository.delete(event.abbreviationName);
      failureOrSuccessMeasureUnitDeletion.fold(
          (f) => AbbreviationNameActorState.deleteFailure(f),
          (_) => const AbbreviationNameActorState.deleteSuccess());
      _measureUnitRepository.delete(event.abbreviationName);
    });
  }
}
