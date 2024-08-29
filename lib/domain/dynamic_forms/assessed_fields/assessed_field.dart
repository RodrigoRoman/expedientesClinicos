import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/assessed_fields/input_reference.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/filed_types/field_types.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/form_element.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// AssessedField is the class for the form elements that will be compared to
// parameters which are represented by InputReference. They are supposed
// to be used for testing such as blood levels where InputReference will
// be a reference of the normal values.

class AssessedField extends FormElement {
  final Unit unitType;
  List<InputReference> references;
  AssessedField(
      {required this.references,
      required this.unitType,
      required NonEmptyFieldType fieldType,
      required NonEmptyString promptName,
      UniqueId? fieldId})
      : super(
            fieldType: fieldType,
            promptName: promptName,
            fieldId: fieldId); // Private constructor for adding extensions
  // There are only two type of assessed inputs which are the numeric and the
  // String. (Filamenteos - Escasa cantidad - No se observan. Aspecto - Ligeramente Turbio)
  // They will be handled as int(toggle) and the labels will be assigned from the presentation
}
