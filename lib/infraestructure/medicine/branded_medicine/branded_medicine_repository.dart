import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/medicine/branded_medicine/branded_medicine.dart';
import 'package:expedientes_clinicos/domain/medicine/branded_medicine/branded_medicine_failures.dart';
import 'package:expedientes_clinicos/domain/medicine/branded_medicine/i_branded_medicine_repository.dart';
import 'package:expedientes_clinicos/infraestructure/helper_functions/string_manipulation.dart';
import 'package:expedientes_clinicos/infraestructure/medicine/branded_medicine/branded_medicine_dtos.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';
import 'package:unsplash_client/unsplash_client.dart';

@LazySingleton(as: IBrandedMedicineRepository)
class BrandedMedicineRepository implements IBrandedMedicineRepository {
  final FirebaseFirestore _firestore;
  BrandedMedicineRepository(this._firestore);
  @override
  Future<Either<BrandedMedicineFailures, BrandedMedicine>> create(
      BrandedMedicine medicine) async {
    try {
      BrandedMedicineDto brandedmedicineDto =
          BrandedMedicineDto.fromDomain(medicine);
      final medicineReference = FirebaseStorage.instance.ref().child(
          'medicines/${brandedmedicineDto.id + brandedmedicineDto.comercialName}.jpg');
      File file = File(brandedmedicineDto.imageURL);

      await medicineReference.putFile(file);

      //retrieving the download URL to save it as url for the category
      final medicines = _firestore.collection('brandedMedicines');

      final imageUrl = await medicineReference.getDownloadURL();

      brandedmedicineDto = brandedmedicineDto.copyWith(imageURL: imageUrl);

      Map<String, dynamic> data = brandedmedicineDto.toJson();

      //store the keyword that we will use for querying this document
      data['keyWords'] = generateKeywords(brandedmedicineDto.comercialName) +
          generateKeywords(brandedmedicineDto.genericMedicine.genericName) +
          generateKeywords(
              brandedmedicineDto.genericMedicine.administrationRoute.name) +
          generateKeywords(brandedmedicineDto.genericMedicine.category.name);

      //We keep the id that comes from BrandedmedicineDto and avoid autogeneration
      await medicines.doc(brandedmedicineDto.id).set(data);

      BrandedMedicine brandedMedicine = BrandedMedicineDto.fromFirestore(
              await medicines.doc(brandedmedicineDto.id).get())
          .toDomain();

      return right(brandedMedicine);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const BrandedMedicineFailures.insufficientPermissions());
      } else {
        return left(const BrandedMedicineFailures.unexpected());
      }
    } on FirebaseException catch (e) {
      return left(const BrandedMedicineFailures.unableToUploadImage());
    } catch (e) {
      return left(const BrandedMedicineFailures.unexpected());
    }
  }

  @override
  Future<Either<BrandedMedicineFailures, Unit>> createFake() async {
    // TODO: implement watchFiltered
    throw UnimplementedError();
  }

  @override
  Future<Either<BrandedMedicineFailures, Unit>> delete(
      BrandedMedicine medicine) async {
    final medicines = _firestore.collection('brandedMedicines');
    try {
      final BrandedmedicineDto = BrandedMedicineDto.fromDomain(medicine);
      await medicines.doc(BrandedmedicineDto.id).delete();
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const BrandedMedicineFailures.insufficientPermissions());
      } else {
        return left(const BrandedMedicineFailures.unexpected());
      }
    }
  }

  @override
  Future<Either<BrandedMedicineFailures, BrandedMedicine>> update(
      BrandedMedicine medicine) async {
    try {
      BrandedMedicineDto brandedmedicineDto =
          BrandedMedicineDto.fromDomain(medicine);
      final medicineReference = FirebaseStorage.instance.ref().child(
          'medicines/${brandedmedicineDto.id + brandedmedicineDto.comercialName}.jpg');
      File file = File(brandedmedicineDto.imageURL);

      await medicineReference.putFile(file);

      //retrieving the download URL to save it as url for the category
      final medicines = _firestore.collection('brandedMedicines');

      final imageUrl = await medicineReference.getDownloadURL();

      brandedmedicineDto = brandedmedicineDto.copyWith(imageURL: imageUrl);

      Map<String, dynamic> data = brandedmedicineDto.toJson();

      //store the keyword that we will use for querying this document
      data['keyWords'] = generateKeywords(brandedmedicineDto.comercialName) +
          generateKeywords(brandedmedicineDto.genericMedicine.genericName) +
          generateKeywords(
              brandedmedicineDto.genericMedicine.administrationRoute.name) +
          generateKeywords(brandedmedicineDto.genericMedicine.category.name);

      //We keep the id that comes from BrandedmedicineDto and avoid autogeneration
      await medicines.doc(brandedmedicineDto.id).set(data);
      BrandedMedicine brandedMedicine = BrandedMedicineDto.fromFirestore(
              await medicines.doc(brandedmedicineDto.id).get())
          .toDomain();

      return right(brandedMedicine);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const BrandedMedicineFailures.insufficientPermissions());
      } else {
        return left(const BrandedMedicineFailures.unexpected());
      }
    }
  }

  @override
  Stream<Either<BrandedMedicineFailures, KtList<BrandedMedicine>>>
      watchAll() async* {
    print('entered seach all');
    final medicines = _firestore.collection('brandedMedicines');
    yield* medicines
        .snapshots()
        .map(
          (snapshot) => right<BrandedMedicineFailures, KtList<BrandedMedicine>>(
            snapshot.docs
                .map((doc) => BrandedMedicineDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const BrandedMedicineFailures.insufficientPermissions());
      } else {
        print('the error');
        print(e);
        return left(const BrandedMedicineFailures.unexpected());
      }
    });

    // ingredientVersionCollection();
  }

  @override
  Stream<Either<BrandedMedicineFailures, KtList<BrandedMedicine>>>
      watchFiltered(String name) async* {
    print('entered search filter');
    final medicines = _firestore.collection('brandedMedicines');
    yield* medicines
        .where('keyWords', arrayContains: removeSpecialCharacters(name))
        .snapshots()
        .map(
          (snapshot) => right<BrandedMedicineFailures, KtList<BrandedMedicine>>(
            snapshot.docs
                .map((doc) => BrandedMedicineDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const BrandedMedicineFailures.insufficientPermissions());
      } else {
        return left(const BrandedMedicineFailures.unexpected());
      }
    });
  }
}
