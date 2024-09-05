import 'package:dartz/dartz.dart';
import 'package:bloc/bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/dynamic_form_failures.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/filed_types/field_types.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/form_element.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/form_row.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/layout_percent.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_section.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/i_dynamic_repository.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/section_types.dart';
import 'package:flutter/foundation.dart' hide Category;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'dynamic_form_form_bloc.freezed.dart';
part 'dynamic_form_form_event.dart';
part 'dynamic_form_form_state.dart';

@injectable
class DynamicFormFormBloc
    extends Bloc<DynamicFormFormEvent, DynamicFormFormState> {
  final IDynamicFormRepository _dynamicFormRepository;
  DynamicFormFormBloc(this._dynamicFormRepository)
      : super(DynamicFormFormState.initial()) {
    on<_Initialized>((event, emit) {
      emit(event.intialDynamicFormOption.fold(
          () => state.copyWith(
              formSection: FormSection.empty(),
              showErrorMessages: false,
              isSaving: false,
              isUpdating: false,
              saveFailureOrSuccessOption: none()),
          (initialCategory) =>
              state.copyWith(formSection: initialCategory, isUpdating: false)));
    });
    on<_SectionNameChanged>((event, emit) {
      emit(state.copyWith(
          formSection: state.formSection
              .copyWith(sectionName: NonEmptyString(event.sectionName))));
    });

// Helper function to update form element value
    dynamic _updateFormElementValue(FieldType fieldType, dynamic newValue) {
      switch (fieldType) {
        case FieldType.number:
          return newValue as num;
        case FieldType.date:
          return newValue as DateTime;
        case FieldType.range:
          return newValue as List<double>;
        case FieldType.time:
          return newValue as TimeDuration;
        case FieldType.text:
          return newValue as String;
        case FieldType.image:
          return newValue as String;
        default:
          return null; // Handle unexpected field types safely
      }
    }

    on<_ValueFormElementChanged>((event, emit) {
      emit(state.copyWith(
        isUpdating: true,
        formSection: state.formSection.copyWith(
          formRows: state.formSection.formRows.value.fold(
            (ifLeft) => List3(KtList.empty()), // Handle empty list case
            (formRows) {
              // Create a mutable copy of formRows
              final mutableFormRows = formRows.toMutableList();

              // Update the specific row
              final FormRow rowToBeUpdated = mutableFormRows[event.rowIndex];
              final updatedFormElements =
                  rowToBeUpdated.formElements.value.fold(
                (ifElementError) => KtList.from([FormElement.empty()]),
                (formElements) {
                  // Map over the form elements and update the one that matches
                  return formElements.map((formElement) {
                    if (event.formElement.columnNum?.getOrCrash() ==
                        formElement.columnNum?.getOrCrash()) {
                      // Update the value based on the field type
                      return formElement.copyWith(
                        value: _updateFormElementValue(
                          formElement.fieldType.getOrCrash(),
                          event.newValue,
                        ),
                      );
                    } else {
                      return formElement;
                    }
                  });
                },
              );

              // Create a new row with updated form elements
              final updatedRow = rowToBeUpdated.copyWith(
                formElements: List3(updatedFormElements),
              );

              // Replace the updated row in the mutable list of rows
              mutableFormRows[event.rowIndex] = updatedRow;

              // Return the updated list of rows as an immutable list
              return List3(mutableFormRows);
            },
          ),
        ),
      ));
    });

    on<_SectionTypeChanged>((event, emit) {
      emit(state.copyWith(
          formSection: state.formSection
              .copyWith(sectionType: NonEmptySectionType(event.sectionType))));
    });
    on<_FormRowsChanged>((event, emit) {
      emit(state.copyWith(
          formSection: state.formSection
              .copyWith(formRows: List3(KtList.from(event.formRows)))));
    });
    on<_LayoutYPercentChanged>((event, emit) {
      emit(state.copyWith(
          formSection: state.formSection.copyWith(
              layoutYPercent: List3(KtList.from(event.layoutPercent)))));
    });
    on<_CategoryChanged>((event, emit) {
      emit(state.copyWith(
          formSection: state.formSection.copyWith(category: event.category)));
    });

    on<_Saved>((event, emit) async {
      try {
        Either<DynamicFormFailures, FormSection>? failureOrSuccess;
        print("saved 1");
        emit(
            state.copyWith(isSaving: true, saveFailureOrSuccessOption: none()));
        if (state.formSection.failureOption.isNone()) {
          print("saved 2");

          failureOrSuccess = state.isUpdating
              ? await _dynamicFormRepository.update(state.formSection)
              : await _dynamicFormRepository.create(state.formSection);
        } else {
          failureOrSuccess = const Left(DynamicFormFailures.unableToCreate());
        }
        print("saved 3");

        emit(state.copyWith(
            formSection:
                failureOrSuccess.fold((l) => FormSection.empty(), (r) => r),
            isSaving: false,
            showErrorMessages: true,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess)));
        print("saved 4");

        emit(state.copyWith(
            formSection: FormSection.empty(),
            showErrorMessages: false,
            isSaving: false,
            isUpdating: false,
            saveFailureOrSuccessOption: none()));
      } catch (e) {
        print('error from bloc');
        print(e);
      }
    });
  }
}
