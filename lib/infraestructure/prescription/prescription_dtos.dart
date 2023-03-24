import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/prescription/prescription.dart';
import 'package:expedientes_clinicos/infraestructure/medicine/branded_medicine/branded_medicine_dtos.dart';
import 'package:expedientes_clinicos/infraestructure/medicine/dose/dose_dtos.dart';
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
    required BrandedMedicineDto medicine,
    required DoseDto dose,
    required List<IndicationDto> indications,
  }) = _PrescriptionDto;

  factory PrescriptionDto.fromDomain(Prescription prescription) {
    return PrescriptionDto(
      id: prescription.id.getOrCrash(),
      medicine: BrandedMedicineDto.fromDomain(prescription.medicine),
      dose: DoseDto.fromDomain(prescription.dose),
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
      dose: dose.toDomain(),
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
