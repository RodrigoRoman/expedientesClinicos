// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dose_amount_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DoseAmountDto _$$_DoseAmountDtoFromJson(Map<String, dynamic> json) =>
    _$_DoseAmountDto(
      id: json['id'] as String,
      label: json['label'] as String,
      amount: (json['amount'] as num).toDouble(),
      counter: json['counter'] as int,
    );

Map<String, dynamic> _$$_DoseAmountDtoToJson(_$_DoseAmountDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'amount': instance.amount,
      'counter': instance.counter,
    };
