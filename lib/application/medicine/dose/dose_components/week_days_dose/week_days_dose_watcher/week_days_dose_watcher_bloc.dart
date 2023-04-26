import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/i_week_doses_repository.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/week_days_dose.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/week_days_dose_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'week_days_dose_watcher_event.dart';
part 'week_days_dose_watcher_state.dart';
part 'week_days_dose_watcher_bloc.freezed.dart';

@injectable
class WeekDaysDoseWatcherBloc
    extends Bloc<WeekDaysDoseWatcherEvent, WeekDaysDoseWatcherState> {
  final IWeekDaysDoseRepository _weekDaysDoseRepository;
  StreamSubscription<Either<WeekDaysDoseFailures, KtList<WeekDaysDose>>>?
      _weekDaysDoseStreamSubscription;
  WeekDaysDoseWatcherBloc(this._weekDaysDoseRepository)
      : super(const WeekDaysDoseWatcherState.initial()) {
    on<_WatchAllStarted>((event, emit) {
      _weekDaysDoseStreamSubscription?.cancel;
      _weekDaysDoseStreamSubscription =
          _weekDaysDoseRepository.watchAll().listen((failureOrDose) {
        add(WeekDaysDoseWatcherEvent.weekDaysDoseReceived(failureOrDose));
      });
    });
    on<_WatchFilteredStarted>((event, emit) {
      _weekDaysDoseStreamSubscription?.cancel;
      _weekDaysDoseStreamSubscription = _weekDaysDoseRepository
          .watchFiltered(event.keyword)
          .listen((failureOrDose) {
        add(WeekDaysDoseWatcherEvent.weekDaysDoseReceived(failureOrDose));
      });
    });
    //Combine the two watchers above listening to the CategoriesReceived event that they emit
    on<_WeekDaysReceived>((event, emit) async {
      emit(event.failureOrWeekDays
          .fold((f) => WeekDaysDoseWatcherState.loadFailure(f), (weekDaysDose) {
        return WeekDaysDoseWatcherState.loadSuccess(weekDaysDose);
      }));
    });
  }
}
