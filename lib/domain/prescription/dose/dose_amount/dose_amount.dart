import 'package:expedientes_clinicos/domain/core/constants.dart';
import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dose_amount.freezed.dart';

@freezed
abstract class DoseAmount implements _$DoseAmount {
  const DoseAmount._();
  const factory DoseAmount({
    required UniqueId id,
    required FullName label,
    required NonNegDouble amount,
    required NonNegInt counter,
  }) = _DoseAmount;

  factory DoseAmount.empty() => DoseAmount(
      id: UniqueId(),
      label: FullName(AppStrings.empty),
      amount: NonNegDouble(EmptyFormValues.emptyAmountMeasureUnit),
      counter: NonNegInt(EmptyFormValues.emptyAmount));

  Option<ValueFailure<dynamic>> get failureOption {
    return label.failureOrUnit
        .andThen(counter.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }

  bool operator ==(dynamic other) {
    if (identical(this, other)) return true;
    return other is DoseAmount &&
        label == other.label &&
        amount == other.amount;
  }
}
