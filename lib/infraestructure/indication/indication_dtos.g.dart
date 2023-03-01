// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indication_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IndicationDto _$$_IndicationDtoFromJson(Map<String, dynamic> json) =>
    _$_IndicationDto(
      id: json['id'] as String,
      indicationName: json['indicationName'] as String,
      indicationCategory: CategoryDto.fromJson(
          json['indicationCategory'] as Map<String, dynamic>),
      counter: json['counter'] as int,
    );

Map<String, dynamic> _$$_IndicationDtoToJson(_$_IndicationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'indicationName': instance.indicationName,
      'indicationCategory': instance.indicationCategory.toJson(),
      'counter': instance.counter,
    };
