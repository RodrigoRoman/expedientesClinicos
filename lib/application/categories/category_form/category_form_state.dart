part of 'category_form_bloc.dart';

@freezed
abstract class CategoryFormState with _$CategoryFormState {
  const factory CategoryFormState({
    required Category category,
    required bool showErrorMessages,
    required bool isUpdating,
    required bool isSaving,
    required Option<Either<CategoryFailures, Category>>
        saveFailureOrSuccessOption,
  }) = _CategoryFormState;
  factory CategoryFormState.initial() => CategoryFormState(
      category: Category.empty(),
      showErrorMessages: false,
      isSaving: false,
      isUpdating: false,
      saveFailureOrSuccessOption: none());
}
