// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branded_medicine_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BrandedMedicineDto _$$_BrandedMedicineDtoFromJson(
        Map<String, dynamic> json) =>
    _$_BrandedMedicineDto(
      id: json['id'] as String,
      comercialName: json['comercialName'] as String,
      existence: json['existence'] as int,
      optimum: json['optimum'] as int,
      imageURL: json['imageURL'] as String,
      counter: json['counter'] as int,
      genericMedicine: GenericMedicineDto.fromJson(
          json['genericMedicine'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BrandedMedicineDtoToJson(
        _$_BrandedMedicineDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'comercialName': instance.comercialName,
      'existence': instance.existence,
      'optimum': instance.optimum,
      'imageURL': instance.imageURL,
      'counter': instance.counter,
      'genericMedicine': instance.genericMedicine.toJson(),
    };
