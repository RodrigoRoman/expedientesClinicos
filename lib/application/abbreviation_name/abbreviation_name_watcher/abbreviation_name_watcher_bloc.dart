import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr_failure.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/i_name_abbreviation_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'abbreviation_name_watcher_event.dart';
part 'abbreviation_name_watcher_state.dart';
part 'abbreviation_name_watcher_bloc.freezed.dart';

@injectable
class AbbreviationNameWatcherBloc
    extends Bloc<AbbreviationNameWatcherEvent, AbbreviationNameWatcherState> {
  final INameAbbreviationRepository _iAbbreviationNameRepository;
  AbbreviationNameWatcherBloc(this._iAbbreviationNameRepository)
      : super(const AbbreviationNameWatcherState.initial()) {
    StreamSubscription<
            Either<NameAbbreviationFailure, KtList<NameAbbreviation>>>?
        _abreviationNameStreamSubscription;
    on<_WatchAllStarted>((event, emit) {
      _abreviationNameStreamSubscription?.cancel;
      _abreviationNameStreamSubscription = _iAbbreviationNameRepository
          .watchAll()
          .listen((failureOrMeasureUnits) {
        add(AbbreviationNameWatcherEvent.measureUnitsReceived(
            failureOrMeasureUnits));
      });
    });
    on<_WatchFilteredStarted>((event, emit) {
      _abreviationNameStreamSubscription?.cancel;
      _abreviationNameStreamSubscription = _iAbbreviationNameRepository
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