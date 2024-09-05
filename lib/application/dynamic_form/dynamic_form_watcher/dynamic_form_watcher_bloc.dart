import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/dynamic_form_failures.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_section.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/i_dynamic_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:kt_dart/kt.dart';
part 'dynamic_form_watcher_event.dart';
part 'dynamic_form_watcher_state.dart';
part 'dynamic_form_watcher_bloc.freezed.dart';

@injectable
class DynamicFormWatcherBloc
    extends Bloc<DynamicFormWatcherEvent, DynamicFormWatcherState> {
  final IDynamicFormRepository _dynamicFormRepository;
  StreamSubscription<Either<DynamicFormFailures, KtList<FormSection>>>?
      _formSectionStreamSubscription;
  DynamicFormWatcherBloc(this._dynamicFormRepository)
      : super(const DynamicFormWatcherState.initial()) {
    on<_WatchAllStarted>((event, emit) {
      _formSectionStreamSubscription?.cancel;
      _formSectionStreamSubscription =
          _dynamicFormRepository.watchAll().listen((failureOrDynamicForm) {
        add(DynamicFormWatcherEvent.formSectionReceived(failureOrDynamicForm));
      });
    });
    on<_WatchFilteredStarted>((event, emit) {
      _formSectionStreamSubscription?.cancel;
      _formSectionStreamSubscription = _dynamicFormRepository
          .watchFiltered(event.keyword)
          .listen((failureOrDynamicForm) {
        add(DynamicFormWatcherEvent.formSectionReceived(failureOrDynamicForm));
      });
    });
    //Combine the two watchers above listening to the CategoriesReceived event that they emit
    on<_FormSectionReceived>((event, emit) async {
      emit(event.failureOrDynamicForms
          .fold((f) => DynamicFormWatcherState.loadFailure(f), (formSection) {
        return DynamicFormWatcherState.loadSuccess(formSection);
      }));
    });
  }
}
