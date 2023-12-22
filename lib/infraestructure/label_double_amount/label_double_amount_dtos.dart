import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/label_double_amount/label_double_amount.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'label_double_amount_dtos.freezed.dart';
part 'label_double_amount_dtos.g.dart';

// List<Timestamp> _timeToJson(List<Timestamp> time) => time;
// List<Timestamp> _timeFromJson(List<Timestamp> json) => json;

@freezed
abstract class LabelDoubleAmountDto implements _$LabelDoubleAmountDto {
  const LabelDoubleAmountDto._();

  const factory LabelDoubleAmountDto(
      {required String id,
      required String label,
      required double amount,
      required int counter}) = _LabelDoubleAmountDto;

  factory LabelDoubleAmountDto.fromDomain(LabelDoubleAmount doseAmount) {
    return LabelDoubleAmountDto(
        id: doseAmount.id.getOrCrash(),
        label: doseAmount.label.getOrCrash(),
        amount: doseAmount.amount.getOrCrash(),
        counter: doseAmount.counter.getOrCrash());
  }

  LabelDoubleAmount toDomain() {
    return LabelDoubleAmount(
        id: UniqueId.fromUniqueString(id),
        label: FullName(label),
        amount: NonNegDouble(amount),
        counter: NonNegInt(counter));
  }

  factory LabelDoubleAmountDto.fromJson(Map<String, dynamic> json) =>
      _$LabelDoubleAmountDtoFromJson(json);

  factory LabelDoubleAmountDto.fromFirestore(DocumentSnapshot doc) {
    return LabelDoubleAmountDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
