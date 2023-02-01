part of 'double_counter_bloc.dart';

@freezed
abstract class DoubleCounterState with _$DoubleCounterState {
  const factory DoubleCounterState(
      {required double amount,
      required double maxAmount,
      required bool showErrorMessages,
      required bool isUpdating}) = _DoubleCounterState;
  factory DoubleCounterState.initial() => DoubleCounterState(
        amount: 0.0,
        maxAmount: doubleInfinity,
        showErrorMessages: false,
        isUpdating: false,
      );
}
