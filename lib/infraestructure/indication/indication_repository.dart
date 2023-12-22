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
      data['keyWords'] = await generateKeywords(indicationDto.indicationName) +
          await generateKeywords(indicationDto.indicationCategory.name);

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

      data['keyWords'] = await generateKeywords(indicationDto.indicationName) +
          await generateKeywords(indicationDto.indicationCategory.name);

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
      String name) async* {
    final medicines = _firestore.collection(_collectionName);
    yield* medicines
        .where('keyWords', arrayContains: removeSpecialCharacters(name))
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
  }
}
