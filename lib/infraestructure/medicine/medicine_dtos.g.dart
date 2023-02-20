// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MedicineDto _$$_MedicineDtoFromJson(Map<String, dynamic> json) =>
    _$_MedicineDto(
      id: json['id'] as String,
      comercialName: json['comercialName'] as String,
      genericName: json['genericName'] as String,
      measureUnit: NameAbbreviationDto.fromJson(
          json['measureUnit'] as Map<String, dynamic>),
      amountMeasureUnit: (json['amountMeasureUnit'] as num).toDouble(),
      administrationRoute: NameAbbreviationDto.fromJson(
          json['administrationRoute'] as Map<String, dynamic>),
      pharmaceuticalForm: NameAbbreviationDto.fromJson(
          json['pharmaceuticalForm'] as Map<String, dynamic>),
      amountPerPackage: json['amountPerPackage'] as int,
      category: CategoryDto.fromJson(json['category'] as Map<String, dynamic>),
      imageURL: json['imageURL'] as String,
      counter: json['counter'] as int,
      controlled: json['controlled'] as bool,
    );

Map<String, dynamic> _$$_MedicineDtoToJson(_$_MedicineDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'comercialName': instance.comercialName,
      'genericName': instance.genericName,
      'measureUnit': instance.measureUnit.toJson(),
      'amountMeasureUnit': instance.amountMeasureUnit,
      'administrationRoute': instance.administrationRoute.toJson(),
      'pharmaceuticalForm': instance.pharmaceuticalForm.toJson(),
      'amountPerPackage': instance.amountPerPackage,
      'category': instance.category.toJson(),
      'imageURL': instance.imageURL,
      'counter': instance.counter,
      'controlled': instance.controlled,
    };
