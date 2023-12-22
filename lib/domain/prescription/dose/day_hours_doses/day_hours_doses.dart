import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:intl/intl.dart';

part 'day_hours_doses.freezed.dart';

@freezed
abstract class DayHoursDose implements _$DayHoursDose {
  const DayHoursDose._();
  const factory DayHoursDose({
    required UniqueId id,
    required FullName label,
    required List3<HourTime> doseHours,
  }) = _DayHoursDose;
  factory DayHoursDose.empty() => DayHoursDose(
        id: UniqueId(),
        label: FullName(AppStrings.empty),
        doseHours: List3(const KtList.empty()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return label.failureOrUnit
        .andThen(doseHours
            .getOrCrash()
            .map((hourTime) => hourTime.failureOrUnit)
            .filter((either) => either.isLeft())
            .getOrElse(0, (_) => right(unit))
            .fold((f) => left(f), (_) => right(unit)))
        .fold((f) => some(f), (_) => none());
  }

  String get formattedDoseHours {
    final now = DateTime.now();
    // Your custom formatting logic goes here.
    // For example, you might format each HourTime object and join them with a comma.
    return doseHours
        .getOrCrash()
        .asList()
        .map((hourTime) => hourTime.value.fold((l) => l, (r) {
              final dt =
                  DateTime(now.year, now.month, now.day, r.hour, r.minute);
              final DateFormat format = DateFormat.jm();
              return format.format(dt);
            }))
        .join(",");
  }

  bool operator ==(dynamic other) {
    if (identical(this, other)) return true;
    return other is DayHoursDose &&
        label == other.label &&
        doseHours == other.doseHours;
  }
}
