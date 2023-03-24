import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/prescription/prescription.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'patient_visit.freezed.dart';

@freezed
abstract class PatientVisit implements _$PatientVisit {
  const PatientVisit._();
  const factory PatientVisit({
    required UniqueId id,
    required List3<Prescription> treatment,
  }) = _PatientVisit;

  factory PatientVisit.empty() => PatientVisit(
        id: UniqueId(),
        treatment: List3(const KtList.empty()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return treatment
        .getOrCrash()
        .map((prescription) => prescription.failureOption)
        .filter((o) => o.isSome())
        .getOrElse(0, (_) => none())
        .fold(() => right(unit), (f) => left(f))
        .fold((f) => some(f), (_) => none());
    ;
  }
}
