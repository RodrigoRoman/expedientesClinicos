import 'package:freezed_annotation/freezed_annotation.dart';
part 'medicine_failures.freezed.dart';

@freezed
abstract class MedicineFailures with _$MedicineFailures {
  const factory MedicineFailures.unexpected() = _Unexpected;
  const factory MedicineFailures.insufficientPermissions() =
      _InsufficientPermission;
  const factory MedicineFailures.unableToUpdate() = _UnableToUpdate;
  const factory MedicineFailures.unableToCreate() = _UnableToCreate;
  const factory MedicineFailures.unableToUploadImage() = _UnableToUploadImage;
}
