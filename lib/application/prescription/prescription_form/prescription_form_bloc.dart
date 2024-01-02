import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication.dart';
import 'package:expedientes_clinicos/domain/core/label_double_amount/label_double_amount.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/medicine/branded_medicine/branded_medicine.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose.dart';
import 'package:expedientes_clinicos/domain/prescription/i_prescription_repository.dart';
import 'package:expedientes_clinicos/domain/prescription/prescription.dart';
import 'package:expedientes_clinicos/domain/prescription/prescription_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'prescription_form_event.dart';
part 'prescription_form_state.dart';
part 'prescription_form_bloc.freezed.dart';

@injectable
class PrescriptionFormBloc
    extends Bloc<PrescriptionFormEvent, PrescriptionFormState> {
  final IPrescriptionRepository _iPrescriptionRepository;
  PrescriptionFormBloc(this._iPrescriptionRepository)
      : super(PrescriptionFormState.initial()) {
    on<_Initialized>((event, emit) {
      emit(event.prescription.fold(
          () => state.copyWith(
              prescription: Prescription.empty(),
              showErrorMessages: false,
              isSaving: false,
              isUpdating: false,
              saveFailureOrSuccessOption: none()),
          (initialPrescription) => state.copyWith(
              prescription: initialPrescription, isUpdating: true)));
    });
    on<_MedicineChanged>((event, emit) {
      emit(state.copyWith(
          prescription: state.prescription.copyWith(medicine: event.medicine),
          saveFailureOrSuccessOption: none()));
    });
    on<_DoseChanged>((event, emit) {
      emit(state.copyWith(
          prescription: state.prescription.copyWith(dose: event.dose),
          saveFailureOrSuccessOption: none()));
    });
    on<_DoseAmountChanged>((event, emit) {
      emit(state.copyWith(
          prescription:
              state.prescription.copyWith(doseAmount: event.labelDoubleAmount),
          saveFailureOrSuccessOption: none()));
    });
    on<_IndicationsChanged>((event, emit) => emit(state.copyWith(
        prescription: state.prescription
            .copyWith(indications: List3(KtList.from(event.listIndications))),
        saveFailureOrSuccessOption: none())));
    on<_Saved>((event, emit) async {
      Either<PrescriptionFailures, Unit>? failureOrSuccess;
      emit(state.copyWith(isSaving: true, saveFailureOrSuccessOption: none()));
      if (state.prescription.failureOption.isNone()) {
        failureOrSuccess = state.isUpdating
            ? await _iPrescriptionRepository.update(state.prescription)
            : await _iPrescriptionRepository.create(state.prescription);
      }
      emit(state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess)));
      emit(state.copyWith(
          prescription: Prescription.empty(),
          showErrorMessages: false,
          isSaving: false,
          isUpdating: false,
          saveFailureOrSuccessOption: none()));
    });
  }
}
