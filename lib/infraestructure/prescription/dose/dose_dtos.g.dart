// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dose_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoseDtoImpl _$$DoseDtoImplFromJson(Map<String, dynamic> json) =>
    _$DoseDtoImpl(
      id: json['id'] as String,
      dayHoursDose: DayHoursDoseDto.fromJson(
          json['dayHoursDose'] as Map<String, dynamic>),
      duration:
          TimeIntervalDto.fromJson(json['duration'] as Map<String, dynamic>),
      weekDaysDose: WeekDaysDoseDto.fromJson(
          json['weekDaysDose'] as Map<String, dynamic>),
      counter: json['counter'] as int,
      label: json['label'] as String,
    );

Map<String, dynamic> _$$DoseDtoImplToJson(_$DoseDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dayHoursDose': instance.dayHoursDose.toJson(),
      'duration': instance.duration.toJson(),
      'weekDaysDose': instance.weekDaysDose.toJson(),
      'counter': instance.counter,
      'label': instance.label,
    };
