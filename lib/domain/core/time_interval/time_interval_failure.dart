import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_interval_failure.freezed.dart';

@freezed
abstract class TimeIntervalFailure with _$TimeIntervalFailure {
  const factory TimeIntervalFailure.unexpected() = _Unexpected;
  const factory TimeIntervalFailure.insufficientPermissions() =
      _InsufficientPermission;
  const factory TimeIntervalFailure.unableToCreate() = _UnableToCreate;
  const factory TimeIntervalFailure.unableToUpdate() = _UnableToUpdate;
}
