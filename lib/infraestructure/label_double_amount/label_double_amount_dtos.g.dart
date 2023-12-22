// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'label_double_amount_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LabelDoubleAmountDto _$$_LabelDoubleAmountDtoFromJson(
        Map<String, dynamic> json) =>
    _$_LabelDoubleAmountDto(
      id: json['id'] as String,
      label: json['label'] as String,
      amount: (json['amount'] as num).toDouble(),
      counter: json['counter'] as int,
    );

Map<String, dynamic> _$$_LabelDoubleAmountDtoToJson(
        _$_LabelDoubleAmountDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'amount': instance.amount,
      'counter': instance.counter,
    };
