import 'package:freezed_annotation/freezed_annotation.dart';
part 'dose_failures.freezed.dart';

@freezed
abstract class DoseFailures with _$DoseFailures {
  const factory DoseFailures.unexpected() = _Unexpected;
  const factory DoseFailures.insufficientPermissions() =
      _InsufficientPermission;
  const factory DoseFailures.unableToUpdate() = _UnableToUpdate;
  const factory DoseFailures.unableToCreate() = _UnableToCreate;
  const factory DoseFailures.unableToUploadImage() = _UnableToUploadImage;
}
