// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dose_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DoseDto _$$_DoseDtoFromJson(Map<String, dynamic> json) => _$_DoseDto(
      id: json['id'] as String,
      frequency:
          TimeIntervalDto.fromJson(json['frequency'] as Map<String, dynamic>),
      duration:
          TimeIntervalDto.fromJson(json['duration'] as Map<String, dynamic>),
      amount: json['amount'] as int,
      counter: json['counter'] as int,
    );

Map<String, dynamic> _$$_DoseDtoToJson(_$_DoseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'frequency': instance.frequency.toJson(),
      'duration': instance.duration.toJson(),
      'amount': instance.amount,
      'counter': instance.counter,
    };
