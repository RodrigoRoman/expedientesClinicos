import 'package:freezed_annotation/freezed_annotation.dart';
part 'prescription_failures.freezed.dart';

@freezed
abstract class PrescriptionFailures with _$PrescriptionFailures {
  const factory PrescriptionFailures.unexpected() = _Unexpected;
  const factory PrescriptionFailures.insufficientPermissions() =
      _InsufficientPermission;
  const factory PrescriptionFailures.unableToUpdate() = _UnableToUpdate;
  const factory PrescriptionFailures.unableToCreate() = _UnableToCreate;
  const factory PrescriptionFailures.unableToUploadImage() =
      _UnableToUploadImage;
}
