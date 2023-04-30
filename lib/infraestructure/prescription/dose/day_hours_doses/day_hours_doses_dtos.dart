import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/day_hours_doses.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'day_hours_doses_dtos.freezed.dart';
part 'day_hours_doses_dtos.g.dart';

List<Timestamp> _timeToJson(List<Timestamp> time) => time;
List<Timestamp> _timeFromJson(List<Timestamp> json) => json;

@freezed
abstract class DayHoursDoseDto implements _$DayHoursDoseDto {
  const DayHoursDoseDto._();

  const factory DayHoursDoseDto({
    required String id,
    required String label,
    @JsonKey(fromJson: _timeToJson, toJson: _timeFromJson)
        required List<Timestamp> doseHours,
  }) = _DayHoursDoseDto;

  factory DayHoursDoseDto.fromDomain(DayHoursDose dayHourDoses) {
    return DayHoursDoseDto(
      id: dayHourDoses.id.getOrCrash(),
      label: dayHourDoses.label.getOrCrash(),
      doseHours: dayHourDoses.doseHours
          .getOrCrash()
          .map((hourTime) => hourTime.toTimestamp())
          .asList(),
    );
  }

  DayHoursDose toDomain() {
    return DayHoursDose(
      id: UniqueId.fromUniqueString(id),
      label: FullName(label),
      doseHours: List3<HourTime>(doseHours
          .map((timeStamp) => HourTime.fromTimestamp(timeStamp))
          .toImmutableList()),
    );
  }

  factory DayHoursDoseDto.fromJson(Map<String, dynamic> json) =>
      DayHoursDoseDto(
        id: json['id'] as String,
        label: json['label'] as String,
        doseHours: _timeFromJson((json['doseHours'] as List<dynamic>)
            .map((dynamic timestamp) => timestamp as Timestamp)
            .toList()),
      );

  factory DayHoursDoseDto.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    final doseHours = (data['doseHours'] as List<dynamic>)
        .map((dynamic timestamp) => timestamp as Timestamp)
        .toList();
    return DayHoursDoseDto(
      id: data['id'] as String,
      label: data['label'] as String,
      doseHours: _timeFromJson(doseHours),
    );
  }
}
