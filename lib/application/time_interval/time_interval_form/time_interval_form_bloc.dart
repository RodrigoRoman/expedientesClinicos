import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/i_time_interval_repository.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/time_interval.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/time_interval_failure.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'time_interval_form_event.dart';
part 'time_interval_form_state.dart';
part 'time_interval_form_bloc.freezed.dart';

@injectable
class TimeIntervalFormBloc
    extends Bloc<TimeIntervalFormEvent, TimeIntervalFormState> {
  final ITimeIntervalRepository _iTimeIntervalRepository;
  TimeIntervalFormBloc(this._iTimeIntervalRepository)
      : super(TimeIntervalFormState.initial()) {
    on<_Initialized>((event, emit) {
      emit(event.intitialTimeInterval.fold(
          () => state.copyWith(
              timeInterval: TimeInterval.empty(),
              showErrorMessages: false,
              isSaving: false,
              isUpdating: false,
              saveFailureOrSuccessOption: none()),
          (intitialTimeInterval) => state.copyWith(
              timeInterval: intitialTimeInterval, isUpdating: true)));
    });
    on<_IntervalNameChanged>((event, emit) {
      emit(state.copyWith(
          timeInterval:
              state.timeInterval.copyWith(label: FullName(event.label)),
          saveFailureOrSuccessOption: none()));
    });
    on<_IntervalDurationChanged>((event, emit) {
      emit(state.copyWith(
          timeInterval: state.timeInterval
              .copyWith(timeDuration: TimeDuration(event.intervalDuration)),
          saveFailureOrSuccessOption: none()));
    });
    on<_MonthsChanged>((event, emit) {
      var updatedTimeInterval = state.timeInterval.copyWith(
        timeDuration: TimeDuration(
            TimeInterval.createDurationFromMonthsWeeksDays(
                event.months, state.weeks, state.days)),
      );
      emit(state.copyWith(
          months: event.months, timeInterval: updatedTimeInterval));
    });
    on<_WeeksChanged>((event, emit) {
      var updatedTimeInterval = state.timeInterval.copyWith(
        timeDuration: TimeDuration(
            TimeInterval.createDurationFromMonthsWeeksDays(
                state.months, event.weeks, state.days)),
      );
      emit(state.copyWith(
          weeks: event.weeks, timeInterval: updatedTimeInterval));
    });
    on<_DaysChanged>((event, emit) {
      var updatedTimeInterval = state.timeInterval.copyWith(
        timeDuration: TimeDuration(
            TimeInterval.createDurationFromMonthsWeeksDays(
                state.months, state.weeks, event.days)),
      );
      emit(state.copyWith(days: event.days, timeInterval: updatedTimeInterval));
    });
    on<_Saved>((event, emit) async {
      Either<TimeIntervalFailure, Unit>? failureOrSuccess;
      emit(state.copyWith(isSaving: true, saveFailureOrSuccessOption: none()));
      if (state.timeInterval.failureOption.isNone()) {
        failureOrSuccess = state.isUpdating
            ? await _iTimeIntervalRepository.update(state.timeInterval)
            : await _iTimeIntervalRepository.create(state.timeInterval);
      }
      emit(state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess)));
      emit(state.copyWith(
          timeInterval: TimeInterval.empty(),
          showErrorMessages: false,
          isSaving: false,
          isUpdating: false,
          saveFailureOrSuccessOption: none()));
    });
  }
}
