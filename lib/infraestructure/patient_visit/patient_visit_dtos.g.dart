// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_visit_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PatientVisitDto _$$_PatientVisitDtoFromJson(Map<String, dynamic> json) =>
    _$_PatientVisitDto(
      id: json['id'] as String,
      treatment: (json['treatment'] as List<dynamic>)
          .map((e) => PrescriptionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PatientVisitDtoToJson(_$_PatientVisitDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'treatment': instance.treatment.map((e) => e.toJson()).toList(),
    };
