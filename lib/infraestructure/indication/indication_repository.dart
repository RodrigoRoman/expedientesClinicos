import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/indication/i_indication_repository.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication_failure.dart';
import 'package:expedientes_clinicos/infraestructure/helper_functions/string_manipulation.dart';
import 'package:expedientes_clinicos/infraestructure/indication/indication_dtos.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';
import 'package:unsplash_client/unsplash_client.dart';

@LazySingleton(as: IIndicationRepository)
class IndicationRepository implements IIndicationRepository {
  final FirebaseFirestore _firestore;
  final String _collectionName;
  IndicationRepository(this._firestore, this._collectionName);
  @override
  Future<Either<IndicationFailure, Unit>> create(Indication indication) async {
    try {
      final indications = _firestore.collection(_collectionName);
      IndicationDto indicationDto = IndicationDto.fromDomain(indication);
      Map<String, dynamic> data = indicationDto.toJson();
      //store the keyword that we will use for querying this document
      data['keyWords'] = generateKeywords(indicationDto.indicationName) +
          generateKeywords(indicationDto.indicationCategory.name);
      //We keep the id that comes from indicationDto and avoid autogeneration
      await indications.doc(indicationDto.id).set(data);
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const IndicationFailure.insufficientPermissions());
      } else {
        return left(const IndicationFailure.unexpected());
      }
    } on FirebaseException catch (e) {
      return left(const IndicationFailure.unableToCreate());
    } catch (e) {
      return left(const IndicationFailure.unexpected());
    }
  }

  // @override
  // Future<Either<MedicineFailures, Unit>> createFake() async {
  //   try {
  //     final medicines = _firestore.collection(_collectionName);
  //     final cats = _firestore.collection('categories');
  //     final pharmaceuticalForms = _firestore.collection('pharmaceuticalForms');
  //     final administrationRoutes =
  //         _firestore.collection('administrationRoutes');
  //     final measureUnits = _firestore.collection('measureUnits');

  //     //Load Unpslash credentials for getting random image urls
  //     final client = UnsplashClient(
  //       settings: const ClientSettings(
  //           credentials: AppCredentials(
  //         accessKey: 'Br9rj2Rhz-t_jt6fpkj49AHZxpmJ8A31ZAkVnyyZajQ',
  //         secretKey: 'da_ywoatyKz9HLzra_JCeXysfwep70vs5ACG7ImQihM',
  //       )),
  //     );

  //     Future<AppCredentials> loadAppCredentialsFromFile(String fileName) async {
  //       final file = File(fileName);
  //       final content = await file.readAsString();
  //       final json = jsonDecode(content) as Map<String, dynamic>;
  //       return AppCredentials.fromJson(json);
  //     }

  //     // Save medicines to database
  //     for (int i = 0; i < 20; i++) {
  //       final photo =
  //           await client.photos.random(query: 'medicine', count: 1).goAndGet();
  //       //define category
  //       final catsSnapshots = await cats.get();
  //       final catDocs = catsSnapshots.docs;
  //       //define unitMeasure
  //       final unitMeasureSnapshots = await measureUnits.get();
  //       final unitMeasuresDocs = unitMeasureSnapshots.docs;
  //       //define pharmaceuticalForm
  //       final pharmaceuticalFormSnapshots = await pharmaceuticalForms.get();
  //       final pharmaceuticalFormDocs = pharmaceuticalFormSnapshots.docs;
  //       //define administrationRoute
  //       final administrationRouteSnapshots = await administrationRoutes.get();
  //       final administrationRouteDocs = administrationRouteSnapshots.docs;
  //       final resizedUrl = photo.first.urls.raw.resizePhoto(
  //         width: 400,
  //         height: 400,
  //         fit: ResizeFitMode.clamp,
  //         format: ImageFormat.webp,
  //       );

  //       //Define the rest of the category
  //       Medicine newMedicine = Medicine(
  //           id: UniqueId(),
  //           comercialName: FullName(truncate(faker.animal.name(), 20)),
  //           genericName: FullName(truncate(faker.animal.name(), 20)),
  //           amountMeasureUnit: NonNegDouble(Random().nextDouble() * 1000),
  //           amountPerPackage: NonNegInt(Random().nextInt(50)),
  //           imageURL: ImageURL(resizedUrl.toString()),
  //           category:
  //               CategoryDto.fromFirestore(catDocs[Random().nextInt(catDocs.length)])
  //                   .toDomain(),
  //           measureUnit: NameAbbreviationDto.fromFirestore(
  //                   unitMeasuresDocs[Random().nextInt(unitMeasuresDocs.length)])
  //               .toDomain(),
  //           controlled: Random().nextBool(),
  //           pharmaceuticalForm: NameAbbreviationDto.fromFirestore(
  //                   pharmaceuticalFormDocs[
  //                       Random().nextInt(pharmaceuticalFormDocs.length)])
  //               .toDomain(),
  //           administrationRoute: NameAbbreviationDto.fromFirestore(
  //                   administrationRouteDocs[Random().nextInt(administrationRouteDocs.length)])
  //               .toDomain(),
  //           counter: NonNegInt(0));

  //       IndicationDto medicineDto = MedicineDto.fromDomain(newMedicine);

  //       //Save to database
  //       Map<String, dynamic> data = medicineDto.toJson();
  //       data['keyWords'] = generateKeywords(medicineDto.comercialName) +
  //           generateKeywords(medicineDto.genericName) +
  //           generateKeywords(medicineDto.administrationRoute.name) +
  //           generateKeywords(medicineDto.category.name);

  //       //We keep the id that comes from categoryDto and avoid autogeneration
  //       await medicines.doc(medicineDto.id).set(data);
  //     }
  //     return right(unit);
  //   } on PlatformException catch (e) {
  //     // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
  //     if (e.message!.contains('PERMISSION_DENIED')) {
  //       return left(const MedicineFailures.insufficientPermissions());
  //     } else {
  //       return left(const MedicineFailures.unexpected());
  //     }
  //   } on FirebaseException catch (e) {
  //     return left(const MedicineFailures.unableToUploadImage());
  //   } catch (e) {
  //     return left(const MedicineFailures.unexpected());
  //   }
  // }

  @override
  Future<Either<IndicationFailure, Unit>> delete(Indication indication) async {
    final indications = _firestore.collection(_collectionName);
    try {
      final indicationDto = IndicationDto.fromDomain(indication);
      await indications.doc(indicationDto.id).delete();
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const IndicationFailure.insufficientPermissions());
      } else {
        return left(const IndicationFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<IndicationFailure, Unit>> update(Indication indication) async {
    final indications = _firestore.collection(_collectionName);
    try {
      final indicationDto = IndicationDto.fromDomain(indication);
      Map<String, dynamic> data = indicationDto.toJson();
      //store the keyword that we will use for querying this document
      data['keyWords'] = generateKeywords(indicationDto.indicationName) +
          generateKeywords(indicationDto.indicationCategory.name);

      await indications.doc(indicationDto.id).set(data);
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const IndicationFailure.insufficientPermissions());
      } else {
        return left(const IndicationFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<IndicationFailure, KtList<Indication>>> watchAll() async* {
    final medicines = _firestore.collection(_collectionName);
    yield* medicines
        .orderBy('lastUpdated', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<IndicationFailure, KtList<Indication>>(
            snapshot.docs
                .map((doc) => IndicationDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const IndicationFailure.insufficientPermissions());
      } else {
        return left(const IndicationFailure.unexpected());
      }
    });

    // ingredientVersionCollection();
  }

  @override
  Stream<Either<IndicationFailure, KtList<Indication>>> watchFiltered(
      String name) {
    // TODO: implement watchFiltered
    throw UnimplementedError();
  }
}
