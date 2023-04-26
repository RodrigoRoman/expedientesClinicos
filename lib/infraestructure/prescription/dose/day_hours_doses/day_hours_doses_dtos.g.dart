// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_hours_doses_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DayHoursDoseDto _$$_DayHoursDoseDtoFromJson(Map<String, dynamic> json) =>
    _$_DayHoursDoseDto(
      id: json['id'] as String,
      label: json['label'] as String,
      doseHours: _timeToJson(json['doseHours'] as List<Timestamp>),
    );

Map<String, dynamic> _$$_DayHoursDoseDtoToJson(_$_DayHoursDoseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'doseHours': _timeFromJson(instance.doseHours),
    };
