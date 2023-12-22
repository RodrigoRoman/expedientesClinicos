import 'package:bloc/bloc.dart';
import 'package:expedientes_clinicos/domain/core/label_double_amount/i_label_double_amount_repository.dart';
import 'package:expedientes_clinicos/domain/core/label_double_amount/label_double_amount.dart';
import 'package:expedientes_clinicos/domain/core/label_double_amount/label_double_amount_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'label_double_amount_actor_event.dart';
part 'label_double_amount_actor_state.dart';
part 'label_double_amount_actor_bloc.freezed.dart';

class LabelDoubleAmountActorBloc
    extends Bloc<LabelDoubleAmountActorEvent, LabelDoubleAmountActorState> {
  final ILabelDoubleAmountRepository _labelDoubleAmountRepository;
  LabelDoubleAmountActorBloc(this._labelDoubleAmountRepository)
      : super(_Initial()) {
    on<_DeleteLabelDoubleAmount>((event, emit) async {
      emit(const LabelDoubleAmountActorState.actionInProgress());
      final failureOrDeleted =
          await _labelDoubleAmountRepository.delete(event.labelDoubleAmount);
      emit(failureOrDeleted.fold(
          (f) => LabelDoubleAmountActorState.deleteFailure(f),
          (_) => const LabelDoubleAmountActorState.deleteSuccess()));
    });
    // on<_FakeDayHoursDose>((event, emit) async {
    //   emit(const DoseAmountActorState.actionInProgress());
    //   final failureOrDeleted = await _doseAmountRepository.createFake();
    //   emit(failureOrDeleted.fold((f) => DayHoursDoseActorState.fakeFailure(f),
    //       (_) => const DayHoursDoseActorState.fakeSuccess()));
    // });
  }
}
