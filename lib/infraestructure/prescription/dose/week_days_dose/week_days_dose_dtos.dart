import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/week_days_dose.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'week_days_dose_dtos.freezed.dart';
part 'week_days_dose_dtos.g.dart';

// List<Timestamp> _timeToJson(List<Timestamp> time) => time;
// List<Timestamp> _timeFromJson(List<Timestamp> json) => json;

@freezed
abstract class WeekDaysDoseDto implements _$WeekDaysDoseDto {
  const WeekDaysDoseDto._();

  const factory WeekDaysDoseDto(
      {required String id,
      required String label,
      required List<int> weekDays,
      required int counter}) = _WeekDaysDoseDto;

  factory WeekDaysDoseDto.fromDomain(WeekDaysDose weekDaysDose) {
    return WeekDaysDoseDto(
        id: weekDaysDose.id.getOrCrash(),
        label: weekDaysDose.label.getOrCrash(),
        weekDays: weekDaysDose.weekDays
            .getOrCrash()
            .map((day) => day.value.fold((l) => 0, (r) => r))
            .asList(),
        counter: weekDaysDose.counter.getOrCrash());
  }

  WeekDaysDose toDomain() {
    return WeekDaysDose(
        id: UniqueId.fromUniqueString(id),
        label: FullName(label),
        weekDays: List3<NonNegInt>(
            weekDays.map((day) => NonNegInt(day)).toImmutableList()),
        counter: NonNegInt(counter));
  }

  factory WeekDaysDoseDto.fromJson(Map<String, dynamic> json) =>
      _$WeekDaysDoseDtoFromJson(json);

  factory WeekDaysDoseDto.fromFirestore(DocumentSnapshot doc) {
    return WeekDaysDoseDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
