import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_dtos.freezed.dart';
part 'category_dtos.g.dart';

@freezed
abstract class CategoryDto implements _$CategoryDto {
  const CategoryDto._();

  const factory CategoryDto({
    required String id,
    required String name,
    required String imageUrl,
  }) = _CategoryDto;

  factory CategoryDto.fromDomain(Category category) {
    return CategoryDto(
        name: category.name.getOrCrash(),
        id: category.id.getOrCrash(),
        imageUrl: category.imageUrl.getOrCrash());
  }

  Category toDomain() {
    return Category(
        id: UniqueId.fromUniqueString(id),
        name: AbbrName(name),
        imageUrl: ImageURL(imageUrl));
  }

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);

  factory CategoryDto.fromFirestore(DocumentSnapshot doc) {
    return CategoryDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
