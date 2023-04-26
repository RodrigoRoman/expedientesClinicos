import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/constants.dart';
import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_medicine.freezed.dart';

@freezed
abstract class GenericMedicine implements _$GenericMedicine {
  const GenericMedicine._();
  const factory GenericMedicine({
    required UniqueId id,
    required FullName genericName,
    required NameAbbreviation measureUnit,
    required NonNegDouble amountMeasureUnit,
    required NameAbbreviation administrationRoute,
    required NameAbbreviation pharmaceuticalForm,
    required NonNegInt amountPerPackage,
    required Category category,
    required bool controlled,
    required NonNegInt counter,
  }) = _GenericMedicine;
  factory GenericMedicine.empty() => GenericMedicine(
      id: UniqueId(),
      genericName: FullName(EmptyFormValues.emptyString),
      measureUnit: NameAbbreviation.empty(),
      amountMeasureUnit: NonNegDouble(EmptyFormValues.emptyAmountMeasureUnit),
      administrationRoute: NameAbbreviation.empty(),
      pharmaceuticalForm: NameAbbreviation.empty(),
      amountPerPackage: NonNegInt(EmptyFormValues.emptyAmount),
      category: Category.empty(),
      counter: NonNegInt(EmptyFormValues.emptyAmount),
      controlled: false);

  Option<ValueFailure<dynamic>> get failureOption {
    return genericName.failureOrUnit
        .andThen(amountMeasureUnit.failureOrUnit)
        .andThen(counter.failureOrUnit)
        .andThen(amountPerPackage.failureOrUnit)
        .andThen(category.failureOption.fold(() => right(unit), (f) => left(f)))
        .andThen(pharmaceuticalForm.failureOption
            .fold(() => right(unit), (f) => left(f)))
        .andThen(administrationRoute.failureOption
            .fold(() => right(unit), (f) => left(f)))
        .andThen(
            measureUnit.failureOption.fold(() => right(unit), (f) => left(f)))
        .fold((f) => some(f), (_) => none());
  }

  @override
  bool operator ==(Object other) {
    return other is GenericMedicine &&
        other.genericName == genericName &&
        other.measureUnit == measureUnit &&
        other.amountMeasureUnit == amountMeasureUnit &&
        other.administrationRoute == administrationRoute &&
        other.pharmaceuticalForm == pharmaceuticalForm &&
        other.amountPerPackage == amountPerPackage &&
        other.category == category;
  }
}
