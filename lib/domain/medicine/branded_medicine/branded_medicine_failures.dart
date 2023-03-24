import 'package:freezed_annotation/freezed_annotation.dart';
part 'branded_medicine_failures.freezed.dart';

@freezed
abstract class BrandedMedicineFailures with _$BrandedMedicineFailures {
  const factory BrandedMedicineFailures.unexpected() = _Unexpected;
  const factory BrandedMedicineFailures.insufficientPermissions() =
      _InsufficientPermission;
  const factory BrandedMedicineFailures.unableToUpdate() = _UnableToUpdate;
  const factory BrandedMedicineFailures.unableToCreate() = _UnableToCreate;
  const factory BrandedMedicineFailures.unableToUploadImage() =
      _UnableToUploadImage;
}
