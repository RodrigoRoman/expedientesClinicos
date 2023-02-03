import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr_failure.dart';
import 'package:expedientes_clinicos/domain/medicine/i_measure_unit_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'abbreviation_name_watcher_event.dart';
part 'abbreviation_name_watcher_state.dart';
part 'measure_unit_watcher_bloc.freezed.dart';

@injectable
class MeasureUnitWatcherBloc
    extends Bloc<AbbreviationNameWatcherEvent, AbbreviationNameWatcherState> {
  final IMeasureUnitRepository _iMeasureUnitRepository;
  MeasureUnitWatcherBloc(this._iMeasureUnitRepository)
      : super(const AbbreviationNameWatcherState.initial()) {
    StreamSubscription<
            Either<NameAbbreviationFailure, KtList<NameAbbreviation>>>?
        _measureUnitsStreamSubscription;
    on<_WatchAllStarted>((event, emit) {
      _measureUnitsStreamSubscription?.cancel;
      _measureUnitsStreamSubscription =
          _iMeasureUnitRepository.watchAll().listen((failureOrMeasureUnits) {
        add(AbbreviationNameWatcherEvent.measureUnitsReceived(
            failureOrMeasureUnits));
      });
    });
    on<_WatchFilteredStarted>((event, emit) {
      _measureUnitsStreamSubscription?.cancel;
      _measureUnitsStreamSubscription = _iMeasureUnitRepository
          .watchFiltered(event.keyword)
          .listen((failureOrMeasureUnits) {
        add(AbbreviationNameWatcherEvent.measureUnitsReceived(
            failureOrMeasureUnits));
      });
    });

    //Combine the two watchers above listening to the MeasureUnits event that they emit
    on<_AbbreviationNameReceived>((event, emit) async {
      emit(event.failureOrUnit.fold(
          (f) => AbbreviationNameWatcherState.loadFailure(f),
          (abbrNames) => AbbreviationNameWatcherState.loadSuccess(abbrNames)));
    });
  }
}
