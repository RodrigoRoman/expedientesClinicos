import 'package:freezed_annotation/freezed_annotation.dart';
part 'dose_amount_failures.freezed.dart';

@freezed
abstract class DoseAmountFailures with _$DoseAmountFailures {
  const factory DoseAmountFailures.unexpected() = _Unexpected;
  const factory DoseAmountFailures.insufficientPermissions() =
      _InsufficientPermission;
  const factory DoseAmountFailures.invalidSelectedHours() =
      _InvalidSelectedHours;
  const factory DoseAmountFailures.unableToUpdate() = _UnableToUpdate;
  const factory DoseAmountFailures.unableToCreate() = _UnableToCreate;
}
