import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/medicine/i_medicine_repository.dart';
import 'package:expedientes_clinicos/domain/medicine/medicine.dart';
import 'package:expedientes_clinicos/domain/medicine/medicine_failures.dart';
import 'package:flutter/foundation.dart' hide Category;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'medicine_form_event.dart';
part 'medicine_form_state.dart';
part 'medicine_form_bloc.freezed.dart';

class MedicineFormBloc extends Bloc<MedicineFormEvent, MedicineFormState> {
  final IMedicineRepository _medicineRepository;
  MedicineFormBloc(this._medicineRepository)
      : super(MedicineFormState.initial()) {
    on<_Initialized>((event, emit) {
      emit(event.intialMedicineOption.fold(
          () => state.copyWith(
              medicine: Medicine.empty(),
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
    on<_GenericNameChanged>((event, emit) {
      emit(state.copyWith(
          medicine: state.medicine
              .copyWith(genericName: FullName(event.genericName))));
    });
    on<_MeasureUnitChanged>((event, emit) {
      emit(state.copyWith(
          medicine: state.medicine.copyWith(measureUnit: event.measureUnit)));
    });
    on<_AmountMeasureChanged>((event, emit) {
      emit(state.copyWith(
          medicine: state.medicine
              .copyWith(amountMeasureUnit: NonNegDouble(event.amountMeasure))));
    });
    on<_AdministrationRouteChanged>((event, emit) {
      emit(state.copyWith(
          medicine: state.medicine
              .copyWith(administrationRoute: event.administrationRoute)));
    });
    on<_PharmaceuticalFormChanged>((event, emit) {
      emit(state.copyWith(
          medicine: state.medicine
              .copyWith(pharmaceuticalForm: event.pharmaceuticalForm)));
    });
    on<_ImageUrlChanged>((event, emit) {
      emit(state.copyWith(
          medicine:
              state.medicine.copyWith(imageURL: ImageURL(event.imageURL))));
    });
    on<_AmountPerPackageChanged>((event, emit) {
      emit(state.copyWith(
          medicine: state.medicine
              .copyWith(amountPerPackage: NonNegInt(event.amountPerPackage))));
    });
    on<_CategoryChanged>((event, emit) {
      emit(state.copyWith(
          medicine: state.medicine.copyWith(category: event.category)));
    });
    on<_ControlledChanged>((event, emit) {
      emit(state.copyWith(
          medicine: state.medicine.copyWith(controlled: event.controlled)));
    });
    on<_Saved>((event, emit) async {
      Either<MedicineFailures, Unit>? failureOrSuccess;
      emit(state.copyWith(isSaving: true, saveFailureOrSuccessOption: none()));
      if (state.medicine.failureOption.isNone()) {
        failureOrSuccess = state.isUpdating
            ? await _medicineRepository.update(state.medicine)
            : await _medicineRepository.create(state.medicine);
      } else {
        failureOrSuccess = const Left(MedicineFailures.unexpected());
      }
      emit(state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess)));
      emit(state.copyWith(
          medicine: Medicine.empty(),
          showErrorMessages: false,
          isSaving: false,
          isUpdating: false,
          saveFailureOrSuccessOption: none()));
    });
  }
}
