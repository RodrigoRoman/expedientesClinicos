// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'label_double_amount_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LabelDoubleAmountDtoImpl _$$LabelDoubleAmountDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$LabelDoubleAmountDtoImpl(
      id: json['id'] as String,
      label: json['label'] as String,
      amount: (json['amount'] as num).toDouble(),
      counter: json['counter'] as int,
    );

Map<String, dynamic> _$$LabelDoubleAmountDtoImplToJson(
        _$LabelDoubleAmountDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'amount': instance.amount,
      'counter': instance.counter,
    };
