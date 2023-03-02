import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/constants.dart';
import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/time_interval.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/medicine/medicine.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'prescription.freezed.dart';

@freezed
abstract class Prescription implements _$Prescription {
  const Prescription._();
  const factory Prescription({
    required UniqueId id,
    required Medicine medicine,
    required NonNegInt dose,
    required TimeInterval frequency,
    required TimeInterval duration,
    required List3<Indication> indications,
  }) = _Prescription;
  factory Prescription.empty() => Prescription(
        id: UniqueId(),
        medicine: Medicine.empty(),
        dose: NonNegInt(EmptyFormValues.emptyAmount),
        duration: TimeInterval.empty(),
        frequency: TimeInterval.empty(),
        indications: List3(const KtList.empty()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return dose.failureOrUnit
        .andThen(medicine.failureOption.fold(() => right(unit), (f) => left(f)))
        .andThen(duration.failureOption.fold(() => right(unit), (f) => left(f)))
        .andThen(
            frequency.failureOption.fold(() => right(unit), (f) => left(f)))
        .andThen(indications
            .getOrCrash()
            .map((orderItem) => orderItem.failureOption)
            .filter((o) => o.isSome())
            .getOrElse(0, (_) => none())
            .fold(() => right(unit), (f) => left(f)))
        .fold((f) => some(f), (_) => none());
  }
}
