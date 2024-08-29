import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/constants.dart';
import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/filed_types/field_types.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/form_row.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/layout_percent.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/section_types.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/foundation.dart' hide Category;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
part "form_section.freezed.dart";

@freezed
class FormSection with _$FormSection {
  const FormSection._();
  const factory FormSection({
    required NonEmptyString sectionName,
    // The form will be for multiselect
    // Multiselect-Toggle-FieldBased (will be presented as chips)
    required NonEmptySectionType sectionType,
    // The form will be hierarchical toggle
    required UniqueId formId,
    required List3<FormRow> formRows,
    required List3<LayoutPercent> layoutYPercent, //x percentage distribution

    // Useful for separating Forms into departaments:
    // Hospital, Administration, Neurology, Pharmacy, etc
    required Category category,
  }) = _FormSection;

  factory FormSection.empty() {
    return FormSection(
        sectionName: NonEmptyString(AppStrings.empty),
        sectionType: NonEmptySectionType(SectionTypes.empty),
        formId: UniqueId(),
        formRows: List3(const KtList.empty()),
        layoutYPercent: List3(const KtList.empty()),
        category: Category.empty());
  }

  bool get isEmpty {
    return sectionName == NonEmptyString(EmptyFormValues.emptyString) &&
        sectionType == SectionTypes.empty &&
        formRows == EmptyFormValues.emptyList &&
        layoutYPercent == EmptyFormValues.emptyList &&
        category == Category.empty();
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return sectionName.failureOrUnit
        .andThen(sectionType.failureOrUnit)
        .andThen(formRows
            .getOrCrash()
            .map((formRow) => formRow.failureOption)
            .filter((o) => o.isSome())
            .getOrElse(0, (_) => none())
            .fold(() => right(unit), (f) => left(f)))
        .andThen(layoutYPercent
            .getOrCrash()
            .map((rowLayout) => rowLayout.failureOption)
            .filter((o) => o.isSome())
            .getOrElse(0, (_) => none())
            .fold(() => right(unit), (f) => left(f)))
        .fold((f) => some(f), (_) => none());
  }
}
