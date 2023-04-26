import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/medicine/branded_medicine/branded_medicine.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/dose_amount.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'prescription.freezed.dart';

@freezed
abstract class Prescription implements _$Prescription {
  const Prescription._();
  const factory Prescription({
    required UniqueId id,
    required BrandedMedicine medicine,
    required DoseAmount doseAmount,
    required Dose dose,
    required List3<Indication> indications,
  }) = _Prescription;
  factory Prescription.empty() => Prescription(
        id: UniqueId(),
        medicine: BrandedMedicine.empty(),
        doseAmount: DoseAmount.empty(),
        dose: Dose.empty(),
        indications: List3(const KtList.empty()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return medicine.failureOption
        .fold(() => right(unit), (f) => left(f))
        .andThen(dose.failureOption.fold(() => right(unit), (f) => left(f)))
        .andThen(
            doseAmount.failureOption.fold(() => right(unit), (f) => left(f)))
        .andThen(indications
            .getOrCrash()
            .map((indication) => indication.failureOption)
            .filter((o) => o.isSome())
            .getOrElse(0, (_) => none())
            .fold(() => right(unit), (f) => left(f)))
        .fold((f) => some(f), (_) => none());
  }
}
