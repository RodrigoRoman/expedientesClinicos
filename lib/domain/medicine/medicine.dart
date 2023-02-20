import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/constants.dart';
import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'medicine.freezed.dart';

@freezed
abstract class Medicine implements _$Medicine {
  const Medicine._();
  const factory Medicine({
    required UniqueId id,
    required FullName comercialName,
    required FullName genericName,
    required NameAbbreviation measureUnit,
    required NonNegDouble amountMeasureUnit,
    required NameAbbreviation administrationRoute,
    required NameAbbreviation pharmaceuticalForm,
    required NonNegInt amountPerPackage,
    required Category category,
    required ImageURL imageURL,
    required bool controlled,
    required NonNegInt counter,
  }) = _Medicine;
  factory Medicine.empty() => Medicine(
      id: UniqueId(),
      comercialName: FullName(EmptyFormValues.emptyString),
      genericName: FullName(EmptyFormValues.emptyString),
      measureUnit: NameAbbreviation.empty(),
      amountMeasureUnit: NonNegDouble(EmptyFormValues.emptyAmountMeasureUnit),
      administrationRoute: NameAbbreviation.empty(),
      pharmaceuticalForm: NameAbbreviation.empty(),
      amountPerPackage: NonNegInt(EmptyFormValues.emptyAmount),
      category: Category.empty(),
      counter: NonNegInt(EmptyFormValues.emptyAmount),
      imageURL: ImageURL(EmptyFormValues.medicineURLImage),
      controlled: false);

  Option<ValueFailure<dynamic>> get failureOption {
    return comercialName.failureOrUnit
        .andThen(genericName.failureOrUnit)
        .andThen(amountMeasureUnit.failureOrUnit)
        .andThen(imageURL.failureOrUnit)
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
}
