import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_interval.freezed.dart';

@freezed
abstract class TimeInterval implements _$TimeInterval {
  const TimeInterval._();
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

  @override
  bool operator ==(Object other) {
    return other is TimeInterval &&
        other.label == label &&
        other.timeDuration == timeDuration;
  }
}
