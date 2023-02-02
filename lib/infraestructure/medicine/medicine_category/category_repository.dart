import 'dart:io';

import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/categories/category_failures.dart';
import 'package:expedientes_clinicos/domain/core/categories/i_category_repository.dart';
import 'package:expedientes_clinicos/infraestructure/category/category_dtos.dart';
import 'package:expedientes_clinicos/infraestructure/helper_functions/string_manipulation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: ICategoryRepository)
class CategoryRepository implements ICategoryRepository {
  final FirebaseFirestore _firestore;
  CategoryRepository(this._firestore);

  @override
  Future<Either<CategoryFailures, Unit>> create(Category category) async {
    try {
      //Upload image to Firestorage
      CategoryDto categoryDto = CategoryDto.fromDomain(category);

      final categoryReference = FirebaseStorage.instance
          .ref()
          .child('categories/${categoryDto.id + categoryDto.name}.jpg');
      File file = File(categoryDto.imageUrl);

      await categoryReference.putFile(file);

      //retrieving the download URL to save it as url for the category
      final categories = _firestore.collection('categories');

      final imageUrl = await categoryReference.getDownloadURL();

      categoryDto = categoryDto.copyWith(imageUrl: imageUrl);

      Map<String, dynamic> data = categoryDto.toJson();
      data['keyWords'] = generateKeywords(categoryDto.name);

      //We keep the id that comes from categoryDto and avoid autogeneration
      await categories.doc(categoryDto.id).set(data);

      return right(unit);
    } on FirebaseException catch (e) {
      return left(const CategoryFailures.unableToUploadImage());
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const CategoryFailures.insufficientPermissions());
      } else {
        return left(const CategoryFailures.unexpected());
      }
    } catch (e) {
      return left(const CategoryFailures.unexpected());
    }
  }

  @override
  Future<Either<CategoryFailures, Unit>> createFake(Category category) async {
    try {
      //Upload image to Firestorage
      CategoryDto categoryDto = CategoryDto.fromDomain(category);

      // final categoryReference = FirebaseStorage.instance
      //     .ref()
      //     .child('categories/${categoryDto.id + categoryDto.name}.jpg');
      // File file = File(categoryDto.imageUrl);

      // await categoryReference.putFile(file);

      // //retrieving the download URL to save it as url for the category
      final categories = _firestore.collection('categories');

      // final imageUrl = await categoryReference.getDownloadURL();

      // categoryDto = categoryDto.copyWith(imageUrl: imageUrl);

      Map<String, dynamic> data = categoryDto.toJson();
      data['keyWords'] = generateKeywords(categoryDto.name);

      //We keep the id that comes from categoryDto and avoid autogeneration
      await categories.doc(categoryDto.id).set(data);

      return right(unit);
    } on FirebaseException catch (e) {
      return left(const CategoryFailures.unableToUploadImage());
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const CategoryFailures.insufficientPermissions());
      } else {
        return left(const CategoryFailures.unexpected());
      }
    } catch (e) {
      return left(const CategoryFailures.unexpected());
    }
  }

  @override
  Future<Either<CategoryFailures, Unit>> delete(Category category) async {
    final categories = _firestore.collection('categories');
    try {
      final ingredientDto = CategoryDto.fromDomain(category);
      await categories.doc(ingredientDto.id).delete();
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const CategoryFailures.insufficientPermissions());
      } else {
        return left(const CategoryFailures.unexpected());
      }
    }
  }

  //Needs to be modified for updating imageUrl and keywords
  @override
  Future<Either<CategoryFailures, Unit>> update(Category category) async {
    final categories = _firestore.collection('categories');
    try {
      final ingredientDto = CategoryDto.fromDomain(category);

      await categories.doc(ingredientDto.id).update(ingredientDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const CategoryFailures.insufficientPermissions());
      } else {
        return left(const CategoryFailures.unexpected());
      }
    }
  }

  @override
  Stream<Either<CategoryFailures, KtList<Category>>> watchAll() async* {
    final category = _firestore.collection('categories');
    yield* category
        .snapshots()
        .map(
          (snapshot) => right<CategoryFailures, KtList<Category>>(
            snapshot.docs
                .map((doc) => CategoryDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const CategoryFailures.insufficientPermissions());
      } else {
        return left(const CategoryFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<CategoryFailures, KtList<Category>>> watchFiltered(
      String name) async* {
    final category = _firestore.collection('categories');
    yield* category
        .where('keyWords', arrayContains: removeSpecialCharacters(name))
        .snapshots()
        .map(
      (snapshot) {
        return right<CategoryFailures, KtList<Category>>(
          snapshot.docs
              .map((doc) => CategoryDto.fromFirestore(doc).toDomain())
              .toImmutableList(),
        );
      },
    ).onErrorReturnWith((e, _) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const CategoryFailures.insufficientPermissions());
      } else {
        return left(const CategoryFailures.unexpected());
      }
    });
  }
}
