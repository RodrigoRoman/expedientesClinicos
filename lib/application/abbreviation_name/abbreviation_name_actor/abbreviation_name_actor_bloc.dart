import 'package:bloc/bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr_failure.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/i_name_abbreviation_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'abbreviation_name_actor_event.dart';
part 'abbreviation_name_actor_state.dart';
part 'abbreviation_name_actor_bloc.freezed.dart';

class AbbreviationNameActorBloc
    extends Bloc<AbbreviationNameActorEvent, AbbreviationNameActorState> {
  final INameAbbreviationRepository _iAbbreviationNameRepository;
  AbbreviationNameActorBloc(this._iAbbreviationNameRepository)
      : super(const AbbreviationNameActorState.initial()) {
    on<_Deleted>((event, emit) async {
      emit(const AbbreviationNameActorState.actionInProgress());
      final failureOrSuccessAbbreviationNameDeletion =
          await _iAbbreviationNameRepository.delete(event.abbreviationName);
      failureOrSuccessAbbreviationNameDeletion.fold(
          (f) => AbbreviationNameActorState.deleteFailure(f),
          (_) => const AbbreviationNameActorState.deleteSuccess());
      _iAbbreviationNameRepository.delete(event.abbreviationName);
    });
  }
}
