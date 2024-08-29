// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'week_days_dose_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeekDaysDoseDtoImpl _$$WeekDaysDoseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$WeekDaysDoseDtoImpl(
      id: json['id'] as String,
      label: json['label'] as String,
      weekDays:
          (json['weekDays'] as List<dynamic>).map((e) => e as int).toList(),
      counter: json['counter'] as int,
    );

Map<String, dynamic> _$$WeekDaysDoseDtoImplToJson(
        _$WeekDaysDoseDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'weekDays': instance.weekDays,
      'counter': instance.counter,
    };
