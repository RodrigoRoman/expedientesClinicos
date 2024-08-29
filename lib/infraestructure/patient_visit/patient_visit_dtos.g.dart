// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_visit_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientVisitDtoImpl _$$PatientVisitDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientVisitDtoImpl(
      id: json['id'] as String,
      dateTimeVisit: _timeToJson(json['dateTimeVisit'] as Timestamp),
      visitTypeDto:
          CategoryDto.fromJson(json['visitTypeDto'] as Map<String, dynamic>),
      treatment: (json['treatment'] as List<dynamic>)
          .map((e) => PrescriptionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PatientVisitDtoImplToJson(
        _$PatientVisitDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateTimeVisit': _timeFromJson(instance.dateTimeVisit),
      'visitTypeDto': instance.visitTypeDto.toJson(),
      'treatment': instance.treatment.map((e) => e.toJson()).toList(),
    };
