// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_hours_doses_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DayHoursDoseDtoImpl _$$DayHoursDoseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DayHoursDoseDtoImpl(
      id: json['id'] as String,
      label: json['label'] as String,
      doseHours: _timeToJson(json['doseHours'] as List<Timestamp>),
    );

Map<String, dynamic> _$$DayHoursDoseDtoImplToJson(
        _$DayHoursDoseDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'doseHours': _timeFromJson(instance.doseHours),
    };
