import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/dose_amount.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/dose_amount_failures.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/i_dose_amount_repository.dart';
import 'package:expedientes_clinicos/infraestructure/helper_functions/string_manipulation.dart';
import 'package:expedientes_clinicos/infraestructure/prescription/dose/dose_amount/dose_amount_dtos.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IDoseAmountRepository)
class DosesAmountRepository implements IDoseAmountRepository {
  final FirebaseFirestore _firestore;
  DosesAmountRepository(this._firestore);
  @override
  Future<Either<DoseAmountFailures, Unit>> create(DoseAmount doseAmount) async {
    try {
      final doseAmounts = _firestore.collection('doseAmounts');

      DoseAmountDto doseAmountDto = DoseAmountDto.fromDomain(doseAmount);

      Map<String, dynamic> data = doseAmountDto.toJson();

      //store the keyword that we will use for querying this document
      data['keyWords'] = generateKeywords(doseAmountDto.label);

      //We keep the id that comes from genericMedicineDto and avoid autogeneration
      await doseAmounts.doc(doseAmountDto.id).set(data);

      print('Successfullly created amount');
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoseAmountFailures.insufficientPermissions());
      } else {
        return left(const DoseAmountFailures.unexpected());
      }
    } catch (e) {
      return left(const DoseAmountFailures.unexpected());
    }
  }

  @override
  Future<Either<DoseAmountFailures, Unit>> createFake() async {
    // TODO: implement watchFiltered
    throw UnimplementedError();
  }

  @override
  Future<Either<DoseAmountFailures, Unit>> delete(DoseAmount doseAmount) async {
    final doseAmounts = _firestore.collection('doseAmounts');
    try {
      final doseAmountDto = DoseAmountDto.fromDomain(doseAmount);
      await doseAmounts.doc(doseAmountDto.id).delete();
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoseAmountFailures.insufficientPermissions());
      } else {
        return left(const DoseAmountFailures.unexpected());
      }
    }
  }

  @override
  Future<Either<DoseAmountFailures, Unit>> update(DoseAmount doseAmount) async {
    try {
      final doseAmounts = _firestore.collection('doseAmounts');

      DoseAmountDto doseAmountDto = DoseAmountDto.fromDomain(doseAmount);

      Map<String, dynamic> data = doseAmountDto.toJson();

      //store the keyword that we will use for querying this document
      data['keyWords'] = generateKeywords(doseAmountDto.label);

      //We keep the id that comes from genericMedicineDto and avoid autogeneration
      await doseAmounts.doc(doseAmountDto.id).set(data);

      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoseAmountFailures.insufficientPermissions());
      } else {
        return left(const DoseAmountFailures.unexpected());
      }
    }
  }

  @override
  Stream<Either<DoseAmountFailures, KtList<DoseAmount>>> watchAll() async* {
    final doseAmounts = _firestore.collection('doseAmounts');
    yield* doseAmounts
        .snapshots()
        .map(
          (snapshot) => right<DoseAmountFailures, KtList<DoseAmount>>(
            snapshot.docs
                .map((doc) => DoseAmountDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoseAmountFailures.insufficientPermissions());
      } else {
        return left(const DoseAmountFailures.unexpected());
      }
    });

    // ingredientVersionCollection();
  }

  @override
  Stream<Either<DoseAmountFailures, KtList<DoseAmount>>> watchFiltered(
      String name) async* {
    final doseAmounts = _firestore.collection('doseAmounts');
    yield* doseAmounts
        .where('keyWords', arrayContains: removeSpecialCharacters(name))
        .snapshots()
        .map(
          (snapshot) => right<DoseAmountFailures, KtList<DoseAmount>>(
            snapshot.docs
                .map((doc) => DoseAmountDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoseAmountFailures.insufficientPermissions());
      } else {
        return left(const DoseAmountFailures.unexpected());
      }
    });
  }
}
