import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/constants.dart';
import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/form_element.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/layout_percent.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
part 'form_row.freezed.dart';

@freezed
class FormRow with _$FormRow {
  const FormRow._();
  factory FormRow({
    required NonNegInt rowNum,
    required List3<LayoutPercent>
        layoutXPercent, //Just in case we will keep the order of the elements by means of a map
    required List3<FormElement>
        formElements, // Will have the position in the row (from 0)
  }) = _FormRow;

  factory FormRow.empty() {
    return FormRow(
        rowNum: NonNegInt(EmptyFormValues.emptyAmount),
        layoutXPercent: List3(const KtList.empty()),
        formElements: List3(const KtList.empty()));
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return rowNum.failureOrUnit
        .andThen(layoutXPercent
            .getOrCrash()
            .map((column) => column.failureOption)
            .filter((o) => o.isSome())
            .getOrElse(0, (_) => none())
            .fold(() => right(unit), (f) => left(f)))
        .andThen(formElements
            .getOrCrash()
            .map((formElement) => formElement.failureOrOption)
            .filter((o) => o.isSome())
            .getOrElse(0, (_) => none())
            .fold(() => right(unit), (f) => left(f)))
        .fold((f) => some(f), (_) => none());
  }
}
