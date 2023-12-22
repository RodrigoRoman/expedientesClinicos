import 'package:bloc/bloc.dart';
import 'package:expedientes_clinicos/presentation/resources/const_values.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'int_counter_event.dart';
part 'int_counter_state.dart';
part 'int_counter_bloc.freezed.dart';

class IntCounterBloc extends Bloc<IntCounterEvent, IntCounterState> {
  IntCounterBloc() : super(IntCounterState.initial()) {
    on<_Initialized>((event, emit) {
      int maxAmount = event.maxAmount.fold(() => integerInfinity, (m) => m);
      int initialAmount =
          event.initialAmount.fold(() => 0, (initial) => initial);
      emit(state.copyWith(
          amount: initialAmount, maxAmount: maxAmount, isUpdating: true));
    });

    on<_AmountUpdated>((event, emit) {
      if (event.newAmount < 0 || (event.newAmount > state.maxAmount)) {
        emit(state);
      } else {
        emit(state.copyWith(amount: event.newAmount));
      }
    });

    on<_AmountIncreased>((event, emit) {
      if (state.amount + 1 <= state.maxAmount) {
        emit(state.copyWith(amount: state.amount + 1));
      } else {
        emit(state);
      }
    });

    on<_AmountDecreased>((event, emit) {
      if (state.amount - 1 < 0) {
        emit(state);
      } else {
        emit(state.copyWith(amount: state.amount - 1));
      }
    });

    on<_MaxAmountUpdated>((event, emit) {
      int newMaxAmount = state.maxAmount + event.addSubtractAmount;
      if ((newMaxAmount >= 0) & (newMaxAmount <= state.maxAmount)) {
        emit(state.copyWith(maxAmount: newMaxAmount));
      } else {
        emit(state);
      }
    });
  }
}
