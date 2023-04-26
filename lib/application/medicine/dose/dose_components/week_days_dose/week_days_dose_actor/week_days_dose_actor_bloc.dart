import 'package:bloc/bloc.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/i_week_doses_repository.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/week_days_dose.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/week_days_dose_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'week_days_dose_actor_event.dart';
part 'week_days_dose_actor_state.dart';
part 'week_days_dose_actor_bloc.freezed.dart';

class WeekDaysDoseActorBloc
    extends Bloc<WeekDaysDoseActorEvent, WeekDaysDoseActorState> {
  final IWeekDaysDoseRepository _weekDaysDoseRepository;
  WeekDaysDoseActorBloc(this._weekDaysDoseRepository) : super(_Initial()) {
    on<_DeleteWeekDays>((event, emit) async {
      emit(const WeekDaysDoseActorState.actionInProgress());
      final failureOrDeleted =
          await _weekDaysDoseRepository.delete(event.weekDaysDose);
      emit(failureOrDeleted.fold((f) => WeekDaysDoseActorState.deleteFailure(f),
          (_) => const WeekDaysDoseActorState.deleteSuccess()));
    });
    // on<_FakeDayHoursDose>((event, emit) async {
    //   emit(const WeekDaysDoseActorState.actionInProgress());
    //   final failureOrDeleted = await _weekDaysDoseRepository.createFake();
    //   emit(failureOrDeleted.fold((f) => DayHoursDoseActorState.fakeFailure(f),
    //       (_) => const DayHoursDoseActorState.fakeSuccess()));
    // });
  }
}
