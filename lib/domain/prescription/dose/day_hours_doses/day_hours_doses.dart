import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

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

  bool operator ==(dynamic other) {
    if (identical(this, other)) return true;
    return other is DayHoursDose &&
        label == other.label &&
        doseHours == other.doseHours;
  }
}
