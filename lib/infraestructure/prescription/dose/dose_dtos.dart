import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/day_hours_doses.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose.dart';
import 'package:expedientes_clinicos/infraestructure/prescription/dose/day_hours_doses/day_hours_doses_dtos.dart';
import 'package:expedientes_clinicos/infraestructure/prescription/dose/week_days_dose/week_days_dose_dtos.dart';
import 'package:expedientes_clinicos/infraestructure/time_interval/time_interval_dtos.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'dose_dtos.freezed.dart';
part 'dose_dtos.g.dart';

@freezed
abstract class DoseDto implements _$DoseDto {
  const DoseDto._();

  const factory DoseDto({
    required String id,
    required DayHoursDoseDto dayHoursDose,
    required TimeIntervalDto duration,
    required WeekDaysDoseDto weekDaysDose,
    required int counter,
    required String label,
  }) = _DoseDto;

  factory DoseDto.fromDomain(Dose dose) {
    return DoseDto(
      id: dose.id.getOrCrash(),
      dayHoursDose: DayHoursDoseDto.fromDomain(dose.dayHoursDose),
      duration: TimeIntervalDto.fromDomain(dose.duration),
      weekDaysDose: WeekDaysDoseDto.fromDomain(dose.weekDays),
      label: dose.label.getOrCrash(),
      counter: dose.counter.getOrCrash(),
    );
  }

  Dose toDomain() {
    return Dose(
        id: UniqueId.fromUniqueString(id),
        dayHoursDose: dayHoursDose.toDomain(),
        duration: duration.toDomain(),
        weekDays: weekDaysDose.toDomain(),
        counter: NonNegInt(counter),
        label: FullName(label));
  }

  factory DoseDto.fromJson(Map<String, dynamic> json) =>
      _$DoseDtoFromJson(json);

  factory DoseDto.fromFirestore(DocumentSnapshot doc) {
    return DoseDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
