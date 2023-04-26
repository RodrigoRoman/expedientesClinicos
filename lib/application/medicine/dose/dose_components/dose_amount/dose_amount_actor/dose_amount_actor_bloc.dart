import 'package:bloc/bloc.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/dose_amount.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/dose_amount_failures.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/i_dose_amount_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dose_amount_actor_event.dart';
part 'dose_amount_actor_state.dart';
part 'dose_amount_actor_bloc.freezed.dart';

class DoseAmountActorBloc
    extends Bloc<DoseAmountActorEvent, DoseAmountActorState> {
  final IDoseAmountRepository _doseAmountRepository;
  DoseAmountActorBloc(this._doseAmountRepository) : super(_Initial()) {
    on<_DeleteDoseAmount>((event, emit) async {
      emit(const DoseAmountActorState.actionInProgress());
      final failureOrDeleted =
          await _doseAmountRepository.delete(event.doseAmount);
      emit(failureOrDeleted.fold((f) => DoseAmountActorState.deleteFailure(f),
          (_) => const DoseAmountActorState.deleteSuccess()));
    });
    // on<_FakeDayHoursDose>((event, emit) async {
    //   emit(const DoseAmountActorState.actionInProgress());
    //   final failureOrDeleted = await _doseAmountRepository.createFake();
    //   emit(failureOrDeleted.fold((f) => DayHoursDoseActorState.fakeFailure(f),
    //       (_) => const DayHoursDoseActorState.fakeSuccess()));
    // });
  }
}
