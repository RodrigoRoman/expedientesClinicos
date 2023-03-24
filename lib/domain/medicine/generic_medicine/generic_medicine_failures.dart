import 'package:freezed_annotation/freezed_annotation.dart';
part 'generic_medicine_failures.freezed.dart';

@freezed
abstract class GenericMedicineFailures with _$GenericMedicineFailures {
  const factory GenericMedicineFailures.unexpected() = _Unexpected;
  const factory GenericMedicineFailures.insufficientPermissions() =
      _InsufficientPermission;
  const factory GenericMedicineFailures.unableToUpdate() = _UnableToUpdate;
  const factory GenericMedicineFailures.unableToCreate() = _UnableToCreate;
  const factory GenericMedicineFailures.unableToUploadImage() =
      _UnableToUploadImage;
}
