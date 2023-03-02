// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescription_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PrescriptionDto _$$_PrescriptionDtoFromJson(Map<String, dynamic> json) =>
    _$_PrescriptionDto(
      id: json['id'] as String,
      medicine: MedicineDto.fromJson(json['medicine'] as Map<String, dynamic>),
      dose: json['dose'] as int,
      frequency:
          TimeIntervalDto.fromJson(json['frequency'] as Map<String, dynamic>),
      duration:
          TimeIntervalDto.fromJson(json['duration'] as Map<String, dynamic>),
      indications: (json['indications'] as List<dynamic>)
          .map((e) => IndicationDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PrescriptionDtoToJson(_$_PrescriptionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'medicine': instance.medicine.toJson(),
      'dose': instance.dose,
      'frequency': instance.frequency.toJson(),
      'duration': instance.duration.toJson(),
      'indications': instance.indications.map((e) => e.toJson()).toList(),
    };
