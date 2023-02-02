part of 'category_form_bloc.dart';

@freezed
class CategoryFormEvent with _$CategoryFormEvent {
  const factory CategoryFormEvent.intial(
      Option<Category> intialCategoryOption) = _Initialized;
  const factory CategoryFormEvent.nameChanged(String name) = _NameChanged;
  const factory CategoryFormEvent.imageUrlChanged(String imageURL) =
      _ImageUrlChanged;
  const factory CategoryFormEvent.saved() = _Saved;
}
