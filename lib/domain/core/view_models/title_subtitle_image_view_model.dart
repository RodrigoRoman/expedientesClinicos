import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/constants.dart';
import 'package:expedientes_clinicos/domain/core/failures.dart';
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
  }) = _TitleSubtitleImageViewModel;

  factory TitleSubtitleImageViewModel.empty() => TitleSubtitleImageViewModel(
        title: FullName(EmptyFormValues.emptyString),
        subtitle: FullName(EmptyFormValues.emptyString),
        imageURL: ImageURL(EmptyFormValues.medicineURLImage),
      );

  factory TitleSubtitleImageViewModel.fromBrandedMedicine(
      BrandedMedicine medicine) {
    return TitleSubtitleImageViewModel(
      title: medicine.comercialName,
      subtitle: FullName(
          medicine.genericMedicine.genericName.value.fold((l) => '', (r) => r) +
              medicine.genericMedicine.amountMeasureUnit.value
                  .fold((l) => '', (r) => r)
                  .toString() +
              medicine.genericMedicine.measureUnit.abbr.value
                  .fold((l) => '', (r) => r)),
      imageURL: medicine.imageURL,
    );
  }
  factory TitleSubtitleImageViewModel.fromGenericMedicine(
      GenericMedicine medicine) {
    return TitleSubtitleImageViewModel(
        title: medicine.genericName,
        subtitle: FullName(medicine.amountMeasureUnit.value
                .fold((l) => '', (r) => r)
                .toString() +
            medicine.measureUnit.abbr.value.fold((l) => '', (r) => r)),
        imageURL: ImageURL(''));
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit
        .andThen(subtitle.failureOrUnit)
        .andThen(imageURL.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
