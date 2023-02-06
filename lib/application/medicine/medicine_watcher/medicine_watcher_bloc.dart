import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/medicine/i_medicine_repository.dart';
import 'package:expedientes_clinicos/domain/medicine/medicine.dart';
import 'package:expedientes_clinicos/domain/medicine/medicine_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'medicine_watcher_event.dart';
part 'medicine_watcher_state.dart';
part 'medicine_watcher_bloc.freezed.dart';

@injectable
class MedicineWatcherBloc
    extends Bloc<MedicineWatcherEvent, MedicineWatcherState> {
  final IMedicineRepository _medicineRepository;
  StreamSubscription<Either<MedicineFailures, KtList<Medicine>>>?
      _categoriesStreamSubscription;
  MedicineWatcherBloc(this._medicineRepository)
      : super(const MedicineWatcherState.initial()) {
    on<_WatchAllStarted>((event, emit) {
      _categoriesStreamSubscription?.cancel;
      _categoriesStreamSubscription =
          _medicineRepository.watchAll().listen((failureOrCategories) {
        add(MedicineWatcherEvent.medicinesReceived(failureOrCategories));
      });
    });
    on<_WatchFilteredStarted>((event, emit) {
      _categoriesStreamSubscription?.cancel;
      _categoriesStreamSubscription = _medicineRepository
          .watchFiltered(event.keyword)
          .listen((failureOrCategories) {
        add(MedicineWatcherEvent.medicinesReceived(failureOrCategories));
      });
    });
    //Combine the two watchers above listening to the CategoriesReceived event that they emit
    on<_MedicinesReceived>((event, emit) async {
      print('...... emitting new state .....');
      emit(event.failureOrMedicines
          .fold((f) => MedicineWatcherState.loadFailure(f), (categories) {
        print(categories.asList().length);
        return MedicineWatcherState.loadSuccess(categories);
      }));
    });
  }
}
