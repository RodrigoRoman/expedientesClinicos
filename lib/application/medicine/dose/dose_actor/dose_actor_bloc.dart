import 'package:bloc/bloc.dart';
import 'package:expedientes_clinicos/domain/medicine/dose/dose.dart';
import 'package:expedientes_clinicos/domain/medicine/dose/dose_failures.dart';
import 'package:expedientes_clinicos/domain/medicine/dose/i_dose_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dose_actor_event.dart';
part 'dose_actor_state.dart';
part 'dose_actor_bloc.freezed.dart';

@injectable
class DoseActorBloc extends Bloc<DoseActorEvent, DoseActorState> {
  final IDoseRepository _doseRepository;
  DoseActorBloc(this._doseRepository) : super(_Initial()) {
    on<_DeleteDose>((event, emit) async {
      emit(const DoseActorState.actionInProgress());
      final failureOrDeleted = await _doseRepository.delete(event.dose);
      emit(failureOrDeleted.fold((f) => DoseActorState.deleteFailure(f),
          (_) => const DoseActorState.deleteSuccess()));
    });
    on<_FakeDose>((event, emit) async {
      emit(const DoseActorState.actionInProgress());
      final failureOrDeleted = await _doseRepository.createFake();
      emit(failureOrDeleted.fold((f) => DoseActorState.fakeFailure(f),
          (_) => const DoseActorState.fakeSuccess()));
    });
  }
}
