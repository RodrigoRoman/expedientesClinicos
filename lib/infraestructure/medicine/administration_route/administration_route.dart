import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr_failure.dart';
import 'package:expedientes_clinicos/domain/medicine/i_administration_route_repository.dart';
import 'package:expedientes_clinicos/infraestructure/helper_functions/string_manipulation.dart';
import 'package:expedientes_clinicos/infraestructure/name_abbreviation/name_abbreviation_dtos.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
// import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IAdministrationRouteRepository)
class AdministrationRouteRepository implements IAdministrationRouteRepository {
  final FirebaseFirestore _firestore;
  AdministrationRouteRepository(this._firestore);

  @override
  Future<Either<NameAbbreviationFailure, Unit>> create(
      NameAbbreviation measureUnit) async {
    final administrationRoutes = _firestore.collection('administrationRoutes');
    try {
      final administrationRoutesDto =
          NameAbbreviationDto.fromDomain(measureUnit);
      Map<String, dynamic> data = administrationRoutesDto.toJson();
      data['keyWords'] = generateKeywords(
          administrationRoutesDto.name + administrationRoutesDto.abbr);
      //We keep the id that comes from ingredientDto and avoid autogeneration
      await administrationRoutes.doc(administrationRoutesDto.id).set(data);
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
    final administrationRoutes = _firestore.collection('administrationRoutes');
    try {
      final administrationRoutesDto =
          NameAbbreviationDto.fromDomain(measureUnit);
      await administrationRoutes.doc(administrationRoutesDto.id).delete();
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
    final administrationRoutes = _firestore.collection('administrationRoutes');
    try {
      final administrationRoutesDto =
          NameAbbreviationDto.fromDomain(measureUnit);

      await administrationRoutes
          .doc(administrationRoutesDto.id)
          .update(administrationRoutesDto.toJson());
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
    final administrationRoutes = _firestore.collection('administrationRoutes');
    yield* administrationRoutes
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

    // ingredientVersionCollection();
  }

  @override
  Stream<Either<NameAbbreviationFailure, KtList<NameAbbreviation>>>
      watchFiltered(String name) async* {
    final administrationRoutes = _firestore.collection('administrationRoutes');
    yield* administrationRoutes
        .where('keyWords', arrayContains: removeSpecialCharacters(name))
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
}
