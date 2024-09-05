import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/filed_types/field_types.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/form_element.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/form_row.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/layout_percent.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'dynamic_form_section_components_event.dart';
part 'dynamic_form_section_components_state.dart';
part 'dynamic_form_section_components_bloc.freezed.dart';

class DynamicFormSectionComponentsBloc extends Bloc<
    DynamicFormSectionComponentsEvent, DynamicFormSectionComponentsState> {
  DynamicFormSectionComponentsBloc()
      : super(DynamicFormSectionComponentsState.initial()) {
    on<_Initialized>((event, emit) {
      emit(state.copyWith(
          isUpdating: true,
          listRows: event.listRows,
          layoutYPercent: event.layoutYPercent));
    });

    on<_AddFormRow>((event, emit) {
      emit(state.copyWith(
        isUpdating: true,
        listRows: state.listRows.value.fold(
          (ifLeft) => List3(KtList.empty()),
          (ifRight) {
            // Convert the immutable list to a mutable list
            final mutableFormRows = ifRight.toMutableList();
            int toAddIndex = max(0, event.rowIndex);

            // Create a new FormRow wrapping the FormElement
            final newFormRow = FormRow(
              rowNum: NonNegInt(toAddIndex), // Row number will be adjusted
              layoutXPercent:
                  List3(KtList.empty()), // Adjust as per your layout logic
              formElements: List3(KtList.of(event.formElement)),
            );

            // Insert the new form row at the specified index
            mutableFormRows.addAt(toAddIndex, newFormRow);

            // Update the rowNum for all rows after the inserted row
            final updatedRows =
                mutableFormRows.mapIndexed((i, FormRow formRow) {
              return formRow.copyWith(rowNum: NonNegInt(i));
            }).toList();

            // Convert back to List3 and return
            return List3(updatedRows);
          },
        ),
      ));
    });

    on<_RemoveFormRow>((event, emit) {
      emit(state.copyWith(
          isUpdating: true,
          listRows: state.listRows.value.fold(
              (ifLeft) => List3(KtList.empty()),
              (ifRight) => List3(
                  KtList.from(ifRight.asList()..remove(event.indexRemoved))))));
    });

    on<_UpdateYLayout>((event, emit) {
      emit(state.copyWith(
          isUpdating: true,
          layoutYPercent: List3(KtList.from(event.newPercents))));
    });

    on<_AddFormElement>((event, emit) {
      emit(state.copyWith(
        isUpdating: true,
        listRows: state.listRows.value.fold(
          (ifLeft) => List3(KtList.empty()),
          (ifRow) {
            return List3(KtList.from(ifRow.mapIndexed((idx, element) {
              if (idx == event.rowIndex) {
                int rowElementNumber = element.formElements.value
                    .fold((ifLeft) => 0, (ifRight) => ifRight.size + 1);

                return element.copyWith(
                  formElements: element.formElements.value.fold(
                    (ifLeft) => List3(KtList.empty()),
                    (ifFormElement) {
                      final mutableFormElements = ifFormElement.toMutableList();
                      final addColIdx = max(event.columnIndex, 0);

                      if (addColIdx == mutableFormElements.size) {
                        // Add to the end of the list and set columnNum
                        mutableFormElements.add(
                          event.formElement.copyWith(
                            columnNum: NonNegInt(addColIdx),
                          ),
                        );
                      } else {
                        // Insert at the specified index and set columnNum
                        mutableFormElements.addAt(
                          addColIdx,
                          event.formElement.copyWith(
                            columnNum: NonNegInt(addColIdx),
                          ),
                        );
                      }

                      // Update columnNum for all elements in the row
                      final updatedFormElements =
                          mutableFormElements.mapIndexed(
                        (index, formElement) {
                          return formElement.copyWith(
                            columnNum: NonNegInt(index),
                          );
                        },
                      ).toList();

                      return List3(updatedFormElements);
                    },
                  ),
                  layoutXPercent: List3(KtList.from(
                    List<LayoutPercent>.generate(
                      rowElementNumber,
                      (int index) => LayoutPercent(
                        position: NonNegInt(index),
                        percentage: NonNegDouble(100 / rowElementNumber),
                      ),
                    ),
                  )),
                );
              } else {
                return element;
              }
            }).asList()));
          },
        ),
      ));
    });

    on<_RemoveFormElement>((event, emit) {
      emit(state.copyWith(
          isUpdating: true,
          listRows: state.listRows.value.fold(
              (ifLeft) => List3(KtList.empty()),
              (ifRight) => List3(KtList.from(ifRight.mapIndexed((idx, element) {
                    if (idx == event.columnIndex) {
                      int rowElementNumber = ifRight.size - 1;
                      return element.copyWith(
                          formElements: element.formElements.value.fold(
                              (ifLeft) => List3(KtList.empty()),
                              (ifRight) => List3(KtList.from(ifRight.asList()
                                ..remove(event.columnIndex)))),
                          layoutXPercent: List3(KtList.from(
                              List<LayoutPercent>.generate(
                                  rowElementNumber,
                                  (int index) => LayoutPercent(
                                      position: NonNegInt(index),
                                      percentage: NonNegDouble(
                                          100 / rowElementNumber))))));
                    } else {
                      return element;
                    }
                  }).asList())))));
    });
    on<_UpdateXLayout>((event, emit) {
      emit(state.copyWith(
          isUpdating: true,
          listRows: state.listRows.value.fold(
              (ifLeft) => List3(KtList.empty()),
              (ifRight) => List3(KtList.from(ifRight.mapIndexed((idx, element) {
                    if (idx == event.columnIndex) {
                      return element.copyWith(
                          layoutXPercent:
                              List3(KtList.from(event.newPercents)));
                    } else {
                      return element;
                    }
                  }).asList())))));
    });
  }
}
