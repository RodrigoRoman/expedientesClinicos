import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/i_name_abbreviation_repository.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr_failure.dart';
import 'package:expedientes_clinicos/infraestructure/helper_functions/string_manipulation.dart';
import 'package:expedientes_clinicos/infraestructure/name_abbreviation/name_abbreviation_dtos.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: INameAbbreviationRepository)
class NameAbbreviationRepository implements INameAbbreviationRepository {
  final FirebaseFirestore _firestore;
  final String _collectionName;
  NameAbbreviationRepository(this._firestore, this._collectionName);
  @override
  Future<Either<NameAbbreviationFailure, Unit>> create(
      NameAbbreviation measureUnit) async {
    final measureUnits = _firestore.collection(_collectionName);
    try {
      final measureUnitDto = NameAbbreviationDto.fromDomain(measureUnit);
      Map<String, dynamic> data = measureUnitDto.toJson();
      data['keyWords'] =
          generateKeywords(measureUnitDto.name + measureUnitDto.abbr);
      //We keep the id that comes from ingredientDto and avoid autogeneration
      await measureUnits.doc(measureUnitDto.id).set(data);
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const NameAbbreviationFailure.insufficientPermissions());
      } else {
        return left(const NameAbbreviationFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NameAbbreviationFailure, Unit>> delete(
      NameAbbreviation measureUnit) async {
    final measureUnits = _firestore.collection(_collectionName);
    try {
      final measureUnitDto = NameAbbreviationDto.fromDomain(measureUnit);
      await measureUnits.doc(measureUnitDto.id).delete();
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const NameAbbreviationFailure.insufficientPermissions());
      } else {
        return left(const NameAbbreviationFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NameAbbreviationFailure, Unit>> update(
      NameAbbreviation measureUnit) async {
    final measureUnits = _firestore.collection(_collectionName);
    try {
      final measureUnitDto = NameAbbreviationDto.fromDomain(measureUnit);

      await measureUnits.doc(measureUnitDto.id).update(measureUnitDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const NameAbbreviationFailure.insufficientPermissions());
      } else {
        return left(const NameAbbreviationFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<NameAbbreviationFailure, KtList<NameAbbreviation>>>
      watchAll() async* {
    print('watch all called');
    final measureUnits = _firestore.collection(_collectionName);
    yield* measureUnits
        .snapshots()
        .map(
          (snapshot) =>
              right<NameAbbreviationFailure, KtList<NameAbbreviation>>(
            snapshot.docs
                .map((doc) => NameAbbreviationDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const NameAbbreviationFailure.insufficientPermissions());
      } else {
        return left(const NameAbbreviationFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<NameAbbreviationFailure, KtList<NameAbbreviation>>>
      watchFiltered(String name) async* {
    print('filtered what is wrong?');
    print('MeasureUnit filter');
    final measureUnits = _firestore.collection(_collectionName);
    yield* measureUnits
        .where('keyWords', arrayContains: removeSpecialCharacters(name))
        .snapshots()
        .map(
          (snapshot) =>
              right<NameAbbreviationFailure, KtList<NameAbbreviation>>(
            snapshot.docs.map((doc) {
              return NameAbbreviationDto.fromFirestore(doc).toDomain();
            }).toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const NameAbbreviationFailure.insufficientPermissions());
      } else {
        print('inside error');
        return left(const NameAbbreviationFailure.unexpected());
      }
    });
  }
}
