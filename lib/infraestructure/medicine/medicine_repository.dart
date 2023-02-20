import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/medicine/i_medicine_repository.dart';
import 'package:expedientes_clinicos/domain/medicine/medicine.dart';
import 'package:expedientes_clinicos/domain/medicine/medicine_failures.dart';
import 'package:expedientes_clinicos/infraestructure/category/category_dtos.dart';
import 'package:expedientes_clinicos/infraestructure/helper_functions/string_manipulation.dart';
import 'package:expedientes_clinicos/infraestructure/medicine/medicine_dtos.dart';
import 'package:expedientes_clinicos/infraestructure/name_abbreviation/name_abbreviation_dtos.dart';
import 'package:faker/faker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';
import 'package:unsplash_client/unsplash_client.dart';

@LazySingleton(as: IMedicineRepository)
class MedicineRepository implements IMedicineRepository {
  final FirebaseFirestore _firestore;
  MedicineRepository(this._firestore);
  @override
  Future<Either<MedicineFailures, Unit>> create(Medicine medicine) async {
    try {
      MedicineDto medicineDto = MedicineDto.fromDomain(medicine);
      final medicineReference = FirebaseStorage.instance
          .ref()
          .child('medicines/${medicineDto.id + medicineDto.genericName}.jpg');
      File file = File(medicineDto.imageURL);

      await medicineReference.putFile(file);

      //retrieving the download URL to save it as url for the category
      final medicines = _firestore.collection('medicines');

      final imageUrl = await medicineReference.getDownloadURL();

      medicineDto = medicineDto.copyWith(imageURL: imageUrl);

      Map<String, dynamic> data = medicineDto.toJson();

      //store the keyword that we will use for querying this document
      data['keyWords'] = generateKeywords(medicineDto.comercialName) +
          generateKeywords(medicineDto.genericName) +
          generateKeywords(medicineDto.administrationRoute.name);

      //We keep the id that comes from medicineDto and avoid autogeneration
      await medicines.doc(medicineDto.id).set(data);
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const MedicineFailures.insufficientPermissions());
      } else {
        return left(const MedicineFailures.unexpected());
      }
    } on FirebaseException catch (e) {
      return left(const MedicineFailures.unableToUploadImage());
    } catch (e) {
      return left(const MedicineFailures.unexpected());
    }
  }

  @override
  Future<Either<MedicineFailures, Unit>> createFake() async {
    try {
      final medicines = _firestore.collection('medicines');
      final cats = _firestore.collection('categories');
      final pharmaceuticalForms = _firestore.collection('pharmaceuticalForms');
      final administrationRoutes =
          _firestore.collection('administrationRoutes');
      final measureUnits = _firestore.collection('measureUnits');

      //Load Unpslash credentials for getting random image urls
      final client = UnsplashClient(
        settings: const ClientSettings(
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

      // Save medicines to database
      for (int i = 0; i < 20; i++) {
        final photo =
            await client.photos.random(query: 'medicine', count: 1).goAndGet();
        //define category
        final catsSnapshots = await cats.get();
        final catDocs = catsSnapshots.docs;
        //define unitMeasure
        final unitMeasureSnapshots = await measureUnits.get();
        final unitMeasuresDocs = unitMeasureSnapshots.docs;
        //define pharmaceuticalForm
        final pharmaceuticalFormSnapshots = await pharmaceuticalForms.get();
        final pharmaceuticalFormDocs = pharmaceuticalFormSnapshots.docs;
        //define administrationRoute
        final administrationRouteSnapshots = await administrationRoutes.get();
        final administrationRouteDocs = administrationRouteSnapshots.docs;
        final resizedUrl = photo.first.urls.raw.resizePhoto(
          width: 400,
          height: 400,
          fit: ResizeFitMode.clamp,
          format: ImageFormat.webp,
        );

        //Define the rest of the category
        Medicine newMedicine = Medicine(
            id: UniqueId(),
            comercialName: FullName(truncate(faker.animal.name(), 20)),
            genericName: FullName(truncate(faker.animal.name(), 20)),
            amountMeasureUnit: NonNegDouble(Random().nextDouble() * 1000),
            amountPerPackage: NonNegInt(Random().nextInt(50)),
            imageURL: ImageURL(resizedUrl.toString()),
            category:
                CategoryDto.fromFirestore(catDocs[Random().nextInt(catDocs.length)])
                    .toDomain(),
            measureUnit: NameAbbreviationDto.fromFirestore(
                    unitMeasuresDocs[Random().nextInt(unitMeasuresDocs.length)])
                .toDomain(),
            controlled: Random().nextBool(),
            pharmaceuticalForm: NameAbbreviationDto.fromFirestore(
                    pharmaceuticalFormDocs[
                        Random().nextInt(pharmaceuticalFormDocs.length)])
                .toDomain(),
            administrationRoute: NameAbbreviationDto.fromFirestore(
                    administrationRouteDocs[Random().nextInt(administrationRouteDocs.length)])
                .toDomain(),
            counter: NonNegInt(0));

        MedicineDto medicineDto = MedicineDto.fromDomain(newMedicine);

        //Save to database
        Map<String, dynamic> data = medicineDto.toJson();
        data['keyWords'] = generateKeywords(medicineDto.comercialName) +
            generateKeywords(medicineDto.genericName) +
            generateKeywords(medicineDto.administrationRoute.name) +
            generateKeywords(medicineDto.category.name);

        //We keep the id that comes from categoryDto and avoid autogeneration
        await medicines.doc(medicineDto.id).set(data);
      }
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const MedicineFailures.insufficientPermissions());
      } else {
        return left(const MedicineFailures.unexpected());
      }
    } on FirebaseException catch (e) {
      return left(const MedicineFailures.unableToUploadImage());
    } catch (e) {
      return left(const MedicineFailures.unexpected());
    }
  }

  @override
  Future<Either<MedicineFailures, Unit>> delete(Medicine medicine) async {
    final medicines = _firestore.collection('medicines');
    try {
      final medicineDto = MedicineDto.fromDomain(medicine);
      await medicines.doc(medicineDto.id).delete();
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const MedicineFailures.insufficientPermissions());
      } else {
        return left(const MedicineFailures.unexpected());
      }
    }
  }

  @override
  Future<Either<MedicineFailures, Unit>> update(Medicine medicine) async {
    final medicines = _firestore.collection('medicines');
    try {
      final medicinesDto = MedicineDto.fromDomain(medicine);

      await medicines.doc(medicinesDto.id).update(medicinesDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const MedicineFailures.insufficientPermissions());
      } else {
        return left(const MedicineFailures.unexpected());
      }
    }
  }

  @override
  Stream<Either<MedicineFailures, KtList<Medicine>>> watchAll() async* {
    final medicines = _firestore.collection('mediciness');
    yield* medicines
        .orderBy('lastUpdated', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<MedicineFailures, KtList<Medicine>>(
            snapshot.docs
                .map((doc) => MedicineDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const MedicineFailures.insufficientPermissions());
      } else {
        return left(const MedicineFailures.unexpected());
      }
    });

    // ingredientVersionCollection();
  }

  @override
  Stream<Either<MedicineFailures, KtList<Medicine>>> watchFiltered(
      String name) {
    // TODO: implement watchFiltered
    throw UnimplementedError();
  }
}
