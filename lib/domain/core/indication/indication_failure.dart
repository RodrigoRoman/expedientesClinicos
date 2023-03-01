import 'package:freezed_annotation/freezed_annotation.dart';

part 'indication_failure.freezed.dart';

@freezed
abstract class IndicationFailure with _$IndicationFailure {
  const factory IndicationFailure.unexpected() = _Unexpected;
  const factory IndicationFailure.insufficientPermissions() =
      _InsufficientPermission;
  const factory IndicationFailure.unableToCreate() = _UnableToCreate;
  const factory IndicationFailure.unableToUpdate() = _UnableToUpdate;
}
