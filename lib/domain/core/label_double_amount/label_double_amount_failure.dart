import 'package:freezed_annotation/freezed_annotation.dart';
part 'label_double_amount_failure.freezed.dart';

@freezed
abstract class LabelDoubleAmountFailure with _$LabelDoubleAmountFailure {
  const factory LabelDoubleAmountFailure.unexpected() = _Unexpected;
  const factory LabelDoubleAmountFailure.insufficientPermissions() =
      _InsufficientPermission;
  const factory LabelDoubleAmountFailure.invalidSelectedHours() =
      _InvalidSelectedHours;
  const factory LabelDoubleAmountFailure.unableToUpdate() = _UnableToUpdate;
  const factory LabelDoubleAmountFailure.unableToCreate() = _UnableToCreate;
}
