part of 'dose_form_bloc.dart';

@freezed
class DoseFormEvent with _$DoseFormEvent {
  const factory DoseFormEvent.started() = _Started;
  const factory DoseFormEvent.intial(Option<Dose> intialMedicineOption) =
      _Initialized;
  const factory DoseFormEvent.frequencyChanged(TimeInterval frequency) =
      _FrequencyChanged;
  const factory DoseFormEvent.durationChanged(TimeInterval duration) =
      _DurationChanged;
  const factory DoseFormEvent.amountChanged(int amount) = _AmountChanged;
  const factory DoseFormEvent.saved() = _Saved;
}
