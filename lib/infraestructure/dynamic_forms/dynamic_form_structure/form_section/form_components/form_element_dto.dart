import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/filed_types/field_types.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/filed_types/range_field.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/form_element.dart';
import 'package:expedientes_clinicos/presentation/resources/asset_names.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class FormElementDto {
  final String? fieldId;
  final int colNum;
  final String promptName;
  final dynamic value;
  final String fieldType;

  FormElementDto({
    this.fieldId,
    required this.promptName,
    required this.colNum,
    this.value,
    required this.fieldType,
  });

  factory FormElementDto.fromDomain(FormElement formElement) {
    return FormElementDto(
      fieldId: formElement.fieldId?.value
          .fold((ifLeft) => ifLeft.toString(), (ifRight) => ifRight),
      promptName: formElement.promptName.value
          .fold((ifLeft) => ifLeft.toString(), (ifRight) => ifRight),
      colNum: formElement.columnNum.getOrCrash(),
      value: formElement.value,
      fieldType: formElement.fieldType.getOrCrash().name,
    );
  }

  FormElement toDomain() {
    return FormElement(
      fieldType: NonEmptyFieldType(FieldType.fromString(fieldType)),
      fieldId: fieldId != null ? UniqueId.fromUniqueString(fieldId!) : null,
      columnNum: NonNegInt(colNum),
      value: value,
      promptName: NonEmptyString(promptName),
    );
  }

  factory FormElementDto.fromJson(Map<String, dynamic> json) {
    return FormElementDto(
      fieldId: json['fieldId'] as String?,
      colNum: json['colNum'] as int,
      promptName: json['promptName'] as String,
      value: _fromJson(json['value'], json['fieldType'] as String),
      fieldType: json['fieldType'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fieldId': fieldId,
      'promptName': promptName,
      'value': null,
      'colNum': colNum,
      // 'value': _toJson(value, fieldType),
      'fieldType': fieldType,
    };
  }

  factory FormElementDto.fromFirestore(DocumentSnapshot doc) {
    return FormElementDto.fromJson(doc.data() as Map<String, dynamic>);
  }

  static dynamic _fromJson(dynamic json, String fieldType) {
    FieldType fType = FieldType.fromString(fieldType);
    return null;
    // switch (fType) {
//       case FieldType.date:
//         if (json is Map &&
//             json.containsKey('_seconds') &&
//             json.containsKey('_nanoseconds')) {
//           return DateTime.fromMillisecondsSinceEpoch(
//               json['_seconds'] * 1000 + json['_nanoseconds'] ~/ 1000000);
//         } else {
//           throw Exception("Invalid type for date field");
//         }
//       case FieldType.range:
//         if (json is Map &&
//             json.containsKey('low') &&
//             json.containsKey('high')) {
//           return RangeField(json['low'], json['high']);
//         } else {
//           throw Exception("Invalid type for range field");
//         }
//       case FieldType.time:
//         if (json is Map &&
//             json.containsKey('hour') &&
//             json.containsKey('minute')) {
//           return TimeOfDay(hour: json['hour'], minute: json['minute']);
//         } else {
//           throw Exception("Invalid type for time field");
//         }
//       case FieldType.text:
//       case FieldType.number:
//       case FieldType.bool:
//       case FieldType.image:
//         return json;
//       default:
//         throw Exception("Unsupported field type");
//     }
  }

  // static Map<String, dynamic> _toJson(dynamic value, String fieldType) {
  //   FieldType fType = FieldType.fromString(fieldType);
  //   return {'value': null};
  // switch (fType) {
//       case FieldType.date:
//         if (value is DateTime) {
//           return {
//             '_seconds': value.millisecondsSinceEpoch ~/ 1000,
//             '_nanoseconds': (value.millisecondsSinceEpoch % 1000) * 1000000
//           };
//         } else {
//           throw Exception("Invalid type for date field");
//         }
//       case FieldType.range:
//         if (value is RangeField) {
//           return {'low': value.low, 'high': value.high};
//         } else {
//           throw Exception("Invalid type for range field");
//         }
//       case FieldType.time:
//         if (value is TimeOfDay) {
//           return {'hour': value.hour, 'minute': value.minute};
//         } else {
//           throw Exception("Invalid type for time field");
//         }
//       case FieldType.text:
//       case FieldType.number:
//       case FieldType.bool:
//       case FieldType.image:
//         return value;
//       default:
//         throw Exception("Unsupported field type");
//     }
  // }
}
