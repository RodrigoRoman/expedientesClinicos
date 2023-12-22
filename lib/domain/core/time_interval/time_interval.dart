import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_interval.freezed.dart';

@freezed
abstract class TimeInterval implements _$TimeInterval {
  const TimeInterval._();
  static int daysInMonth = 30; // Average days in a month
  static int daysInWeek = 7; // Days in a week
  const factory TimeInterval(
      {required UniqueId id,
      required FullName label,
      required TimeDuration timeDuration,
      required NonNegInt counter}) = _TimeInterval;

  factory TimeInterval.empty() => TimeInterval(
      id: UniqueId(),
      label: FullName(''),
      timeDuration: TimeDuration(const Duration(milliseconds: 0)),
      counter: NonNegInt(0));
  Option<ValueFailure<dynamic>> get failureOption {
    return counter.failureOrUnit
        .andThen(timeDuration.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }

  String get daysWeekMonth {
    int totalDays = timeDuration.value.fold((l) => 0, (r) => r.inDays);
    int months = totalDays ~/ daysInMonth;
    int remainingDays = totalDays % daysInMonth;
    int weeks = remainingDays ~/ daysInWeek;
    remainingDays %= daysInWeek;

    StringBuffer phrase = StringBuffer();

    if (months > 0) {
      phrase.write(months == 1 ? 'Un mes' : '$months meses');
    }
    if (weeks > 0) {
      if (phrase.isNotEmpty) phrase.write(', ');
      phrase.write(weeks == 1 ? 'Una semana' : '$weeks semanas');
    }
    if (remainingDays > 0) {
      if (phrase.isNotEmpty) phrase.write(', ');
      phrase.write(remainingDays == 1 ? 'Un día' : '$remainingDays días');
    }

    return phrase.toString();
  }

  factory TimeInterval.fromMonthsWeeksDays({
    required UniqueId id,
    required FullName label,
    required int months,
    required int weeks,
    required int days,
    required NonNegInt counter,
  }) {
    Duration duration = createDurationFromMonthsWeeksDays(months, weeks, days);
    return TimeInterval(
      id: id,
      label: label,
      timeDuration: TimeDuration(duration),
      counter: counter,
    );
  }

  // Method to create a Duration from months, weeks, and days
  static Duration createDurationFromMonthsWeeksDays(
      int months, int weeks, int days) {
    int totalDays = (months * daysInMonth) + (weeks * daysInWeek) + days;
    return Duration(days: totalDays);
  }

  @override
  bool operator ==(Object other) {
    return other is TimeInterval &&
        other.label == label &&
        other.timeDuration == timeDuration;
  }
}
