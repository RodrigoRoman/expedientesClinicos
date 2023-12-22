import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/generic_medicine.dart';
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/generic_medicine_failures.dart';
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/i_generic_medicine_repository.dart';
import 'package:flutter/foundation.dart' hide Category;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'generic_medicine_form_event.dart';
part 'generic_medicine_form_state.dart';
part 'generic_medicine_form_bloc.freezed.dart';

@injectable
class GenericMedicineFormBloc
    extends Bloc<GenericMedicineFormEvent, GenericMedicineFormState> {
  final IGenericMedicineRepository _medicineRepository;

  GenericMedicineFormBloc(this._medicineRepository)
      : super(GenericMedicineFormState.initial()) {
    //Auxiliar function for validating the form
    bool _validateMedicine(GenericMedicine medicine) {
      return state.medicine.genericName.value.isRight() &&
          !state.medicine.measureUnit.isEmpty &&
          state.medicine.amountMeasureUnit.value.isRight() &&
          !state.medicine.administrationRoute.isEmpty &&
          !state.medicine.pharmaceuticalForm.isEmpty &&
          state.medicine.amountPerPackage.value.isRight() &&
          !state.medicine.category.isEmpty;
    }

    on<_Initialized>((event, emit) {
      emit(event.intialMedicineOption.fold(
          () => state.copyWith(
              medicine: GenericMedicine.empty(),
              showErrorMessages: false,
              isSaving: false,
              isUpdating: false,
              saveFailureOrSuccessOption: none()),
          (initialmedicine) =>
              state.copyWith(medicine: initialmedicine, isUpdating: true)));
    });
    on<_GenericNameChanged>((event, emit) {
      emit(state.copyWith(
          isValid: _validateMedicine(state.medicine),
          medicine: state.medicine
              .copyWith(genericName: FullName(event.genericName))));
    });
    on<_MeasureUnitChanged>((event, emit) {
      emit(state.copyWith(
          isValid: _validateMedicine(state.medicine),
          medicine: state.medicine.copyWith(measureUnit: event.measureUnit)));
    });
    on<_AmountMeasureChanged>((event, emit) {
      emit(state.copyWith(
          isValid: _validateMedicine(state.medicine),
          medicine: state.medicine
              .copyWith(amountMeasureUnit: NonNegDouble(event.amountMeasure))));
    });
    on<_AdministrationRouteChanged>((event, emit) {
      emit(state.copyWith(
          isValid: _validateMedicine(state.medicine),
          medicine: state.medicine
              .copyWith(administrationRoute: event.administrationRoute)));
    });
    on<_PharmaceuticalFormChanged>((event, emit) {
      emit(state.copyWith(
          isValid: _validateMedicine(state.medicine),
          medicine: state.medicine
              .copyWith(pharmaceuticalForm: event.pharmaceuticalForm)));
    });
    on<_AmountPerPackageChanged>((event, emit) {
      emit(state.copyWith(
          isValid: _validateMedicine(state.medicine),
          medicine: state.medicine
              .copyWith(amountPerPackage: NonNegInt(event.amountPerPackage))));
    });
    on<_CategoryChanged>((event, emit) {
      emit(state.copyWith(
          isValid: _validateMedicine(state.medicine),
          medicine: state.medicine.copyWith(category: event.category)));
    });
    on<_ControlledChanged>((event, emit) {
      emit(state.copyWith(
          medicine:
              state.medicine.copyWith(controlled: !state.medicine.controlled)));
    });
    on<_Saved>((event, emit) async {
      Either<GenericMedicineFailures, Unit>? failureOrSuccess;
      emit(state.copyWith(isSaving: true, saveFailureOrSuccessOption: none()));
      if (state.medicine.failureOption.isNone()) {
        failureOrSuccess = state.isUpdating
            ? await _medicineRepository.update(state.medicine)
            : await _medicineRepository.create(state.medicine);
      } else {
        failureOrSuccess = const Left(GenericMedicineFailures.unexpected());
      }
      emit(state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess)));
      emit(state.copyWith(
          medicine: GenericMedicine.empty(),
          showErrorMessages: false,
          isSaving: false,
          isUpdating: false,
          saveFailureOrSuccessOption: none()));
    });
  }
}
