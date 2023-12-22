import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'week_days_dose.freezed.dart';

//week days are encoded as intergers from 0 to 6
// taking Monday as 0
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
      weekDays: List3(KtList.from([
        NonNegInt(0),
        NonNegInt(1),
        NonNegInt(2),
        NonNegInt(3),
        NonNegInt(4),
        NonNegInt(5),
        NonNegInt(6)
      ])),
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

  String get weekDaysNames {
    // Spanish names for the days of the week
    const List<String> daysInSpanish = [
      'Lunes', // 0
      'Martes', // 1
      'Miércoles', // 2
      'Jueves', // 3
      'Viernes', // 4
      'Sábado', // 5
      'Domingo', // 6
    ];

    // Convert each index in weekDays to its corresponding day name
    final String daysString = weekDays
        .getOrCrash()
        .map((index) {
          print("index!");
          print(index);
          return daysInSpanish[index.value.fold((l) => 0, (r) => r)];
        })
        .asList()
        .join(", ");
    return '$daysString';
  }

  bool operator ==(dynamic other) {
    if (identical(this, other)) return true;
    return other is WeekDaysDose &&
        label == other.label &&
        weekDays == other.weekDays;
  }
}
