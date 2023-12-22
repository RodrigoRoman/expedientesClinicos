import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/label_double_amount/i_label_double_amount_repository.dart';
import 'package:expedientes_clinicos/domain/core/label_double_amount/label_double_amount.dart';
import 'package:expedientes_clinicos/domain/core/label_double_amount/label_double_amount_failure.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'label_double_amount_form_event.dart';
part 'label_double_amount_form_state.dart';
part 'label_double_amount_form_bloc.freezed.dart';

@injectable
class LabelDoubleAmountFormBloc
    extends Bloc<LabelDoubleAmountFormEvent, LabelDoubleAmountFormState> {
  final ILabelDoubleAmountRepository _labelDoubleAmountRepository;
  LabelDoubleAmountFormBloc(this._labelDoubleAmountRepository)
      : super(LabelDoubleAmountFormState.initial()) {
    on<_Initialized>((event, emit) {
      emit(event.initialLabelDoubleAmountOption.fold(
          () => state.copyWith(
              labelDoubleAmount: LabelDoubleAmount.empty(),
              showErrorMessages: false,
              isSaving: false,
              isUpdating: false,
              saveFailureOrSuccessOption: none()),
          (initialLabelDoubleAmount) => state.copyWith(
              labelDoubleAmount: initialLabelDoubleAmount, isUpdating: true)));
    });
    on<_LabelChanged>((event, emit) {
      emit(state.copyWith(
          labelDoubleAmount:
              state.labelDoubleAmount.copyWith(label: FullName(event.label))));
    });
    on<_AmountChanged>((event, emit) {
      emit(state.copyWith(
          labelDoubleAmount: state.labelDoubleAmount
              .copyWith(amount: NonNegDouble(event.amount))));
    });
    on<_Saved>((event, emit) async {
      Either<LabelDoubleAmountFailure, Unit>? failureOrSuccess;
      emit(state.copyWith(
          isSaving: true,
          showErrorMessages: true,
          saveFailureOrSuccessOption: none()));
      if (state.labelDoubleAmount.failureOption.isNone()) {
        failureOrSuccess = state.isUpdating
            ? await _labelDoubleAmountRepository.update(state.labelDoubleAmount)
            : await _labelDoubleAmountRepository
                .create(state.labelDoubleAmount);
      } else {
        failureOrSuccess = const Left(LabelDoubleAmountFailure.unexpected());
      }
      emit(state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess)));
      emit(state.copyWith(
          labelDoubleAmount: LabelDoubleAmount.empty(),
          showErrorMessages: false,
          isSaving: false,
          isUpdating: false,
          saveFailureOrSuccessOption: none()));
    });
  }
}
