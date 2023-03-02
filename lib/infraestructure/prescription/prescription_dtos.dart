import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/prescription/prescription.dart';
import 'package:expedientes_clinicos/infraestructure/medicine/medicine_dtos.dart';
import 'package:expedientes_clinicos/infraestructure/time_interval/time_interval_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../indication/indication_dtos.dart';

part 'prescription_dtos.freezed.dart';
part 'prescription_dtos.g.dart';

@freezed
abstract class PrescriptionDto implements _$PrescriptionDto {
  const PrescriptionDto._();
  const factory PrescriptionDto({
    required String id,
    required MedicineDto medicine,
    required int dose,
    required TimeIntervalDto frequency,
    required TimeIntervalDto duration,
    required List<IndicationDto> indications,
  }) = _PrescriptionDto;

  factory PrescriptionDto.fromDomain(Prescription prescription) {
    return PrescriptionDto(
      id: prescription.id.getOrCrash(),
      medicine: MedicineDto.fromDomain(prescription.medicine),
      dose: prescription.dose.getOrCrash(),
      duration: TimeIntervalDto.fromDomain(prescription.duration),
      frequency: TimeIntervalDto.fromDomain(prescription.frequency),
      indications: prescription.indications
          .getOrCrash()
          .map((Indication indication) => IndicationDto.fromDomain(indication))
          .asList(),
    );
  }

  Prescription toDomain() {
    return Prescription(
      id: UniqueId.fromUniqueString(id),
      medicine: medicine.toDomain(),
      dose: NonNegInt(dose),
      frequency: frequency.toDomain(),
      duration: duration.toDomain(),
      indications: List3<Indication>(
          indications.map((dto) => dto.toDomain()).toImmutableList()),
    );
  }

  factory PrescriptionDto.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionDtoFromJson(json);

  factory PrescriptionDto.fromFirestore(DocumentSnapshot doc) {
    return PrescriptionDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
