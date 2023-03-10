part of 'time_interval_form_bloc.dart';

@freezed
class TimeIntervalFormEvent with _$TimeIntervalFormEvent {
  const factory TimeIntervalFormEvent.initialized(
      Option<TimeInterval> intitialTimeInterval) = _Initialized;
  const factory TimeIntervalFormEvent.onIntervalNameChanged(String label) =
      _IntervalNameChanged;
  const factory TimeIntervalFormEvent.onIntervalDurationChanged(
      Duration intervalDuration) = _IntervalDurationChanged;
  const factory TimeIntervalFormEvent.saved() = _Saved;
}
