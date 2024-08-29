import 'package:freezed_annotation/freezed_annotation.dart';
part 'dynamic_form_failures.freezed.dart';

@freezed
abstract class DynamicFormFailures with _$DynamicFormFailures {
  const factory DynamicFormFailures.unexpected() = _Unexpected;
  const factory DynamicFormFailures.database() = _Database;

  const factory DynamicFormFailures.insufficientPermissions() =
      _InsufficientPermission;
  const factory DynamicFormFailures.unableToUpdate() = _UnableToUpdate;
  const factory DynamicFormFailures.unableToCreate() = _UnableToCreate;
  const factory DynamicFormFailures.unableToUploadImage() =
      _UnableToUploadImage;
}
