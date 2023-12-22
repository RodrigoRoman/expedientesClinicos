import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/failures.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
abstract class Category implements _$Category {
  const Category._();
  const factory Category({
    required UniqueId id,
    required AbbrName name,
    //make a default url for category
    required ImageURL imageUrl,
  }) = _Category;

  factory Category.empty() => Category(
        id: UniqueId(),
        name: AbbrName(''),
        imageUrl: ImageURL(''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit.fold((f) => some(f), (_) => none());
  }

  bool get isEmpty {
    return name == AbbrName('') && imageUrl == ImageURL('');
  }

  @override
  bool operator ==(Object other) {
    return other is Category &&
        other.name == name &&
        other.imageUrl == imageUrl;
  }
}
