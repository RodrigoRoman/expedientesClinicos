import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/indication/i_indication_repository.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'indication_watcher_event.dart';
part 'indication_watcher_state.dart';
part 'indication_watcher_bloc.freezed.dart';

@injectable
class IndicationWatcherBloc
    extends Bloc<IndicationWatcherEvent, IndicationWatcherState> {
  final IIndicationRepository _iIndicationRepository;
  IndicationWatcherBloc(this._iIndicationRepository)
      : super(const IndicationWatcherState.initial()) {
    StreamSubscription<Either<IndicationFailure, KtList<Indication>>>?
        _indicationStreamSubscription;
    on<_WatchAllStarted>((event, emit) {
      _indicationStreamSubscription?.cancel;
      _indicationStreamSubscription =
          _iIndicationRepository.watchAll().listen((failureOrUnit) {
        add(IndicationWatcherEvent.indicationReceived(failureOrUnit));
      });
    });
    on<_WatchFilteredStarted>((event, emit) {
      _indicationStreamSubscription?.cancel;
      _indicationStreamSubscription = _iIndicationRepository
          .watchFiltered(event.keyword)
          .listen((failureOrUnit) {
        add(IndicationWatcherEvent.indicationReceived(failureOrUnit));
      });
    });

    //Combine the two watchers above listening to the Indication event that they emit
    on<_IndicationReceived>((event, emit) async {
      emit(event.failureOrUnit.fold(
          (f) => IndicationWatcherState.loadFailure(f),
          (indications) => IndicationWatcherState.loadSuccess(indications)));
    });
  }
}
