import 'package:expedientes_clinicos/domain/core/constants.dart';
import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/time_interval.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/day_hours_doses.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/dose_amount.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/week_days_dose.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'dose.freezed.dart';

@freezed
abstract class Dose implements _$Dose {
  const Dose._();
  const factory Dose({
    required UniqueId id,
    required DayHoursDose dayHoursDose,
    required WeekDaysDose weekDays,
    required TimeInterval duration,
    required NonNegInt counter,
    required FullName label,
  }) = _Dose;

  factory Dose.empty() => Dose(
      id: UniqueId(),
      dayHoursDose: DayHoursDose.empty(),
      duration: TimeInterval.empty(),
      weekDays: WeekDaysDose.empty(),
      counter: NonNegInt(EmptyFormValues.emptyAmount),
      label: FullName(EmptyFormValues.emptyString));
  bool get isEmpty {
    return dayHoursDose == DayHoursDose.empty() &&
        duration == TimeInterval.empty() &&
        weekDays == WeekDaysDose.empty() &&
        counter == NonNegInt(EmptyFormValues.emptyAmount) &&
        label == FullName(EmptyFormValues.emptyString);
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return label.failureOrUnit
        .andThen(
            dayHoursDose.failureOption.fold(() => right(unit), (f) => left(f)))
        .andThen(weekDays.failureOption.fold(() => right(unit), (f) => left(f)))
        .andThen(duration.failureOption.fold(() => right(unit), (f) => left(f)))
        .fold((f) => some(f), (_) => none());
  }
}
