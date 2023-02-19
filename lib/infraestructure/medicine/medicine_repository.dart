import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/medicine/i_medicine_repository.dart';
import 'package:expedientes_clinicos/domain/medicine/medicine.dart';
import 'package:expedientes_clinicos/domain/medicine/medicine_failures.dart';
import 'package:expedientes_clinicos/infraestructure/helper_functions/string_manipulation.dart';
import 'package:expedientes_clinicos/infraestructure/medicine/medicine_dtos.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IMedicineRepository)
class MedicineRepository implements IMedicineRepository {
  final FirebaseFirestore _firestore;
  MedicineRepository(this._firestore);
  @override
  Future<Either<MedicineFailures, Unit>> create(Medicine medicine) async {
    print('Inside medicine repo');
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
      print('Was created');
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
      print('ERROR INSIDE FIREBASE');
      print(e);
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
