part of 'time_interval_form_bloc.dart';

@freezed
abstract class TimeIntervalFormState with _$TimeIntervalFormState {
  const factory TimeIntervalFormState(
      {required TimeInterval timeInterval,
      required bool showErrorMessages,
      required bool isUpdating,
      required bool isSaving,
      required Option<Either<TimeIntervalFailure, Unit>>
          saveFailureOrSuccessOption}) = _TimeIntervalFormState;

  factory TimeIntervalFormState.initial() => TimeIntervalFormState(
      timeInterval: TimeInterval.empty(),
      showErrorMessages: false,
      isUpdating: false,
      isSaving: false,
      saveFailureOrSuccessOption: none());
}
