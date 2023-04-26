import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/i_week_doses_repository.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/week_days_dose.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/week_days_dose_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'week_days_dose_form_event.dart';
part 'week_days_dose_form_state.dart';
part 'week_days_dose_form_bloc.freezed.dart';

@injectable
class WeekDaysDoseFormBloc
    extends Bloc<WeekDaysDoseFormEvent, WeekDaysDoseFormState> {
  final IWeekDaysDoseRepository _weekDaysDoseRepository;
  WeekDaysDoseFormBloc(this._weekDaysDoseRepository)
      : super(WeekDaysDoseFormState.initial()) {
    on<_Initialized>((event, emit) {
      emit(event.initialWeekDaysDoseOption.fold(
          () => state.copyWith(
              weekDays: WeekDaysDose.empty(),
              showErrorMessages: false,
              isSaving: false,
              isUpdating: false,
              saveFailureOrSuccessOption: none()),
          (initialWeekDaysDose) =>
              state.copyWith(weekDays: initialWeekDaysDose, isUpdating: true)));
    });
    on<_LabelChanged>((event, emit) {
      emit(state.copyWith(
          weekDays: state.weekDays.copyWith(label: FullName(event.label))));
    });
    on<_WeekDaysChanged>((event, emit) {
      emit(state.copyWith(
          weekDays: state.weekDays.copyWith(
              weekDays: List3(
                  event.weekDays.map((e) => NonNegInt(e)).toImmutableList()))));
    });
    on<_Saved>((event, emit) async {
      Either<WeekDaysDoseFailures, Unit>? failureOrSuccess;
      emit(state.copyWith(isSaving: true, saveFailureOrSuccessOption: none()));
      if (state.weekDays.failureOption.isNone()) {
        failureOrSuccess = state.isUpdating
            ? await _weekDaysDoseRepository.update(state.weekDays)
            : await _weekDaysDoseRepository.create(state.weekDays);
      } else {
        failureOrSuccess = const Left(WeekDaysDoseFailures.unexpected());
      }
      emit(state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess)));
      emit(state.copyWith(
          weekDays: WeekDaysDose.empty(),
          showErrorMessages: false,
          isSaving: false,
          isUpdating: false,
          saveFailureOrSuccessOption: none()));
    });
  }
}
