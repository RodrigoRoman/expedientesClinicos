import 'package:bloc/bloc.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/categories/category.dart';
import 'package:expedientes_clinicos/domain/categories/category_failures.dart';
import 'package:expedientes_clinicos/domain/categories/i_category_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'category_form_event.dart';
part 'category_form_state.dart';
part 'category_form_bloc.freezed.dart';

@injectable
class CategoryFormBloc extends Bloc<CategoryFormEvent, CategoryFormState> {
  final ICategoryRepository _categoryRepository;
  CategoryFormBloc(this._categoryRepository)
      : super(CategoryFormState.initial()) {
    on<_Initialized>((event, emit) {
      emit(event.intialCategoryOption.fold(
          () => state.copyWith(
              category: Category.empty(),
              showErrorMessages: false,
              isSaving: false,
              isUpdating: false,
              saveFailureOrSuccessOption: none()),
          (initialCategory) =>
              state.copyWith(category: initialCategory, isUpdating: true)));
    });
    on<_NameChanged>((event, emit) {
      emit(state.copyWith(
          category: state.category.copyWith(name: AbbrName(event.name))));
    });

    on<_ImageUrlChanged>((event, emit) {
      emit(state.copyWith(
          category:
              state.category.copyWith(imageUrl: ImageURL(event.imageURL))));
    });
    on<_Saved>((event, emit) async {
      Either<CategoryFailures, Unit>? failureOrSuccess;
      emit(state.copyWith(isSaving: true, saveFailureOrSuccessOption: none()));
      if (state.category.failureOption.isNone()) {
        failureOrSuccess = state.isUpdating
            ? await _categoryRepository.update(state.category)
            : await _categoryRepository.create(state.category);
      } else {
        failureOrSuccess = const Left(CategoryFailures.unexpected());
      }
      emit(state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess)));
      emit(state.copyWith(
          category: Category.empty(),
          showErrorMessages: false,
          isSaving: false,
          isUpdating: false,
          saveFailureOrSuccessOption: none()));
    });
  }
}
