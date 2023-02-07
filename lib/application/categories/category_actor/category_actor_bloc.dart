import 'package:bloc/bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/categories/category_failures.dart';
import 'package:expedientes_clinicos/domain/core/categories/i_category_repository.dart';
import 'package:flutter/foundation.dart' hide Category;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'category_actor_event.dart';
part 'category_actor_state.dart';
part 'category_actor_bloc.freezed.dart';

@injectable
class CategoryActorBloc extends Bloc<CategoryActorEvent, CategoryActorState> {
  final ICategoryRepository _categoryRepository;
  CategoryActorBloc(this._categoryRepository)
      : super(const CategoryActorState.initial()) {
    on<_DeleteCategory>((event, emit) async {
      emit(const CategoryActorState.actionInProgress());
      final failureOrDeleted = await _categoryRepository.delete(event.category);
      emit(failureOrDeleted.fold((f) => CategoryActorState.deleteFailure(f),
          (_) => const CategoryActorState.deleteSuccess()));
    });
    on<_FakeCategory>((event, emit) async {
      emit(const CategoryActorState.actionInProgress());
      final failureOrDeleted = await _categoryRepository.createFake();
      emit(failureOrDeleted.fold((f) => CategoryActorState.fakeFailure(f),
          (_) => const CategoryActorState.fakeSuccess()));
    });
  }
}
