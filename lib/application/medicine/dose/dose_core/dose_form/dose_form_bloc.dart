import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/time_interval.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/day_hours_doses.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/dose_amount.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_failures.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/i_dose_repository.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/week_days_dose.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart' hide TimeInterval;

part 'dose_form_event.dart';
part 'dose_form_state.dart';
part 'dose_form_bloc.freezed.dart';

@injectable
class DoseFormBloc extends Bloc<DoseFormEvent, DoseFormState> {
  final IDoseRepository _doseRepository;
  DoseFormBloc(this._doseRepository) : super(DoseFormState.initial()) {
    on<_Initialized>((event, emit) {
      emit(event.intialMedicineOption.fold(
          () => state.copyWith(
              dose: Dose.empty(),
              showErrorMessages: false,
              isSaving: false,
              isUpdating: false,
              saveFailureOrSuccessOption: none()),
          (initialmedicine) =>
              state.copyWith(dose: initialmedicine, isUpdating: true)));
    });
    on<_DayHoursDoseChanged>((event, emit) {
      emit(state.copyWith(
          dose: state.dose.copyWith(dayHoursDose: event.dayHoursDose)));
    });
    on<_DurationChanged>((event, emit) {
      emit(state.copyWith(dose: state.dose.copyWith(duration: event.duration)));
    });
    on<_WeekDaysDoseChanged>((event, emit) {
      emit(state.copyWith(
          dose: state.dose.copyWith(weekDays: event.weekDaysDose)));
    });
    on<_LabelChanged>((event, emit) {
      emit(state.copyWith(
          dose: state.dose.copyWith(label: FullName(event.label))));
    });
    on<_Saved>((event, emit) async {
      Either<DoseFailures, Unit>? failureOrSuccess;
      emit(state.copyWith(isSaving: true, saveFailureOrSuccessOption: none()));
      if (state.dose.failureOption.isNone()) {
        failureOrSuccess = state.isUpdating
            ? await _doseRepository.update(state.dose)
            : await _doseRepository.create(state.dose);
      } else {
        print('inside failureOrOption not none');
        print(state.dose);
        failureOrSuccess = const Left(DoseFailures.unexpected());
      }
      emit(state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess)));
      emit(state.copyWith(
          dose: Dose.empty(),
          showErrorMessages: false,
          isSaving: false,
          isUpdating: false,
          saveFailureOrSuccessOption: none()));
    });
  }
}
