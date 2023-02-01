part of 'double_counter_bloc.dart';

@freezed
class DoubleCounterEvent with _$DoubleCounterEvent {
  const factory DoubleCounterEvent.initialized(
      Option<double> initialAmount, Option<double> maxAmount) = _Initialized;
  const factory DoubleCounterEvent.amountUpdated(double newAmount) =
      _AmountUpdated;
  const factory DoubleCounterEvent.maxAmountUpdated(double addSubtractAmount) =
      _MaxAmountUpdated;
  const factory DoubleCounterEvent.amountIncreased() = _AmountIncreased;
  const factory DoubleCounterEvent.amountDecreased() = _AmountDecreased;
}
