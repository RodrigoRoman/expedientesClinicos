// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_interval_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeIntervalDto _$$_TimeIntervalDtoFromJson(Map<String, dynamic> json) =>
    _$_TimeIntervalDto(
      id: json['id'] as String,
      label: json['label'] as String,
      timeDuration: Duration(microseconds: json['timeDuration'] as int),
      counter: json['counter'] as int,
    );

Map<String, dynamic> _$$_TimeIntervalDtoToJson(_$_TimeIntervalDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'timeDuration': instance.timeDuration.inMicroseconds,
      'counter': instance.counter,
    };
