import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/constants.dart';
import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/generic_medicine.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'branded_medicine.freezed.dart';

@freezed
abstract class BrandedMedicine implements _$BrandedMedicine {
  const BrandedMedicine._();
  const factory BrandedMedicine({
    required UniqueId id,
    required FullName comercialName,
    required NonNegInt existence,
    required NonNegInt optimum,
    required ImageURL imageURL,
    required NonNegInt counter,
    required GenericMedicine genericMedicine,
  }) = _BrandedMedicine;

  factory BrandedMedicine.empty() => BrandedMedicine(
        id: UniqueId(),
        comercialName: FullName(EmptyFormValues.emptyString),
        optimum: NonNegInt(EmptyFormValues.emptyAmount),
        existence: NonNegInt(EmptyFormValues.emptyAmount),
        counter: NonNegInt(EmptyFormValues.emptyAmount),
        imageURL: ImageURL(EmptyFormValues.medicineURLImage),
        genericMedicine: GenericMedicine.empty(),
      );
  bool get isEmpty {
    return comercialName == FullName(EmptyFormValues.emptyString) &&
        comercialName == FullName(EmptyFormValues.emptyString) &&
        optimum == NonNegInt(EmptyFormValues.emptyAmount) &&
        existence == NonNegInt(EmptyFormValues.emptyAmount) &&
        counter == NonNegInt(EmptyFormValues.emptyAmount) &&
        imageURL == ImageURL(EmptyFormValues.medicineURLImage) &&
        genericMedicine == GenericMedicine.empty();
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return comercialName.failureOrUnit
        .andThen(existence.failureOrUnit)
        .andThen(optimum.failureOrUnit)
        .andThen(counter.failureOrUnit)
        .andThen(imageURL.failureOrUnit)
        .andThen(genericMedicine.failureOption
            .fold(() => right(unit), (f) => left(f)))
        .fold((f) => some(f), (_) => none());
  }
}
