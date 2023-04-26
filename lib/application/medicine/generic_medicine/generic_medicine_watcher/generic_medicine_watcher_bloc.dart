import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/generic_medicine.dart';
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/generic_medicine_failures.dart';
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/i_generic_medicine_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'generic_medicine_watcher_event.dart';
part 'generic_medicine_watcher_state.dart';
part 'generic_medicine_watcher_bloc.freezed.dart';

@injectable
class GenericMedicineWatcherBloc
    extends Bloc<GenericMedicineWatcherEvent, GenericMedicineWatcherState> {
  final IGenericMedicineRepository _medicineRepository;
  StreamSubscription<Either<GenericMedicineFailures, KtList<GenericMedicine>>>?
      _medicineStreamSubscription;
  GenericMedicineWatcherBloc(this._medicineRepository)
      : super(const GenericMedicineWatcherState.initial()) {
    on<_WatchAllStarted>((event, emit) {
      _medicineStreamSubscription?.cancel;
      _medicineStreamSubscription =
          _medicineRepository.watchAll().listen((failureOrMedicine) {
        add(GenericMedicineWatcherEvent.medicinesReceived(failureOrMedicine));
      });
    });
    on<_WatchFilteredStarted>((event, emit) {
      _medicineStreamSubscription?.cancel;
      _medicineStreamSubscription = _medicineRepository
          .watchFiltered(event.keyword)
          .listen((failureOrMedicine) {
        add(GenericMedicineWatcherEvent.medicinesReceived(failureOrMedicine));
      });
    });
    //Combine the two watchers above listening to the CategoriesReceived event that they emit
    on<_MedicinesReceived>((event, emit) async {
      emit(event.failureOrMedicines
          .fold((f) => GenericMedicineWatcherState.loadFailure(f), (medicines) {
        return GenericMedicineWatcherState.loadSuccess(medicines);
      }));
    });
  }
}
