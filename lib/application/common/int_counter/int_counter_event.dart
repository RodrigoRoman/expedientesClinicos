part of 'int_counter_bloc.dart';

@freezed
class IntCounterEvent with _$IntCounterEvent {
  const factory IntCounterEvent.initialized(
      Option<int> initialAmount, Option<int> maxAmount) = _Initialized;
  const factory IntCounterEvent.amountUpdated(int newAmount) = _AmountUpdated;
  const factory IntCounterEvent.maxAmountUpdated(int addSubtractAmount) =
      _MaxAmountUpdated;
  const factory IntCounterEvent.amountIncreased() = _AmountIncreased;
  const factory IntCounterEvent.amountDecreased() = _AmountDecreased;
}
