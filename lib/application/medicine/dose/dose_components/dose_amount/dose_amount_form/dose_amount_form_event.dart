part of 'dose_amount_form_bloc.dart';

@freezed
class DoseAmountFormEvent with _$DoseAmountFormEvent {
  const factory DoseAmountFormEvent.intial(
      Option<DoseAmount> initialDoseAmountOption) = _Initialized;
  const factory DoseAmountFormEvent.labelChanged(String label) = _LabelChanged;
  const factory DoseAmountFormEvent.amountChanged(double amount) =
      _AmountChanged;
  const factory DoseAmountFormEvent.saved() = _Saved;
}
