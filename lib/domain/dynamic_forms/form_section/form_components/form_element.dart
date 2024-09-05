import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/filed_types/field_types.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Class to be extended. Given that it takes arguments in the constructor
class FormElement {
  NonEmptyFieldType fieldType;
  NonEmptyString promptName;
  //Form id is just for the case where the type is dropDown
  bool required;
  UniqueId? fieldId;
  NonNegInt columnNum;

  //the dynamic type is incredibly flexible. When you declare a variable as dynamic, you’re essentially telling Dart to allow any data type to be assigned to it.
  dynamic value;
  FormElement(
      {required this.fieldType,
      required this.promptName,
      this.value,
      this.fieldId,
      this.required = false,
      required this.columnNum});

  factory FormElement.empty() {
    return FormElement(
        fieldType: NonEmptyFieldType(FieldType.empty),
        promptName: NonEmptyString(AppStrings.empty),
        columnNum: NonNegInt(0),
        required: false,
        value: null,
        fieldId: UniqueId());
  }
  factory FormElement.fromColumn(NonNegInt columnIdx) {
    return FormElement(
        fieldType: NonEmptyFieldType(FieldType.empty),
        promptName: NonEmptyString(AppStrings.empty),
        required: false,
        value: null,
        columnNum: columnIdx,
        fieldId: UniqueId());
  }

  // Add the copyWith method here
  FormElement copyWith({
    NonEmptyFieldType? fieldType,
    NonEmptyString? promptName,
    bool? required,
    UniqueId? fieldId,
    NonNegInt? columnNum,
    dynamic value,
  }) {
    return FormElement(
      fieldType: fieldType ?? this.fieldType,
      promptName: promptName ?? this.promptName,
      required: required ?? this.required,
      fieldId: fieldId ?? this.fieldId,
      columnNum: columnNum ?? this.columnNum,
      value: value ?? this.value,
    );
  }

  Option<ValueFailure<dynamic>> get failureOrOption {
    return fieldType.failureOrUnit
        .andThen(promptName.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
