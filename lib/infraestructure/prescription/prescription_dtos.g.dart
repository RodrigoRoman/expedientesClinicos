// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescription_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PrescriptionDto _$$_PrescriptionDtoFromJson(Map<String, dynamic> json) =>
    _$_PrescriptionDto(
      id: json['id'] as String,
      medicine:
          BrandedMedicineDto.fromJson(json['medicine'] as Map<String, dynamic>),
      doseAmount: LabelDoubleAmountDto.fromJson(
          json['doseAmount'] as Map<String, dynamic>),
      dose: DoseDto.fromJson(json['dose'] as Map<String, dynamic>),
      indications: (json['indications'] as List<dynamic>)
          .map((e) => IndicationDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PrescriptionDtoToJson(_$_PrescriptionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'medicine': instance.medicine.toJson(),
      'doseAmount': instance.doseAmount.toJson(),
      'dose': instance.dose.toJson(),
      'indications': instance.indications.map((e) => e.toJson()).toList(),
    };
