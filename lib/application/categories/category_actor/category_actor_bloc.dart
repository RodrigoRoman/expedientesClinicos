import 'package:bloc/bloc.dart';
import 'package:expedientes_clinicos/domain/categories/category_failures.dart';
import 'package:expedientes_clinicos/domain/categories/category.dart';
import 'package:expedientes_clinicos/domain/categories/i_category_repository.dart';
import 'package:flutter/foundation.dart' hide Category;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_actor_event.dart';
part 'category_actor_state.dart';
part 'category_actor_bloc.freezed.dart';

class CategoryActorBloc extends Bloc<CategoryActorEvent, CategoryActorState> {
  final ICategoryRepository _categoryRepository;
  CategoryActorBloc(this._categoryRepository) : super(_Initial()) {
    on<_DeleteCategory>((event, emit) async {
      emit(const CategoryActorState.actionInProgress());
      final failureOrDeleted = await _categoryRepository.delete(event.category);
      emit(failureOrDeleted.fold((f) => CategoryActorState.deleteFailure(f),
          (_) => const CategoryActorState.deleteSuccess()));
    });
  }
}
