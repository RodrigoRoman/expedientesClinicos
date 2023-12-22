part of 'time_interval_form_bloc.dart';

@freezed
abstract class TimeIntervalFormState with _$TimeIntervalFormState {
  const factory TimeIntervalFormState(
      {required TimeInterval timeInterval,
      required int months,
      required int weeks,
      required int days,
      required bool showErrorMessages,
      required bool isUpdating,
      required bool isSaving,
      required Option<Either<TimeIntervalFailure, Unit>>
          saveFailureOrSuccessOption}) = _TimeIntervalFormState;

  factory TimeIntervalFormState.initial() => TimeIntervalFormState(
      timeInterval: TimeInterval.empty(),
      months: 0,
      weeks: 0,
      days: 0,
      showErrorMessages: false,
      isUpdating: false,
      isSaving: false,
      saveFailureOrSuccessOption: none());
}
