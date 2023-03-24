import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/medicine/branded_medicine/branded_medicine.dart';
import 'package:expedientes_clinicos/domain/medicine/branded_medicine/branded_medicine_failures.dart';
import 'package:expedientes_clinicos/domain/medicine/branded_medicine/i_branded_medicine_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'branded_medicine_watcher_event.dart';
part 'branded_medicine_watcher_state.dart';
part 'branded_medicine_watcher_bloc.freezed.dart';

@injectable
class BrandedMedicineWatcherBloc
    extends Bloc<BrandedMedicineWatcherEvent, BrandedMedicineWatcherState> {
  final IBrandedMedicineRepository _medicineRepository;
  StreamSubscription<Either<BrandedMedicineFailures, KtList<BrandedMedicine>>>?
      _categoriesStreamSubscription;
  BrandedMedicineWatcherBloc(this._medicineRepository)
      : super(const BrandedMedicineWatcherState.initial()) {
    on<_WatchAllStarted>((event, emit) {
      _categoriesStreamSubscription?.cancel;
      _categoriesStreamSubscription =
          _medicineRepository.watchAll().listen((failureOrDose) {
        add(BrandedMedicineWatcherEvent.medicinesReceived(failureOrDose));
      });
    });
    on<_WatchFilteredStarted>((event, emit) {
      _categoriesStreamSubscription?.cancel;
      _categoriesStreamSubscription = _medicineRepository
          .watchFiltered(event.keyword)
          .listen((failureOrDose) {
        add(BrandedMedicineWatcherEvent.medicinesReceived(failureOrDose));
      });
    });
    //Combine the two watchers above listening to the CategoriesReceived event that they emit
    on<_MedicinesReceived>((event, emit) async {
      print('...... emitting new state .....');
      emit(event.failureOrMedicines
          .fold((f) => BrandedMedicineWatcherState.loadFailure(f), (medicines) {
        print(medicines.asList().length);
        return BrandedMedicineWatcherState.loadSuccess(medicines);
      }));
    });
  }
}
