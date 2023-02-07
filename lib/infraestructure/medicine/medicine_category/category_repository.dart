import 'dart:convert';
import 'dart:io';

import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/categories/category_failures.dart';
import 'package:expedientes_clinicos/domain/core/categories/i_category_repository.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/infraestructure/category/category_dtos.dart';
import 'package:expedientes_clinicos/infraestructure/helper_functions/string_manipulation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:faker/faker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:unsplash_client/unsplash_client.dart';

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
  Future<Either<CategoryFailures, Unit>> createFake() async {
    try {
      final cats = _firestore.collection('categories');

      //Load Unpslash credentials for getting random image urls
      final client = UnsplashClient(
        settings: ClientSettings(
            credentials: AppCredentials(
          accessKey: 'Br9rj2Rhz-t_jt6fpkj49AHZxpmJ8A31ZAkVnyyZajQ',
          secretKey: 'da_ywoatyKz9HLzra_JCeXysfwep70vs5ACG7ImQihM',
        )),
      );

      Future<AppCredentials> loadAppCredentialsFromFile(String fileName) async {
        final file = File(fileName);
        final content = await file.readAsString();
        final json = jsonDecode(content) as Map<String, dynamic>;
        return AppCredentials.fromJson(json);
      }

      // Save categories to database
      for (int i = 0; i < 10; i++) {
        final photo = await client.photos
            .random(query: 'restaurant', count: 1)
            .goAndGet();

        final resizedUrl = photo.first.urls.raw.resizePhoto(
          width: 400,
          height: 400,
          fit: ResizeFitMode.clamp,
          format: ImageFormat.webp,
        );

        //Define the rest of the category
        Category newCategory = Category(
            id: UniqueId(),
            name: AbbrName(truncate(faker.food.cuisine(), 10)),
            imageUrl: ImageURL(resizedUrl.toString()));

        CategoryDto categoryDto = CategoryDto.fromDomain(newCategory);

        //Save to database
        Map<String, dynamic> data = categoryDto.toJson();
        data['keyWords'] = generateKeywords(categoryDto.name);

        //We keep the id that comes from categoryDto and avoid autogeneration
        await cats.doc(categoryDto.id).set(data);
      }

      client.close();

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
