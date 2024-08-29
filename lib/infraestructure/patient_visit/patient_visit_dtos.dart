import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/patient_visit/patient_visit.dart';
import 'package:expedientes_clinicos/domain/prescription/prescription.dart';
import 'package:expedientes_clinicos/infraestructure/category/category_dtos.dart';
import 'package:expedientes_clinicos/infraestructure/prescription/prescription_dtos.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../indication/indication_dtos.dart';

part 'patient_visit_dtos.freezed.dart';
part 'patient_visit_dtos.g.dart';

Timestamp _timeToJson(Timestamp time) => time;
Timestamp _timeFromJson(Timestamp json) => json;

@freezed
abstract class PatientVisitDto implements _$PatientVisitDto {
  const PatientVisitDto._();
  const factory PatientVisitDto({
    required String id,
    @JsonKey(fromJson: _timeToJson, toJson: _timeFromJson)
    required Timestamp dateTimeVisit,
    required CategoryDto visitTypeDto,
    required List<PrescriptionDto> treatment,
  }) = _PatientVisitDto;

  factory PatientVisitDto.fromDomain(PatientVisit patientVisit) {
    return PatientVisitDto(
      id: patientVisit.id.getOrCrash(),
      dateTimeVisit: Timestamp.fromDate(patientVisit.dateTimeVisit),
      visitTypeDto: CategoryDto.fromDomain(patientVisit.visitType),
      treatment: patientVisit.treatment
          .getOrCrash()
          .map((Prescription prescription) =>
              PrescriptionDto.fromDomain(prescription))
          .asList(),
    );
  }

  PatientVisit toDomain() {
    return PatientVisit(
      id: UniqueId.fromUniqueString(id),
      dateTimeVisit: dateTimeVisit.toDate(),
      visitType: visitTypeDto.toDomain(),
      treatment: List3<Prescription>(
          treatment.map((dto) => dto.toDomain()).toImmutableList()),
    );
  }

  factory PatientVisitDto.fromJson(Map<String, dynamic> json) =>
      _$PatientVisitDtoFromJson(json);

  factory PatientVisitDto.fromFirestore(DocumentSnapshot doc) {
    return PatientVisitDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
