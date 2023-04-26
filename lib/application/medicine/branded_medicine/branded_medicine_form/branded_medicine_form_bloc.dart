import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/medicine/branded_medicine/branded_medicine.dart';
import 'package:expedientes_clinicos/domain/medicine/branded_medicine/branded_medicine_failures.dart';
import 'package:expedientes_clinicos/domain/medicine/branded_medicine/i_branded_medicine_repository.dart';
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/generic_medicine.dart';
import 'package:flutter/foundation.dart' hide Category;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'branded_medicine_form_event.dart';
part 'branded_medicine_form_state.dart';
part 'branded_medicine_form_bloc.freezed.dart';

@injectable
class BrandedMedicineFormBloc
    extends Bloc<BrandedMedicineFormEvent, BrandedMedicineFormState> {
  final IBrandedMedicineRepository _medicineRepository;
  BrandedMedicineFormBloc(this._medicineRepository)
      : super(BrandedMedicineFormState.initial()) {
    on<_Initialized>((event, emit) {
      emit(event.intialMedicineOption.fold(
          () => state.copyWith(
              medicine: BrandedMedicine.empty(),
              showErrorMessages: false,
              isSaving: false,
              isUpdating: false,
              saveFailureOrSuccessOption: none()),
          (initialmedicine) =>
              state.copyWith(medicine: initialmedicine, isUpdating: true)));
    });
    on<_ComercialNameChanged>((event, emit) {
      emit(state.copyWith(
          medicine: state.medicine
              .copyWith(comercialName: FullName(event.comercialName))));
    });
    on<_ImageUrlChanged>((event, emit) {
      emit(state.copyWith(
          medicine:
              state.medicine.copyWith(imageURL: ImageURL(event.imageURL))));
    });
    on<_OptimumChanged>((event, emit) {
      emit(state.copyWith(
          medicine:
              state.medicine.copyWith(optimum: NonNegInt(event.optimum))));
    });
    on<_ExistenceChanged>((event, emit) {
      emit(state.copyWith(
          medicine:
              state.medicine.copyWith(existence: NonNegInt(event.existence))));
    });
    on<_GenericMedicineChanged>((event, emit) {
      emit(state.copyWith(
          medicine:
              state.medicine.copyWith(genericMedicine: event.genericMedicine)));
    });
    on<_Saved>((event, emit) async {
      Either<BrandedMedicineFailures, BrandedMedicine>? failureOrSuccess;
      emit(state.copyWith(isSaving: true, saveFailureOrSuccessOption: none()));
      if (state.medicine.failureOption.isNone()) {
        failureOrSuccess = state.isUpdating
            ? await _medicineRepository.update(state.medicine)
            : await _medicineRepository.create(state.medicine);
      } else {
        failureOrSuccess = const Left(BrandedMedicineFailures.unexpected());
      }
      emit(state.copyWith(
          medicine:
              failureOrSuccess.fold((l) => BrandedMedicine.empty(), (r) => r),
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess)));
      emit(state.copyWith(
          medicine: BrandedMedicine.empty(),
          showErrorMessages: false,
          isSaving: false,
          isUpdating: false,
          saveFailureOrSuccessOption: none()));
    });
  }
}
