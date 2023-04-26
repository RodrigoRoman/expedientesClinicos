import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/day_hours_doses.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/dose_amount.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'dose_amount_dtos.freezed.dart';
part 'dose_amount_dtos.g.dart';

// List<Timestamp> _timeToJson(List<Timestamp> time) => time;
// List<Timestamp> _timeFromJson(List<Timestamp> json) => json;

@freezed
abstract class DoseAmountDto implements _$DoseAmountDto {
  const DoseAmountDto._();

  const factory DoseAmountDto(
      {required String id,
      required String label,
      required double amount,
      required int counter}) = _DoseAmountDto;

  factory DoseAmountDto.fromDomain(DoseAmount doseAmount) {
    return DoseAmountDto(
        id: doseAmount.id.getOrCrash(),
        label: doseAmount.label.getOrCrash(),
        amount: doseAmount.amount.getOrCrash(),
        counter: doseAmount.counter.getOrCrash());
  }

  DoseAmount toDomain() {
    return DoseAmount(
        id: UniqueId.fromUniqueString(id),
        label: FullName(label),
        amount: NonNegDouble(amount),
        counter: NonNegInt(counter));
  }

  factory DoseAmountDto.fromJson(Map<String, dynamic> json) =>
      _$DoseAmountDtoFromJson(json);

  factory DoseAmountDto.fromFirestore(DocumentSnapshot doc) {
    return DoseAmountDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
