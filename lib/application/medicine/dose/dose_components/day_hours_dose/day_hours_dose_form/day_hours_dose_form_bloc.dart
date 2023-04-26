import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/day_hour_doses_failures.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/day_hours_doses.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/i_day_hour_doses_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'day_hours_dose_form_event.dart';
part 'day_hours_dose_form_state.dart';
part 'day_hours_dose_form_bloc.freezed.dart';

@injectable
class DayHoursDoseFormBloc
    extends Bloc<DayHoursDoseFormEvent, DayHoursDoseFormState> {
  final IDayHoursDoseRepository _dayHoursdoseRepository;
  DayHoursDoseFormBloc(this._dayHoursdoseRepository)
      : super(DayHoursDoseFormState.initial()) {
    on<_Initialized>((event, emit) {
      emit(event.initialDayHourDoseOption.fold(
          () => state.copyWith(
              dayHoursDose: DayHoursDose.empty(),
              showErrorMessages: false,
              isSaving: false,
              isUpdating: false,
              saveFailureOrSuccessOption: none()),
          (initialDayHoursDose) => state.copyWith(
              dayHoursDose: initialDayHoursDose, isUpdating: true)));
    });
    on<_LabelChanged>((event, emit) {
      emit(state.copyWith(
          dayHoursDose:
              state.dayHoursDose.copyWith(label: FullName(event.label))));
    });
    on<_ListHoursChanged>((event, emit) {
      emit(state.copyWith(
          dayHoursDose: state.dayHoursDose
              .copyWith(doseHours: List3(KtList.from(event.listHours)))));
    });
    on<_Saved>((event, emit) async {
      Either<DayHoursDoseFailures, Unit>? failureOrSuccess;
      emit(state.copyWith(isSaving: true, saveFailureOrSuccessOption: none()));
      if (state.dayHoursDose.failureOption.isNone()) {
        failureOrSuccess = state.isUpdating
            ? await _dayHoursdoseRepository.update(state.dayHoursDose)
            : await _dayHoursdoseRepository.create(state.dayHoursDose);
      } else {
        failureOrSuccess = const Left(DayHoursDoseFailures.unexpected());
      }
      emit(state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess)));
      emit(state.copyWith(
          dayHoursDose: DayHoursDose.empty(),
          showErrorMessages: false,
          isSaving: false,
          isUpdating: false,
          saveFailureOrSuccessOption: none()));
    });
  }
}
