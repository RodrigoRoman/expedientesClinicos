import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/i_time_interval_repository.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/time_interval.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/time_interval_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'time_interval_watcher_event.dart';
part 'time_interval_watcher_state.dart';
part 'time_interval_watcher_bloc.freezed.dart';

@injectable
class TimeIntervalWatcherBloc
    extends Bloc<TimeIntervalWatcherEvent, TimeIntervalWatcherState> {
  final ITimeIntervalRepository _iTimeIntervalRepository;
  TimeIntervalWatcherBloc(this._iTimeIntervalRepository)
      : super(const TimeIntervalWatcherState.initial()) {
    StreamSubscription<Either<TimeIntervalFailure, KtList<TimeInterval>>>?
        _timeIntervalStreamSubscription;
    on<_WatchAllStarted>((event, emit) {
      _timeIntervalStreamSubscription?.cancel;
      _timeIntervalStreamSubscription =
          _iTimeIntervalRepository.watchAll().listen((failureOrUnit) {
        add(TimeIntervalWatcherEvent.timeIntervalReceived(failureOrUnit));
      });
    });
    on<_WatchFilteredStarted>((event, emit) {
      _timeIntervalStreamSubscription?.cancel;
      _timeIntervalStreamSubscription = _iTimeIntervalRepository
          .watchFiltered(event.keyword)
          .listen((failureOrUnit) {
        add(TimeIntervalWatcherEvent.timeIntervalReceived(failureOrUnit));
      });
    });

    //Combine the two watchers above listening to the MeasureUnits event that they emit
    on<_TimeIntervalReceived>((event, emit) async {
      emit(event.failureOrUnit.fold(
          (f) => TimeIntervalWatcherState.loadFailure(f),
          (timeIntervals) =>
              TimeIntervalWatcherState.loadSuccess(timeIntervals)));
    });
  }
}
