import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/dose_amount.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/dose_amount_failures.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/i_dose_amount_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'dose_amount_watcher_event.dart';
part 'dose_amount_watcher_state.dart';
part 'dose_amount_watcher_bloc.freezed.dart';

@injectable
class DoseAmountWatcherBloc
    extends Bloc<DoseAmountWatcherEvent, DoseAmountWatcherState> {
  final IDoseAmountRepository _doseAmountRepository;
  StreamSubscription<Either<DoseAmountFailures, KtList<DoseAmount>>>?
      _doseAmountStreamSubscription;
  DoseAmountWatcherBloc(this._doseAmountRepository)
      : super(const DoseAmountWatcherState.initial()) {
    on<_WatchAllStarted>((event, emit) {
      _doseAmountStreamSubscription?.cancel;
      _doseAmountStreamSubscription =
          _doseAmountRepository.watchAll().listen((failureOrDose) {
        add(DoseAmountWatcherEvent.doseAmountsReceived(failureOrDose));
      });
    });
    on<_WatchFilteredStarted>((event, emit) {
      _doseAmountStreamSubscription?.cancel;
      _doseAmountStreamSubscription = _doseAmountRepository
          .watchFiltered(event.keyword)
          .listen((failureOrDose) {
        add(DoseAmountWatcherEvent.doseAmountsReceived(failureOrDose));
      });
    });
    //Combine the two watchers above listening to the CategoriesReceived event that they emit
    on<_DoseAmountReceived>((event, emit) async {
      emit(event.failureOrDoseAmounts
          .fold((f) => DoseAmountWatcherState.loadFailure(f), (doseAmounts) {
        return DoseAmountWatcherState.loadSuccess(doseAmounts);
      }));
    });
  }
}
