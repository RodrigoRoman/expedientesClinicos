// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_section_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FormSectionDtoImpl _$$FormSectionDtoImplFromJson(Map<String, dynamic> json) =>
    _$FormSectionDtoImpl(
      formId: json['formId'] as String,
      sectionName: json['sectionName'] as String,
      sectionType: json['sectionType'] as String,
      categoryDto:
          CategoryDto.fromJson(json['categoryDto'] as Map<String, dynamic>),
      formRows: (json['formRows'] as List<dynamic>)
          .map((e) => FormRowDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      layoutYPercent: (json['layoutYPercent'] as List<dynamic>)
          .map((e) => LayoutPercentDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FormSectionDtoImplToJson(
        _$FormSectionDtoImpl instance) =>
    <String, dynamic>{
      'formId': instance.formId,
      'sectionName': instance.sectionName,
      'sectionType': instance.sectionType,
      'categoryDto': instance.categoryDto.toJson(),
      'formRows': instance.formRows.map((e) => e.toJson()).toList(),
      'layoutYPercent': instance.layoutYPercent.map((e) => e.toJson()).toList(),
    };
