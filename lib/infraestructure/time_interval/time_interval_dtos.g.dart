// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_interval_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeIntervalDtoImpl _$$TimeIntervalDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TimeIntervalDtoImpl(
      id: json['id'] as String,
      label: json['label'] as String,
      timeDuration: Duration(microseconds: json['timeDuration'] as int),
      counter: json['counter'] as int,
    );

Map<String, dynamic> _$$TimeIntervalDtoImplToJson(
        _$TimeIntervalDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'timeDuration': instance.timeDuration.inMicroseconds,
      'counter': instance.counter,
    };
