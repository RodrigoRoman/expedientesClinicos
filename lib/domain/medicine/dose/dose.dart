import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/constants.dart';
import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/time_interval.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/generic_medicine.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dose.freezed.dart';

@freezed
abstract class Dose implements _$Dose {
  const Dose._();
  const factory Dose({
    required UniqueId id,
    required TimeInterval frequency,
    required TimeInterval duration,
    required NonNegInt amount,
    required NonNegInt counter,
  }) = _Dose;

  factory Dose.empty() => Dose(
        id: UniqueId(),
        frequency: TimeInterval.empty(),
        duration: TimeInterval.empty(),
        amount: NonNegInt(EmptyFormValues.emptyAmount),
        counter: NonNegInt(EmptyFormValues.emptyAmount),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return amount.failureOrUnit
        .andThen(counter.failureOrUnit)
        .andThen(
            frequency.failureOption.fold(() => right(unit), (f) => left(f)))
        .andThen(duration.failureOption.fold(() => right(unit), (f) => left(f)))
        .fold((f) => some(f), (_) => none());
  }
}
