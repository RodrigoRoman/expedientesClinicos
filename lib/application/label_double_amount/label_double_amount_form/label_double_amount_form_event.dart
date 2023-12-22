part of 'label_double_amount_form_bloc.dart';

@freezed
class LabelDoubleAmountFormEvent with _$LabelDoubleAmountFormEvent {
  const factory LabelDoubleAmountFormEvent.intial(
      Option<LabelDoubleAmount> initialLabelDoubleAmountOption) = _Initialized;
  const factory LabelDoubleAmountFormEvent.labelChanged(String label) =
      _LabelChanged;
  const factory LabelDoubleAmountFormEvent.amountChanged(double amount) =
      _AmountChanged;
  const factory LabelDoubleAmountFormEvent.saved() = _Saved;
}
