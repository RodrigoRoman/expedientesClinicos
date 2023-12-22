import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_failures.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/i_dose_repository.dart';
import 'package:expedientes_clinicos/infraestructure/helper_functions/string_manipulation.dart';
import 'package:expedientes_clinicos/infraestructure/prescription/dose/dose_dtos.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';
import 'package:unsplash_client/unsplash_client.dart';

@LazySingleton(as: IDoseRepository)
class DoseRepository implements IDoseRepository {
  final FirebaseFirestore _firestore;
  DoseRepository(this._firestore);
  @override
  Future<Either<DoseFailures, Unit>> create(Dose dose) async {
    try {
      DoseDto doseDto = DoseDto.fromDomain(dose);
      final doses = _firestore.collection('doses');

      Map<String, dynamic> data = doseDto.toJson();

      //store the keyword that we will use for querying this document
      data['keyWords'] = await generateKeywords(doseDto.dayHoursDose.label) +
          await generateKeywords(doseDto.weekDaysDose.label) +
          await generateKeywords(doseDto.duration.label);
      //We keep the id that comes from DoseDto and avoid autogeneration
      await doses.doc(doseDto.id).set(data);
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoseFailures.insufficientPermissions());
      } else {
        return left(const DoseFailures.unexpected());
      }
    } on FirebaseException catch (e) {
      return left(const DoseFailures.unableToUploadImage());
    } catch (e) {
      return left(const DoseFailures.unexpected());
    }
  }

  @override
  Future<Either<DoseFailures, Unit>> createFake() async {
    // TODO: implement watchFiltered
    throw UnimplementedError();
  }

  @override
  Future<Either<DoseFailures, Unit>> delete(Dose dose) async {
    try {
      final doses = _firestore.collection('doses');
      final doseDto = DoseDto.fromDomain(dose);
      await doses.doc(doseDto.id).delete();
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoseFailures.insufficientPermissions());
      } else {
        return left(const DoseFailures.unexpected());
      }
    }
  }

  @override
  Future<Either<DoseFailures, Unit>> update(Dose dose) async {
    try {
      DoseDto doseDto = DoseDto.fromDomain(dose);
      final doses = _firestore.collection('doses');

      Map<String, dynamic> data = doseDto.toJson();

      //store the keyword that we will use for querying this document
      data['keyWords'] = await generateKeywords(doseDto.dayHoursDose.label) +
          await generateKeywords(doseDto.weekDaysDose.label) +
          await generateKeywords(doseDto.duration.label);
      //We keep the id that comes from DoseDto and avoid autogeneration
      await doses.doc(doseDto.id).set(data);
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoseFailures.insufficientPermissions());
      } else {
        return left(const DoseFailures.unexpected());
      }
    }
  }

  @override
  Stream<Either<DoseFailures, KtList<Dose>>> watchAll() async* {
    final doses = _firestore.collection('doses');
    yield* doses
        .snapshots()
        .map(
          (snapshot) => right<DoseFailures, KtList<Dose>>(
            snapshot.docs
                .map((doc) => DoseDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoseFailures.insufficientPermissions());
      } else {
        print('error');
        print(e);
        return left(const DoseFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoseFailures, KtList<Dose>>> watchFiltered(String name) async* {
    final doses = _firestore.collection('doses');
    yield* doses
        .where('keyWords', arrayContains: removeSpecialCharacters(name))
        .snapshots()
        .map(
          (snapshot) => right<DoseFailures, KtList<Dose>>(
            snapshot.docs
                .map((doc) => DoseDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoseFailures.insufficientPermissions());
      } else {
        return left(const DoseFailures.unexpected());
      }
    });
  }
}
