import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr_failure.dart';
import 'package:expedientes_clinicos/domain/medicine/i_pharmaceutical_form_repository.dart';
import 'package:expedientes_clinicos/infraestructure/helper_functions/string_manipulation.dart';
import 'package:expedientes_clinicos/infraestructure/name_abbreviation/name_abbreviation_dtos.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IPharmaceuticalFormRepository)
class PharmaceuticalFormRepository implements IPharmaceuticalFormRepository {
  final FirebaseFirestore _firestore;
  PharmaceuticalFormRepository(this._firestore);
  @override
  Future<Either<NameAbbreviationFailure, Unit>> create(
      NameAbbreviation pharmaceuticalForm) async {
    final pharmaceuticalForms = _firestore.collection('pharmaceuticalForms');
    try {
      final PharmaceuticalFormDto =
          NameAbbreviationDto.fromDomain(pharmaceuticalForm);
      Map<String, dynamic> data = PharmaceuticalFormDto.toJson();
      data['keyWords'] = generateKeywords(
          PharmaceuticalFormDto.name + PharmaceuticalFormDto.abbr);
      //We keep the id that comes from ingredientDto and avoid autogeneration
      await pharmaceuticalForms.doc(PharmaceuticalFormDto.id).set(data);
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
      NameAbbreviation pharmaceuticalForm) async {
    final pharmaceuticalForms = _firestore.collection('pharmaceuticalForms');
    try {
      final pharmaceuticalFormDto =
          NameAbbreviationDto.fromDomain(pharmaceuticalForm);
      await pharmaceuticalForms.doc(pharmaceuticalFormDto.id).delete();
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
      NameAbbreviation pharmaceuticalForm) async {
    final pharmaceuticalForms = _firestore.collection('pharmaceuticalForms');
    try {
      final pharmaceuticalFormDto =
          NameAbbreviationDto.fromDomain(pharmaceuticalForm);

      await pharmaceuticalForms
          .doc(pharmaceuticalFormDto.id)
          .update(pharmaceuticalFormDto.toJson());
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
    final pharmaceuticalForms = _firestore.collection('pharmaceuticalForms');
    yield* pharmaceuticalForms
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
    final pharmaceuticalForms = _firestore.collection('pharmaceuticalForms');
    yield* pharmaceuticalForms
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
        return left(const NameAbbreviationFailure.unexpected());
      }
    });
  }
}
