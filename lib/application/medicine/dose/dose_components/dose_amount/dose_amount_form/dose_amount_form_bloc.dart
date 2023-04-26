import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/dose_amount.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/dose_amount_failures.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/i_dose_amount_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dose_amount_form_event.dart';
part 'dose_amount_form_state.dart';
part 'dose_amount_form_bloc.freezed.dart';

@injectable
class DoseAmountFormBloc
    extends Bloc<DoseAmountFormEvent, DoseAmountFormState> {
  final IDoseAmountRepository _doseAmountRepository;
  DoseAmountFormBloc(this._doseAmountRepository)
      : super(DoseAmountFormState.initial()) {
    on<_Initialized>((event, emit) {
      emit(event.initialDoseAmountOption.fold(
          () => state.copyWith(
              doseAmount: DoseAmount.empty(),
              showErrorMessages: false,
              isSaving: false,
              isUpdating: false,
              saveFailureOrSuccessOption: none()),
          (initialDoseAmount) =>
              state.copyWith(doseAmount: initialDoseAmount, isUpdating: true)));
    });
    on<_LabelChanged>((event, emit) {
      emit(state.copyWith(
          doseAmount: state.doseAmount.copyWith(label: FullName(event.label))));
    });
    on<_AmountChanged>((event, emit) {
      emit(state.copyWith(
          doseAmount:
              state.doseAmount.copyWith(amount: NonNegDouble(event.amount))));
    });
    on<_Saved>((event, emit) async {
      Either<DoseAmountFailures, Unit>? failureOrSuccess;
      emit(state.copyWith(
          isSaving: true,
          showErrorMessages: true,
          saveFailureOrSuccessOption: none()));
      if (state.doseAmount.failureOption.isNone()) {
        failureOrSuccess = state.isUpdating
            ? await _doseAmountRepository.update(state.doseAmount)
            : await _doseAmountRepository.create(state.doseAmount);
      } else {
        failureOrSuccess = const Left(DoseAmountFailures.unexpected());
      }
      emit(state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess)));
      emit(state.copyWith(
          doseAmount: DoseAmount.empty(),
          showErrorMessages: false,
          isSaving: false,
          isUpdating: false,
          saveFailureOrSuccessOption: none()));
    });
  }
}
