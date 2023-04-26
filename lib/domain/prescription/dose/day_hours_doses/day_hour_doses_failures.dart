import 'package:freezed_annotation/freezed_annotation.dart';
part 'day_hour_doses_failures.freezed.dart';

@freezed
abstract class DayHoursDoseFailures with _$DayHoursDoseFailures {
  const factory DayHoursDoseFailures.unexpected() = _Unexpected;
  const factory DayHoursDoseFailures.insufficientPermissions() =
      _InsufficientPermission;
  const factory DayHoursDoseFailures.invalidSelectedHours() =
      _InvalidSelectedHours;
  const factory DayHoursDoseFailures.unableToUpdate() = _UnableToUpdate;
  const factory DayHoursDoseFailures.unableToCreate() = _UnableToCreate;
}
