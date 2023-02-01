import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_failures.freezed.dart';

@freezed
abstract class CategoryFailures with _$CategoryFailures {
  const factory CategoryFailures.unexpected() = _Unexpected;
  const factory CategoryFailures.insufficientPermissions() =
      _InsufficientPermission;
  const factory CategoryFailures.unableToUpdate() = _UnableToUpdate;
  const factory CategoryFailures.unableToCreate() = _UnableToCreate;
  const factory CategoryFailures.unableToDelete() = _UnableToDelete;
  const factory CategoryFailures.unableToUploadImage() = _UnableToUploadImage;
}
