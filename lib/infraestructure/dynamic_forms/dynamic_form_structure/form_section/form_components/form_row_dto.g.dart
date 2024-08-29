// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_row_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FormRowDtoImpl _$$FormRowDtoImplFromJson(Map<String, dynamic> json) =>
    _$FormRowDtoImpl(
      rowNum: json['rowNum'] as int,
      layoutXPercent: (json['layoutXPercent'] as List<dynamic>)
          .map((e) => LayoutPercentDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      formElements: (json['formElements'] as List<dynamic>)
          .map((e) => FormElementDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FormRowDtoImplToJson(_$FormRowDtoImpl instance) =>
    <String, dynamic>{
      'rowNum': instance.rowNum,
      'layoutXPercent': instance.layoutXPercent.map((e) => e.toJson()).toList(),
      'formElements': instance.formElements.map((e) => e.toJson()).toList(),
    };
