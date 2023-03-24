import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/prescription/i_prescription_repository.dart';
import 'package:expedientes_clinicos/domain/prescription/prescription.dart';
import 'package:expedientes_clinicos/domain/prescription/prescription_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'prescription_watcher_event.dart';
part 'prescription_watcher_state.dart';
part 'prescription_watcher_bloc.freezed.dart';

@injectable
class PrescriptionWatcherBloc
    extends Bloc<PrescriptionWatcherEvent, PrescriptionWatcherState> {
  final IPrescriptionRepository _prescriptionsRepository;
  StreamSubscription<Either<PrescriptionFailures, KtList<Prescription>>>?
      _prescriptionStreamSubscription;
  PrescriptionWatcherBloc(this._prescriptionsRepository)
      : super(const PrescriptionWatcherState.initial()) {
    on<_WatchAllStarted>((event, emit) {
      _prescriptionStreamSubscription?.cancel;
      _prescriptionStreamSubscription =
          _prescriptionsRepository.watchAll().listen((failureOrPrescription) {
        add(PrescriptionWatcherEvent.prescriptionsReceived(
            failureOrPrescription));
      });
    });
    on<_WatchFilteredStarted>((event, emit) {
      _prescriptionStreamSubscription?.cancel;
      _prescriptionStreamSubscription = _prescriptionsRepository
          .watchFiltered(event.keyword)
          .listen((failureOrPrescription) {
        add(PrescriptionWatcherEvent.prescriptionsReceived(
            failureOrPrescription));
      });
    });
    //Combine the two watchers above listening to the CategoriesReceived event that they emit
    on<_PrescriptionsReceived>((event, emit) async {
      print('...... emitting new state .....');
      emit(event.failureOrPrescriptions.fold(
          (f) => PrescriptionWatcherState.loadFailure(f), (prescriptions) {
        return PrescriptionWatcherState.loadSuccess(prescriptions);
      }));
    });
  }
}
