import 'package:freezed_annotation/freezed_annotation.dart';

part 'name_abbr_failure.freezed.dart';

@freezed
abstract class NameAbbreviationFailure with _$NameAbbreviationFailure {
  const factory NameAbbreviationFailure.unexpected() = _Unexpected;
  const factory NameAbbreviationFailure.insufficientPermissions() =
      _InsufficientPermission;
  const factory NameAbbreviationFailure.unableToCreate() = _UnableToCreate;
  const factory NameAbbreviationFailure.unableToUpdate() = _UnableToUpdate;
}
