// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_medicine_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenericMedicineDtoImpl _$$GenericMedicineDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GenericMedicineDtoImpl(
      id: json['id'] as String,
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
      counter: json['counter'] as int,
      controlled: json['controlled'] as bool,
    );

Map<String, dynamic> _$$GenericMedicineDtoImplToJson(
        _$GenericMedicineDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'genericName': instance.genericName,
      'measureUnit': instance.measureUnit.toJson(),
      'amountMeasureUnit': instance.amountMeasureUnit,
      'administrationRoute': instance.administrationRoute.toJson(),
      'pharmaceuticalForm': instance.pharmaceuticalForm.toJson(),
      'amountPerPackage': instance.amountPerPackage,
      'category': instance.category.toJson(),
      'counter': instance.counter,
      'controlled': instance.controlled,
    };
