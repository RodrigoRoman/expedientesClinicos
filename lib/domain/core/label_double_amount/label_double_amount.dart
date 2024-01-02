import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/constants.dart';
import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'label_double_amount.freezed.dart';

@freezed
abstract class LabelDoubleAmount implements _$LabelDoubleAmount {
  const LabelDoubleAmount._();
  const factory LabelDoubleAmount({
    required UniqueId id,
    required FullName label,
    required NonNegDouble amount,
    required NonNegInt counter,
  }) = _LabelDoubleAmount;

  factory LabelDoubleAmount.empty() => LabelDoubleAmount(
      id: UniqueId(),
      label: FullName(AppStrings.empty),
      amount: NonNegDouble(EmptyFormValues.emptyAmountMeasureUnit),
      counter: NonNegInt(EmptyFormValues.emptyAmount));

  Option<ValueFailure<dynamic>> get failureOption {
    return label.failureOrUnit
        .andThen(counter.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }

  bool get isEmpty {
    return label == FullName(EmptyFormValues.emptyString) &&
        amount == NonNegDouble(EmptyFormValues.emptyAmountMeasureUnit);
  }

  bool operator ==(dynamic other) {
    if (identical(this, other)) return true;
    return other is LabelDoubleAmount &&
        label == other.label &&
        amount == other.amount;
  }
}
