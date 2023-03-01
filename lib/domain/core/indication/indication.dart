import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'indication.freezed.dart';

@freezed
abstract class Indication implements _$Indication {
  const Indication._();
  const factory Indication(
      {required UniqueId id,
      required Category indicationCategory,
      required FullName indicationName,
      required NonNegInt counter}) = _Indication;

  factory Indication.empty() => Indication(
      id: UniqueId(),
      indicationCategory: Category.empty(),
      indicationName: FullName(''),
      counter: NonNegInt(0));
  Option<ValueFailure<dynamic>> get failureOption {
    return indicationName.failureOrUnit
        .andThen(counter.failureOrUnit)
        .andThen(indicationCategory.failureOption
            .fold(() => right(unit), (f) => left(f)))
        .fold((f) => some(f), (_) => none());
  }

  @override
  bool operator ==(Object other) {
    return other is Indication &&
        other.indicationCategory == indicationCategory &&
        other.indicationName == indicationName;
  }
}
