import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/label_double_amount/i_label_double_amount_repository.dart';
import 'package:expedientes_clinicos/domain/core/label_double_amount/label_double_amount.dart';
import 'package:expedientes_clinicos/domain/core/label_double_amount/label_double_amount_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'label_double_amount_watcher_event.dart';
part 'label_double_amount_watcher_state.dart';
part 'label_double_amount_watcher_bloc.freezed.dart';

@injectable
class LabelDoubleAmountWatcherBloc
    extends Bloc<LabelDoubleAmountWatcherEvent, LabelDoubleAmountWatcherState> {
  final ILabelDoubleAmountRepository _labelDoubleAmountRepository;
  StreamSubscription<
          Either<LabelDoubleAmountFailure, KtList<LabelDoubleAmount>>>?
      _labelDoubleAmountStreamSubscription;
  LabelDoubleAmountWatcherBloc(this._labelDoubleAmountRepository)
      : super(const LabelDoubleAmountWatcherState.initial()) {
    on<_WatchAllStarted>((event, emit) {
      _labelDoubleAmountStreamSubscription?.cancel;
      _labelDoubleAmountStreamSubscription = _labelDoubleAmountRepository
          .watchAll()
          .listen((failureOrLabelDouble) {
        add(LabelDoubleAmountWatcherEvent.labelDoubleAmountsReceived(
            failureOrLabelDouble));
      });
    });
    on<_WatchFilteredStarted>((event, emit) {
      _labelDoubleAmountStreamSubscription?.cancel;
      _labelDoubleAmountStreamSubscription = _labelDoubleAmountRepository
          .watchFiltered(event.keyword)
          .listen((failureOrLabelDouble) {
        add(LabelDoubleAmountWatcherEvent.labelDoubleAmountsReceived(
            failureOrLabelDouble));
      });
    });
    //Combine the two watchers above listening to the CategoriesReceived event that they emit
    on<_LabelDoubleAmountReceived>((event, emit) async {
      emit(event.failureOrLabelDoubleAmounts
          .fold((f) => LabelDoubleAmountWatcherState.loadFailure(f),
              (labelDoubleAmounts) {
        return LabelDoubleAmountWatcherState.loadSuccess(labelDoubleAmounts);
      }));
    });
  }
}
