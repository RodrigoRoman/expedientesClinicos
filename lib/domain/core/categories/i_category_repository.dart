import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/categories/category_failures.dart';
import 'package:kt_dart/collection.dart';

abstract class ICategoryRepository {
  Stream<Either<CategoryFailures, KtList<Category>>> watchAll();
  Stream<Either<CategoryFailures, KtList<Category>>> watchFiltered(String name);
  Future<Either<CategoryFailures, Category>> create(Category category);
  Future<Either<CategoryFailures, Unit>> createFake();
  Future<Either<CategoryFailures, Category>> update(Category category);
  Future<Either<CategoryFailures, Unit>> delete(Category category);
  String get collectionName;
}
