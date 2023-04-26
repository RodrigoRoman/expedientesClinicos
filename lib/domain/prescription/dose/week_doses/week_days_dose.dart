import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'week_days_dose.freezed.dart';

//week days are encoded as intergers from 0 to 6
@freezed
abstract class WeekDaysDose implements _$WeekDaysDose {
  const WeekDaysDose._();
  const factory WeekDaysDose(
      {required UniqueId id,
      required FullName label,
      required List3<NonNegInt> weekDays,
      required NonNegInt counter}) = _WeekDaysDose;
  factory WeekDaysDose.empty() => WeekDaysDose(
      id: UniqueId(),
      label: FullName(AppStrings.empty),
      weekDays: List3(const KtList.empty()),
      counter: NonNegInt(0));

  Option<ValueFailure<dynamic>> get failureOption {
    return label.failureOrUnit
        .andThen(weekDays
            .getOrCrash()
            .map((hourTime) => hourTime.failureOrUnit)
            .filter((either) => either.isLeft())
            .getOrElse(0, (_) => right(unit))
            .fold((f) => left(f), (_) => right(unit)))
        .fold((f) => some(f), (_) => none());
  }

  bool operator ==(dynamic other) {
    if (identical(this, other)) return true;
    return other is WeekDaysDose &&
        label == other.label &&
        weekDays == other.weekDays;
  }
}
