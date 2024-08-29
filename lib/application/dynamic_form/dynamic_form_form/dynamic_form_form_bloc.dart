import 'package:dartz/dartz.dart';
import 'package:bloc/bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/dynamic_form_failures.dart';
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
              state.copyWith(formSection: initialCategory, isUpdating: true)));
    });
    on<_SectionNameChanged>((event, emit) {
      emit(state.copyWith(
          formSection: state.formSection
              .copyWith(sectionName: NonEmptyString(event.sectionName))));
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
        emit(
            state.copyWith(isSaving: true, saveFailureOrSuccessOption: none()));
        if (state.formSection.failureOption.isNone()) {
          failureOrSuccess = state.isUpdating
              ? await _dynamicFormRepository.update(state.formSection)
              : await _dynamicFormRepository.create(state.formSection);
        } else {
          failureOrSuccess = const Left(DynamicFormFailures.unableToCreate());
        }
        emit(state.copyWith(
            formSection:
                failureOrSuccess.fold((l) => FormSection.empty(), (r) => r),
            isSaving: false,
            showErrorMessages: true,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess)));
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
