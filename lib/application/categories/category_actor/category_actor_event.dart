part of 'category_actor_bloc.dart';

@freezed
class CategoryActorEvent with _$CategoryActorEvent {
  const factory CategoryActorEvent.deleted(Category category) = _DeleteCategory;
  const factory CategoryActorEvent.faker() = _FakeCategory;
}
