import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/form_element.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'input_reference.freezed.dart';

@freezed
class InputReference with _$InputReference {
  const InputReference._(); // Private constructor for adding extensions

  // Constructor for numeric range input
  const factory InputReference.floatRange({
    required String caseName,
    required double minRange,
    required Unit unitType,
    required double maxRange,
  }) = _RangeInput;

  // Toggle values are given as intRange
  // for instance low, mid, high (0,1,2)
  const factory InputReference.intRange({
    required String caseName,
    required int minRange,
    required int maxRange,
    required Unit unitType,
  }) = _IntRangeInput;

  // Constructor for string input based on certain values
  // The allowedStrings are given as a list just in case there are
  // situations where more than one value could be matched.
}
