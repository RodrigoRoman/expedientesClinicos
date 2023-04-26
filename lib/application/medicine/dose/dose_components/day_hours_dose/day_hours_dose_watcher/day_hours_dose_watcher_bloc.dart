import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/day_hour_doses_failures.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/day_hours_doses.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/i_day_hour_doses_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'day_hours_dose_watcher_event.dart';
part 'day_hours_dose_watcher_state.dart';
part 'day_hours_dose_watcher_bloc.freezed.dart';

@injectable
class DayHoursDoseWatcherBloc
    extends Bloc<DayHoursDoseWatcherEvent, DayHoursDoseWatcherState> {
  final IDayHoursDoseRepository _dayHoursdoseRepository;
  StreamSubscription<Either<DayHoursDoseFailures, KtList<DayHoursDose>>>?
      _doseStreamSubscription;
  DayHoursDoseWatcherBloc(this._dayHoursdoseRepository)
      : super(const DayHoursDoseWatcherState.initial()) {
    on<_WatchAllStarted>((event, emit) {
      _doseStreamSubscription?.cancel;
      _doseStreamSubscription =
          _dayHoursdoseRepository.watchAll().listen((failureOrDose) {
        add(DayHoursDoseWatcherEvent.dosesReceived(failureOrDose));
      });
    });
    on<_WatchFilteredStarted>((event, emit) {
      _doseStreamSubscription?.cancel;
      _doseStreamSubscription = _dayHoursdoseRepository
          .watchFiltered(event.keyword)
          .listen((failureOrDose) {
        add(DayHoursDoseWatcherEvent.dosesReceived(failureOrDose));
      });
    });
    //Combine the two watchers above listening to the CategoriesReceived event that they emit
    on<_DayHoursDoseReceived>((event, emit) async {
      emit(event.failureOrDoses
          .fold((f) => DayHoursDoseWatcherState.loadFailure(f), (dayHoursdose) {
        return DayHoursDoseWatcherState.loadSuccess(dayHoursdose);
      }));
    });
  }
}
