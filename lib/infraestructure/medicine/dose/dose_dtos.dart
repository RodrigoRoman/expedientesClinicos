import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/medicine/branded_medicine/branded_medicine.dart';
import 'package:expedientes_clinicos/domain/medicine/dose/dose.dart';
import 'package:expedientes_clinicos/infraestructure/medicine/generic_medicine/generic_medicine_dtos.dart';
import 'package:expedientes_clinicos/infraestructure/time_interval/time_interval_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dose_dtos.freezed.dart';
part 'dose_dtos.g.dart';

@freezed
abstract class DoseDto implements _$DoseDto {
  const DoseDto._();

  const factory DoseDto({
    required String id,
    required TimeIntervalDto frequency,
    required TimeIntervalDto duration,
    required int amount,
    required int counter,
  }) = _DoseDto;

  factory DoseDto.fromDomain(Dose dose) {
    return DoseDto(
      id: dose.id.getOrCrash(),
      frequency: TimeIntervalDto.fromDomain(dose.frequency),
      duration: TimeIntervalDto.fromDomain(dose.duration),
      amount: dose.amount.getOrCrash(),
      counter: dose.counter.getOrCrash(),
    );
  }

  Dose toDomain() {
    return Dose(
      id: UniqueId.fromUniqueString(id),
      frequency: frequency.toDomain(),
      duration: duration.toDomain(),
      amount: NonNegInt(amount),
      counter: NonNegInt(counter),
    );
  }

  factory DoseDto.fromJson(Map<String, dynamic> json) =>
      _$DoseDtoFromJson(json);

  factory DoseDto.fromFirestore(DocumentSnapshot doc) {
    return DoseDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
