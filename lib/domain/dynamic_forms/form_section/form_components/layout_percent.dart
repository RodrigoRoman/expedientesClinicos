import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/constants.dart';
import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "layout_percent.freezed.dart";

@freezed
class LayoutPercent with _$LayoutPercent {
  const LayoutPercent._();
  const factory LayoutPercent({
    required NonNegInt position,
    // the percentage will be provided in the
    // range 0-100
    required NonNegDouble percentage,
  }) = _LayoutPercent;

  factory LayoutPercent.empty() => LayoutPercent(
      position: NonNegInt(EmptyFormValues.emptyAmount),
      percentage: NonNegDouble(EmptyFormValues.emptyAmountMeasureUnit));

  Option<ValueFailure<dynamic>> get failureOption {
    return position.failureOrUnit
        .andThen(percentage.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
