import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/patient_visit/i_patient_visit_repository.dart';
import 'package:expedientes_clinicos/domain/patient_visit/patient_visit.dart';
import 'package:expedientes_clinicos/domain/patient_visit/patient_visit_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'patient_visit_watcher_event.dart';
part 'patient_visit_watcher_state.dart';
part 'patient_visit_watcher_bloc.freezed.dart';

@injectable
class PatientVisitWatcherBloc
    extends Bloc<PatientVisitWatcherEvent, PatientVisitWatcherState> {
  final IPatientVisitRepository _patientVisitRepository;
  StreamSubscription<Either<PatientVisitFailures, KtList<PatientVisit>>>?
      _patientVisitStreamSubscription;
  PatientVisitWatcherBloc(this._patientVisitRepository)
      : super(const PatientVisitWatcherState.initial()) {
    on<_WatchAllStarted>((event, emit) {
      _patientVisitStreamSubscription?.cancel;
      _patientVisitStreamSubscription =
          _patientVisitRepository.watchAll().listen((failureOrPrescription) {
        add(PatientVisitWatcherEvent.patientVisitReceived(
            failureOrPrescription));
      });
    });
    on<_WatchFilteredStarted>((event, emit) {
      _patientVisitStreamSubscription?.cancel;
      _patientVisitStreamSubscription = _patientVisitRepository
          .watchFiltered(event.keyword)
          .listen((failureOrPrescription) {
        add(PatientVisitWatcherEvent.patientVisitReceived(
            failureOrPrescription));
      });
    });
    //Combine the two watchers above listening to the CategoriesReceived event that they emit
    on<_PatientVisitReceived>((event, emit) async {
      print('...... emitting new state .....');
      emit(event.failureOrPatientVisit.fold(
          (f) => PatientVisitWatcherState.loadFailure(f), (patientVisits) {
        return PatientVisitWatcherState.loadSuccess(patientVisits);
      }));
    });
  }
}
