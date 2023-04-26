import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/constants.dart';
import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/time_interval.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/day_hours_doses.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/dose_amount.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/week_days_dose.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'label_dose_times_view_model.freezed.dart';

@freezed
abstract class LabelDoseTimesViewModel implements _$LabelDoseTimesViewModel {
  const LabelDoseTimesViewModel._();
  const factory LabelDoseTimesViewModel({
    required FullName label,
    required DayHoursDose dayHoursDose,
    required DoseAmount doseAmount,
    required TimeInterval timeInterval,
    required WeekDaysDose weekDaysDose,
    required Dose dose,
  }) = _LabelDoseTimesViewModel;

  factory LabelDoseTimesViewModel.empty() => LabelDoseTimesViewModel(
      label: FullName(EmptyFormValues.emptyString),
      dayHoursDose: DayHoursDose.empty(),
      doseAmount: DoseAmount.empty(),
      timeInterval: TimeInterval.empty(),
      weekDaysDose: WeekDaysDose.empty(),
      dose: Dose.empty());

  factory LabelDoseTimesViewModel.fromDayHoursDose(DayHoursDose dayHoursDose) {
    return LabelDoseTimesViewModel(
        label: dayHoursDose.label,
        dayHoursDose: dayHoursDose,
        timeInterval: TimeInterval.empty(),
        doseAmount: DoseAmount.empty(),
        weekDaysDose: WeekDaysDose.empty(),
        dose: Dose.empty());
  }

  factory LabelDoseTimesViewModel.fromDoseAmount(DoseAmount doseAmount) {
    return LabelDoseTimesViewModel(
        label: doseAmount.label,
        dayHoursDose: DayHoursDose.empty(),
        timeInterval: TimeInterval.empty(),
        doseAmount: doseAmount,
        weekDaysDose: WeekDaysDose.empty(),
        dose: Dose.empty());
  }

  factory LabelDoseTimesViewModel.fromTimeInterval(TimeInterval timeInterval) {
    return LabelDoseTimesViewModel(
        label: timeInterval.label,
        dayHoursDose: DayHoursDose.empty(),
        doseAmount: DoseAmount.empty(),
        timeInterval: timeInterval,
        weekDaysDose: WeekDaysDose.empty(),
        dose: Dose.empty());
  }

  factory LabelDoseTimesViewModel.fromWeekDays(WeekDaysDose weekDaysDose) {
    return LabelDoseTimesViewModel(
        label: weekDaysDose.label,
        dayHoursDose: DayHoursDose.empty(),
        doseAmount: DoseAmount.empty(),
        timeInterval: TimeInterval.empty(),
        weekDaysDose: weekDaysDose,
        dose: Dose.empty());
  }

  factory LabelDoseTimesViewModel.fromDose(Dose dose) {
    return LabelDoseTimesViewModel(
        label: dose.label,
        dayHoursDose: DayHoursDose.empty(),
        doseAmount: DoseAmount.empty(),
        timeInterval: TimeInterval.empty(),
        weekDaysDose: WeekDaysDose.empty(),
        dose: dose);
  }
  Option<ValueFailure<dynamic>> get failureOption {
    return label.failureOrUnit.fold((f) => some(f), (_) => none());
  }

  bool operator ==(dynamic other) {
    if (identical(this, other)) return true;
    return other is LabelDoseTimesViewModel &&
        label == other.label &&
        dayHoursDose == other.dayHoursDose &&
        doseAmount == other.doseAmount &&
        timeInterval == other.timeInterval &&
        weekDaysDose == other.weekDaysDose;
  }
}
