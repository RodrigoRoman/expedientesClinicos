import 'package:bloc/bloc.dart';
import 'package:expedientes_clinicos/domain/core/indication/i_indication_repository.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'indication_actor_event.dart';
part 'indication_actor_state.dart';
part 'indication_actor_bloc.freezed.dart';

@injectable
class IndicationActorBloc
    extends Bloc<IndicationActorEvent, IndicationActorState> {
  final IIndicationRepository _iIndicationRepository;
  IndicationActorBloc(this._iIndicationRepository)
      : super(const IndicationActorState.initial()) {
    on<_Deleted>((event, emit) async {
      emit(const IndicationActorState.actionInProgress());
      final failureOrSuccessDeletion =
          await _iIndicationRepository.delete(event.indication);
      failureOrSuccessDeletion.fold(
          (f) => IndicationActorState.deleteFailure(f),
          (_) => const IndicationActorState.deleteSuccess());
      _iIndicationRepository.delete(event.indication);
    });
  }
}
