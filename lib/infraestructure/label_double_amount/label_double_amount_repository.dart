import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/label_double_amount/i_label_double_amount_repository.dart';
import 'package:expedientes_clinicos/domain/core/label_double_amount/label_double_amount.dart';
import 'package:expedientes_clinicos/domain/core/label_double_amount/label_double_amount_failure.dart';
import 'package:expedientes_clinicos/infraestructure/helper_functions/string_manipulation.dart';
import 'package:expedientes_clinicos/infraestructure/label_double_amount/label_double_amount_dtos.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: ILabelDoubleAmountRepository)
class LabelDoubleAmountRepository implements ILabelDoubleAmountRepository {
  final FirebaseFirestore _firestore;
  final String _collectionName;
  LabelDoubleAmountRepository(this._firestore, this._collectionName);
  @override
  Future<Either<LabelDoubleAmountFailure, Unit>> create(
      LabelDoubleAmount labelDoubleAmount) async {
    try {
      final labelDoubleAmounts = _firestore.collection(_collectionName);

      LabelDoubleAmountDto labelDoubleAmountDto =
          LabelDoubleAmountDto.fromDomain(labelDoubleAmount);

      Map<String, dynamic> data = labelDoubleAmountDto.toJson();

      //store the keyword that we will use for querying this document
      data['keyWords'] = await generateKeywords(labelDoubleAmountDto.label);

      //We keep the id that comes from genericMedicineDto and avoid autogeneration
      await labelDoubleAmounts.doc(labelDoubleAmountDto.id).set(data);

      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const LabelDoubleAmountFailure.insufficientPermissions());
      } else {
        return left(const LabelDoubleAmountFailure.unexpected());
      }
    } catch (e) {
      return left(const LabelDoubleAmountFailure.unexpected());
    }
  }

  @override
  Future<Either<LabelDoubleAmountFailure, Unit>> createFake() async {
    // TODO: implement watchFiltered
    throw UnimplementedError();
  }

  @override
  Future<Either<LabelDoubleAmountFailure, Unit>> delete(
      LabelDoubleAmount labelDoubleAmount) async {
    final labelDoubleAmounts = _firestore.collection(_collectionName);
    try {
      final labelDoubleAmountDto =
          LabelDoubleAmountDto.fromDomain(labelDoubleAmount);
      await labelDoubleAmounts.doc(labelDoubleAmountDto.id).delete();
      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const LabelDoubleAmountFailure.insufficientPermissions());
      } else {
        return left(const LabelDoubleAmountFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<LabelDoubleAmountFailure, Unit>> update(
      LabelDoubleAmount labelDoubleAmount) async {
    try {
      final labelDoubleAmounts = _firestore.collection(_collectionName);

      LabelDoubleAmountDto labelDoubleAmountDto =
          LabelDoubleAmountDto.fromDomain(labelDoubleAmount);

      Map<String, dynamic> data = labelDoubleAmountDto.toJson();

      //store the keyword that we will use for querying this document
      data['keyWords'] = generateKeywords(labelDoubleAmountDto.label);

      //We keep the id that comes from genericMedicineDto and avoid autogeneration
      await labelDoubleAmounts.doc(labelDoubleAmountDto.id).set(data);

      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const LabelDoubleAmountFailure.insufficientPermissions());
      } else {
        return left(const LabelDoubleAmountFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<LabelDoubleAmountFailure, KtList<LabelDoubleAmount>>>
      watchAll() async* {
    final labelDoubleAmounts = _firestore.collection(_collectionName);
    yield* labelDoubleAmounts
        .snapshots()
        .map(
          (snapshot) =>
              right<LabelDoubleAmountFailure, KtList<LabelDoubleAmount>>(
            snapshot.docs
                .map(
                    (doc) => LabelDoubleAmountDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const LabelDoubleAmountFailure.insufficientPermissions());
      } else {
        return left(const LabelDoubleAmountFailure.unexpected());
      }
    });

    // ingredientVersionCollection();
  }

  @override
  Stream<Either<LabelDoubleAmountFailure, KtList<LabelDoubleAmount>>>
      watchFiltered(String name) async* {
    final labelDoubleAmounts = _firestore.collection(_collectionName);
    yield* labelDoubleAmounts
        .where('keyWords', arrayContains: removeSpecialCharacters(name))
        .snapshots()
        .map(
          (snapshot) =>
              right<LabelDoubleAmountFailure, KtList<LabelDoubleAmount>>(
            snapshot.docs
                .map(
                    (doc) => LabelDoubleAmountDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, _) {
      if (e is PlatformException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const LabelDoubleAmountFailure.insufficientPermissions());
      } else {
        return left(const LabelDoubleAmountFailure.unexpected());
      }
    });
  }
}
