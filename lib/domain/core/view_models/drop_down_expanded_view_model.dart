import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/constants.dart';
import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/prescription/prescription.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'drop_down_expanded_view_model.freezed.dart';

// This is the object used for the dropDownsSearch widget elements
// It is a flexible object that covers all the possible variations
// of a elements.

@freezed
abstract class DropdownExpandedItemViewModel
    implements _$DropdownExpandedItemViewModel {
  const DropdownExpandedItemViewModel._();
  const factory DropdownExpandedItemViewModel({
    required UniqueId id,
    required FullName title,
    FullName? subtitle,
    ImageURL? imageURL,
    FullName? column1,
    FullName? column2,
    FullName? column3,
    required List3<Indication> listIndications,
    Prescription? prescription,
  }) = _DropdownExpandedItemViewModel;

  factory DropdownExpandedItemViewModel.empty() =>
      DropdownExpandedItemViewModel(
          id: UniqueId(),
          title: FullName(EmptyFormValues.emptyString),
          subtitle: FullName(EmptyFormValues.emptyString),
          imageURL: ImageURL(EmptyFormValues.medicineURLImage),
          listIndications: List3(KtList.empty()));

  factory DropdownExpandedItemViewModel.fromPrescription(
      Prescription prescription) {
    return DropdownExpandedItemViewModel(
        id: prescription.id,
        title: prescription.medicine.comercialName,
        subtitle: FullName(
            '${prescription.medicine.genericMedicine.genericName.value.fold((l) => '', (r) => r)} ${prescription.medicine.genericMedicine.amountMeasureUnit.value.fold((l) => '', (r) => r)} ${prescription.medicine.genericMedicine.measureUnit.abbr.value.fold((l) => '', (r) => r)} con ${prescription.medicine.genericMedicine.amountPerPackage.value.fold((l) => '', (r) => r.toString())} ${prescription.medicine.genericMedicine.pharmaceuticalForm.abbr.value.fold((l) => '', (r) => r)}'),
        imageURL: prescription.medicine.imageURL,
        column1: FullName(
            '${prescription.doseAmount.amount.value.fold((l) => '', (r) => r)} ${prescription.abbreviationUnit} ${prescription.dose.dayHoursDose.label.value.fold((l) => '', (r) => r)}'),
        column2: prescription.dose.weekDays.label,
        column3: prescription.dose.duration.label,
        listIndications: prescription.indications,
        prescription: prescription);
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit.fold((f) => some(f), (_) => none());
  }

  @override
  bool operator ==(Object other) {
    return other is DropdownExpandedItemViewModel && other.id == this.id;
  }
}
