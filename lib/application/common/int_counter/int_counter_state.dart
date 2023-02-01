part of 'int_counter_bloc.dart';

@freezed
abstract class IntCounterState with _$IntCounterState {
  const factory IntCounterState(
      {required int amount,
      required int maxAmount,
      required bool showErrorMessages,
      required bool isUpdating}) = _IntCounterState;
  factory IntCounterState.initial() => const IntCounterState(
        amount: 0,
        maxAmount: integerInfinity,
        showErrorMessages: false,
        isUpdating: false,
      );
}
