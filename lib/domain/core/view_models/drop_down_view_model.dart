import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/constants.dart';
import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication.dart';
import 'package:expedientes_clinicos/domain/core/label_double_amount/label_double_amount.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/time_interval.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/medicine/branded_medicine/branded_medicine.dart';
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/generic_medicine.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/day_hours_doses.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/week_days_dose.dart';
import 'package:expedientes_clinicos/domain/utils/helper_functions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'drop_down_view_model.freezed.dart';

// This is the object used for the dropDownsSearch widget elements
// It is a flexible object that covers all the possible variations
// of a elements.

@freezed
abstract class DropdownItemViewModel implements _$DropdownItemViewModel {
  const DropdownItemViewModel._();
  const factory DropdownItemViewModel(
      {required UniqueId id,
      required FullName title,
      FullName? subtitle,
      ImageURL? imageURL,
      GenericMedicine? originGenericMedicine,
      BrandedMedicine? originBrandedMedicine,
      NameAbbreviation? nameAbbreviation,
      Indication? indication,
      LabelDoubleAmount? labelDoubleAmount,
      DayHoursDose? dayHoursDose,
      WeekDaysDose? weekDaysDose,
      TimeInterval? timeInterval,
      Category? category}) = _DropdownItemViewModel;

  factory DropdownItemViewModel.empty() => DropdownItemViewModel(
      id: UniqueId(),
      title: FullName(EmptyFormValues.emptyString),
      subtitle: FullName(EmptyFormValues.emptyString),
      imageURL: ImageURL(EmptyFormValues.medicineURLImage));

  factory DropdownItemViewModel.fromBrandedMedicine(BrandedMedicine medicine) {
    return DropdownItemViewModel(
      id: medicine.id,
      title: medicine.comercialName,
      subtitle: FullName(
          '${medicine.genericMedicine.genericName.value.fold((l) => '', (r) => r)} ${medicine.genericMedicine.amountMeasureUnit.value.fold((l) => '', (r) => r)} ${medicine.genericMedicine.measureUnit.abbr.value.fold((l) => '', (r) => r)} con ${medicine.genericMedicine.amountPerPackage.value.fold((l) => '', (r) => r.toString())} ${medicine.genericMedicine.pharmaceuticalForm.abbr.value.fold((l) => '', (r) => r)}'),
      imageURL: medicine.imageURL,
      originBrandedMedicine: medicine,
    );
  }
  factory DropdownItemViewModel.fromGenericMedicine(GenericMedicine medicine) {
    return DropdownItemViewModel(
        id: medicine.id,
        title: medicine.genericName,
        subtitle: FullName(
            '${medicine.amountMeasureUnit.value.fold((l) => '', (r) => r)} ${medicine.measureUnit.abbr.value.fold((l) => '', (r) => r)} con ${medicine.amountPerPackage.value.fold((l) => '', (r) => r.toString())} ${medicine.pharmaceuticalForm.abbr.value.fold((l) => '', (r) => r)}'),
        originGenericMedicine: medicine);
  }
  factory DropdownItemViewModel.fromIndication(Indication indication) {
    return DropdownItemViewModel(
      id: indication.id,
      title: indication.indicationName,
      subtitle: FullName(indication.indicationCategory.name.value
          .fold((l) => '', (r) => r)
          .toString()),
      imageURL: indication.indicationCategory.imageUrl,
      indication: indication,
    );
  }
  factory DropdownItemViewModel.fromCategory(Category category) {
    return DropdownItemViewModel(
        id: category.id,
        title: category.name.value
            .fold((l) => FullName(l.failedValue), (r) => FullName(r)),
        imageURL: category.imageUrl,
        category: category);
  }

  factory DropdownItemViewModel.fromLabelDoubleAmount(
      LabelDoubleAmount labelDoubleAmount) {
    return DropdownItemViewModel(
        id: labelDoubleAmount.id,
        title: labelDoubleAmount.label,
        subtitle: FullName(labelDoubleAmount.amount.value
            .fold((l) => "0.0", (r) => r.toString())),
        labelDoubleAmount: labelDoubleAmount);
  }

  factory DropdownItemViewModel.fromNameAbbreviation(
      NameAbbreviation nameAbbreviation) {
    return DropdownItemViewModel(
        id: nameAbbreviation.id,
        title: nameAbbreviation.name,
        subtitle: FullName(
            nameAbbreviation.abbr.value.fold((l) => '', (r) => r).toString()),
        nameAbbreviation: nameAbbreviation);
  }
  factory DropdownItemViewModel.fromDayHoursDose(DayHoursDose dayHoursDose) {
    return DropdownItemViewModel(
        id: dayHoursDose.id,
        title: dayHoursDose.label,
        subtitle: FullName(dayHoursDose.formattedDoseHours),
        dayHoursDose: dayHoursDose);
  }

  factory DropdownItemViewModel.fromWeekDays(WeekDaysDose weekDaysDose) {
    return DropdownItemViewModel(
        id: weekDaysDose.id,
        title: weekDaysDose.label,
        subtitle: FullName(weekDaysDose.weekDaysNames),
        weekDaysDose: weekDaysDose);
  }
  factory DropdownItemViewModel.fromTimeInterval(TimeInterval timeInterval) {
    return DropdownItemViewModel(
        id: timeInterval.id,
        title: timeInterval.label,
        subtitle: FullName(timeInterval.timeDuration.value
            .fold((l) => "0", (r) => daysWeekMonth(r))),
        timeInterval: timeInterval);
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit.fold((f) => some(f), (_) => none());
  }

  @override
  bool operator ==(Object other) {
    return other is DropdownItemViewModel && other.id == this.id;
  }
}
