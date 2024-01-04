import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/generic_medicine.dart';
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/generic_medicine_failures.dart';
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/i_generic_medicine_repository.dart';
import 'package:expedientes_clinicos/infraestructure/helper_functions/string_manipulation.dart';
import 'package:expedientes_clinicos/infraestructure/medicine/generic_medicine/generic_medicine_dtos.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IGenericMedicineRepository)
class GenericMedicineRepository implements IGenericMedicineRepository {
  final FirebaseFirestore _firestore;
  GenericMedicineRepository(this._firestore);
  @override
  Future<Either<GenericMedicineFailures, Unit>> create(
      GenericMedicine medicine) async {
    try {
      GenericMedicineDto genericMedicineDto =
          GenericMedicineDto.fromDomain(medicine);

      //retrieving the download URL to save it as url for the category
      final medicines = _firestore.collection('genericMedicines');

      Map<String, dynamic> data = genericMedicineDto.toJson();

      //store the keyword that we will use for querying this document
      data['keyWords'] = await generateKeywords(
              genericMedicineDto.category.name) +
          await generateKeywords(genericMedicineDto.genericName) +
          await generateKeywords(genericMedicineDto.measureUnit.name) +
          await generateKeywords(
              genericMedicineDto.amountMeasureUnit.toInt().toString()) +
          await generateKeywords(genericMedicineDto.administrationRoute.name);

      //We keep the id that comes from genericMedicineDto and avoid autogeneration
      await medicines.doc(genericMedicineDto.id).set(data);
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const GenericMedicineFailures.insufficientPermissions());
      } else {
        return left(const GenericMedicineFailures.unexpected());
      }
    } on FirebaseException catch (e) {
      return left(const GenericMedicineFailures.unableToUploadImage());
    } catch (e) {
      return left(const GenericMedicineFailures.unexpected());
    }
  }

  @override
  Future<Either<GenericMedicineFailures, Unit>> createFake() async {
    // TODO: implement watchFiltered
    throw UnimplementedError();
  }

  @override
  Future<Either<GenericMedicineFailures, Unit>> delete(
      GenericMedicine medicine) async {
    final medicines = _firestore.collection('genericMedicines');
    try {
      final genericMedicineDto = GenericMedicineDto.fromDomain(medicine);
      await medicines.doc(genericMedicineDto.id).delete();
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const GenericMedicineFailures.insufficientPermissions());
      } else {
        return left(const GenericMedicineFailures.unexpected());
      }
    }
  }

  @override
  Future<Either<GenericMedicineFailures, Unit>> update(
      GenericMedicine medicine) async {
    final medicines = _firestore.collection('genericMedicines');
    try {
      final medicinesDto = GenericMedicineDto.fromDomain(medicine);

      await medicines.doc(medicinesDto.id).update(medicinesDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const GenericMedicineFailures.insufficientPermissions());
      } else {
        return left(const GenericMedicineFailures.unexpected());
      }
    }
  }

  @override
  Stream<Either<GenericMedicineFailures, KtList<GenericMedicine>>>
      watchAll() async* {
    final medicines = _firestore.collection('genericMedicines');
    yield* medicines
        .snapshots()
        .map(
          (snapshot) => right<GenericMedicineFailures, KtList<GenericMedicine>>(
            snapshot.docs
                .map((doc) => GenericMedicineDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const GenericMedicineFailures.insufficientPermissions());
      } else {
        return left(const GenericMedicineFailures.unexpected());
      }
    });

    // ingredientVersionCollection();
  }

  @override
  Stream<Either<GenericMedicineFailures, KtList<GenericMedicine>>>
      watchFiltered(String name) async* {
    final medicines = _firestore.collection('genericMedicines');
    yield* medicines
        .where('keyWords', arrayContains: removeSpecialCharacters(name))
        .snapshots()
        .map(
          (snapshot) => right<GenericMedicineFailures, KtList<GenericMedicine>>(
            snapshot.docs
                .map((doc) => GenericMedicineDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const GenericMedicineFailures.insufficientPermissions());
      } else {
        return left(const GenericMedicineFailures.unexpected());
      }
    });
  }
}
