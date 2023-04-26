import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/generic_medicine_failures.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_failures.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/i_dose_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'dose_watcher_event.dart';
part 'dose_watcher_state.dart';
part 'dose_watcher_bloc.freezed.dart';

@injectable
class DoseWatcherBloc extends Bloc<DoseWatcherEvent, DoseWatcherState> {
  final IDoseRepository _doseRepository;
  StreamSubscription<Either<DoseFailures, KtList<Dose>>>?
      _doseStreamSubscription;
  DoseWatcherBloc(this._doseRepository)
      : super(const DoseWatcherState.initial()) {
    on<_WatchAllStarted>((event, emit) {
      _doseStreamSubscription?.cancel;
      _doseStreamSubscription =
          _doseRepository.watchAll().listen((failureOrDose) {
        add(DoseWatcherEvent.dosesReceived(failureOrDose));
      });
    });
    on<_WatchFilteredStarted>((event, emit) {
      _doseStreamSubscription?.cancel;
      _doseStreamSubscription =
          _doseRepository.watchFiltered(event.keyword).listen((failureOrDose) {
        add(DoseWatcherEvent.dosesReceived(failureOrDose));
      });
    });
    //Combine the two watchers above listening to the CategoriesReceived event that they emit
    on<_DosesReceived>((event, emit) async {
      emit(event.failureOrDoses.fold((f) => DoseWatcherState.loadFailure(f),
          (doses) {
        return DoseWatcherState.loadSuccess(doses);
      }));
    });
  }
}
