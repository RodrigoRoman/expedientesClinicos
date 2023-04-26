import 'package:bloc/bloc.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/day_hour_doses_failures.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/day_hours_doses.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/i_day_hour_doses_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_hours_dose_actor_event.dart';
part 'day_hours_dose_actor_state.dart';
part 'day_hours_dose_actor_bloc.freezed.dart';

class DayHoursDoseActorBloc
    extends Bloc<DayHoursDoseActorEvent, DayHoursDoseActorState> {
  final IDayHoursDoseRepository _dayHoursDoseRepository;
  DayHoursDoseActorBloc(this._dayHoursDoseRepository) : super(_Initial()) {
    on<_DeleteDayHoursDose>((event, emit) async {
      emit(const DayHoursDoseActorState.actionInProgress());
      final failureOrDeleted =
          await _dayHoursDoseRepository.delete(event.dayHoursDose);
      emit(failureOrDeleted.fold((f) => DayHoursDoseActorState.deleteFailure(f),
          (_) => const DayHoursDoseActorState.deleteSuccess()));
    });
    // on<_FakeDayHoursDose>((event, emit) async {
    //   emit(const DayHoursDoseActorState.actionInProgress());
    //   final failureOrDeleted = await _dayHoursDoseRepository.createFake();
    //   emit(failureOrDeleted.fold((f) => DayHoursDoseActorState.fakeFailure(f),
    //       (_) => const DayHoursDoseActorState.fakeSuccess()));
    // });
  }
}
