import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/constants.dart';
import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/medicine/branded_medicine/branded_medicine.dart';
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/generic_medicine.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'title_subtitle_image_view_model.freezed.dart';

@freezed
abstract class TitleSubtitleImageViewModel
    implements _$TitleSubtitleImageViewModel {
  const TitleSubtitleImageViewModel._();
  const factory TitleSubtitleImageViewModel({
    required FullName title,
    required FullName subtitle,
    required ImageURL imageURL,
    required GenericMedicine originGenericMedicine,
    required BrandedMedicine originBrandedMedicine,
    required Indication indication,
  }) = _TitleSubtitleImageViewModel;

  factory TitleSubtitleImageViewModel.empty() => TitleSubtitleImageViewModel(
      title: FullName(EmptyFormValues.emptyString),
      subtitle: FullName(EmptyFormValues.emptyString),
      imageURL: ImageURL(EmptyFormValues.medicineURLImage),
      indication: Indication.empty(),
      originBrandedMedicine: BrandedMedicine.empty(),
      originGenericMedicine: GenericMedicine.empty());

  factory TitleSubtitleImageViewModel.fromBrandedMedicine(
      BrandedMedicine medicine) {
    return TitleSubtitleImageViewModel(
        title: medicine.comercialName,
        subtitle: FullName(medicine.genericMedicine.genericName.value
                .fold((l) => '', (r) => r) +
            ' ' +
            medicine.genericMedicine.amountMeasureUnit.value
                .fold((l) => '', (r) => r)
                .toString() +
            ' ' +
            medicine.genericMedicine.measureUnit.abbr.value
                .fold((l) => '', (r) => r) +
            ' con ' +
            medicine.genericMedicine.amountPerPackage.value
                .fold((l) => '', (r) => r.toString()) +
            ' ' +
            medicine.genericMedicine.pharmaceuticalForm.abbr.value
                .fold((l) => '', (r) => r)),
        indication: Indication.empty(),
        imageURL: medicine.imageURL,
        originBrandedMedicine: medicine,
        originGenericMedicine: GenericMedicine.empty());
  }
  factory TitleSubtitleImageViewModel.fromGenericMedicine(
      GenericMedicine medicine) {
    return TitleSubtitleImageViewModel(
        title: medicine.genericName,
        subtitle: FullName(medicine.amountMeasureUnit.value
                .fold((l) => '', (r) => r)
                .toString() +
            ' ' +
            medicine.measureUnit.abbr.value
                .fold((l) => '', (r) => r)
                .toString() +
            ' con ' +
            medicine.amountPerPackage.value
                .fold((l) => '', (r) => r.toString()) +
            ' ' +
            medicine.pharmaceuticalForm.abbr.value.fold((l) => '', (r) => r)),
        imageURL: ImageURL(''),
        indication: Indication.empty(),
        originGenericMedicine: medicine,
        originBrandedMedicine: BrandedMedicine.empty());
  }
  factory TitleSubtitleImageViewModel.fromIndication(Indication indication) {
    return TitleSubtitleImageViewModel(
        title: indication.indicationName,
        subtitle: FullName(indication.indicationCategory.name.value
            .fold((l) => '', (r) => r)
            .toString()),
        imageURL: indication.indicationCategory.imageUrl,
        indication: indication,
        originGenericMedicine: GenericMedicine.empty(),
        originBrandedMedicine: BrandedMedicine.empty());
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit
        .andThen(subtitle.failureOrUnit)
        .andThen(imageURL.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
