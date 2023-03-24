import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_bloc.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/time_interval.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/medicine/dose/dose.dart';
import 'package:expedientes_clinicos/domain/medicine/dose/dose_failures.dart';
import 'package:expedientes_clinicos/domain/medicine/dose/i_dose_repository.dart';
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
    on<_FrequencyChanged>((event, emit) {
      emit(state.copyWith(
          dose: state.dose.copyWith(frequency: event.frequency)));
    });
    on<_DurationChanged>((event, emit) {
      emit(state.copyWith(dose: state.dose.copyWith(duration: event.duration)));
    });
    on<_AmountChanged>((event, emit) {
      emit(state.copyWith(
          dose: state.dose.copyWith(amount: NonNegInt(event.amount))));
    });
    on<_Saved>((event, emit) async {
      Either<DoseFailures, Unit>? failureOrSuccess;
      emit(state.copyWith(isSaving: true, saveFailureOrSuccessOption: none()));
      if (state.dose.failureOption.isNone()) {
        failureOrSuccess = state.isUpdating
            ? await _doseRepository.update(state.dose)
            : await _doseRepository.create(state.dose);
      } else {
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
