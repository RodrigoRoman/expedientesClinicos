import 'package:freezed_annotation/freezed_annotation.dart';
part 'week_days_dose_failures.freezed.dart';

@freezed
abstract class WeekDaysDoseFailures with _$WeekDaysDoseFailures {
  const factory WeekDaysDoseFailures.unexpected() = _Unexpected;
  const factory WeekDaysDoseFailures.insufficientPermissions() =
      _InsufficientPermission;
  const factory WeekDaysDoseFailures.invalidSelectedHours() =
      _InvalidSelectedHours;
  const factory WeekDaysDoseFailures.unableToUpdate() = _UnableToUpdate;
  const factory WeekDaysDoseFailures.unableToCreate() = _UnableToCreate;
}
