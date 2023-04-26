// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'week_days_dose_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeekDaysDoseDto _$$_WeekDaysDoseDtoFromJson(Map<String, dynamic> json) =>
    _$_WeekDaysDoseDto(
      id: json['id'] as String,
      label: json['label'] as String,
      weekDays:
          (json['weekDays'] as List<dynamic>).map((e) => e as int).toList(),
      counter: json['counter'] as int,
    );

Map<String, dynamic> _$$_WeekDaysDoseDtoToJson(_$_WeekDaysDoseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'weekDays': instance.weekDays,
      'counter': instance.counter,
    };
