// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indication_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndicationDtoImpl _$$IndicationDtoImplFromJson(Map<String, dynamic> json) =>
    _$IndicationDtoImpl(
      id: json['id'] as String,
      indicationName: json['indicationName'] as String,
      indicationCategory: CategoryDto.fromJson(
          json['indicationCategory'] as Map<String, dynamic>),
      counter: json['counter'] as int,
    );

Map<String, dynamic> _$$IndicationDtoImplToJson(_$IndicationDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'indicationName': instance.indicationName,
      'indicationCategory': instance.indicationCategory.toJson(),
      'counter': instance.counter,
    };
