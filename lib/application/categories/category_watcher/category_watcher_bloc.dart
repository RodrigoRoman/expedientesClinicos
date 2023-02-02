import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/categories/i_category_repository.dart';
import 'package:expedientes_clinicos/domain/medicine/categories/category.dart';
import 'package:expedientes_clinicos/domain/medicine/categories/category_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'category_watcher_event.dart';
part 'category_watcher_state.dart';
part 'category_watcher_bloc.freezed.dart';

@injectable
class CategoryWatcherBloc
    extends Bloc<CategoryWatcherEvent, CategoryWatcherState> {
  final ICategoryRepository _categoryRepository;
  StreamSubscription<Either<CategoryFailures, KtList<Category>>>?
      _categoriesStreamSubscription;
  CategoryWatcherBloc(this._categoryRepository)
      : super(const CategoryWatcherState.initial()) {
    on<_WatchAllStarted>((event, emit) {
      _categoriesStreamSubscription?.cancel;
      _categoriesStreamSubscription =
          _categoryRepository.watchAll().listen((failureOrCategories) {
        add(CategoryWatcherEvent.categoriesReceived(failureOrCategories));
      });
    });
    on<_WatchFilteredStarted>((event, emit) {
      _categoriesStreamSubscription?.cancel;
      _categoriesStreamSubscription = _categoryRepository
          .watchFiltered(event.keyword)
          .listen((failureOrCategories) {
        add(CategoryWatcherEvent.categoriesReceived(failureOrCategories));
      });
    });
    //Combine the two watchers above listening to the CategoriesReceived event that they emit
    on<_CategoriesReceived>((event, emit) async {
      print('...... emitting new state .....');

      emit(event.failureOrCategories
          .fold((f) => CategoryWatcherState.loadFailure(f), (categories) {
        print(categories.asList().length);
        return CategoryWatcherState.loadSuccess(categories);
      }));
    });
  }
}
