import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/label_double_amount/label_double_amount.dart';
import 'package:expedientes_clinicos/domain/core/label_double_amount/label_double_amount_failure.dart';
import 'package:kt_dart/kt.dart';

abstract class ILabelDoubleAmountRepository {
  Stream<Either<LabelDoubleAmountFailure, KtList<LabelDoubleAmount>>>
      watchAll();
  Stream<Either<LabelDoubleAmountFailure, KtList<LabelDoubleAmount>>>
      watchFiltered(String name);
  Future<Either<LabelDoubleAmountFailure, Unit>> create(
      LabelDoubleAmount labelDoubleAmount);
  Future<Either<LabelDoubleAmountFailure, Unit>> update(
      LabelDoubleAmount labelDoubleAmount);
  Future<Either<LabelDoubleAmountFailure, Unit>> delete(
      LabelDoubleAmount labelDoubleAmount);
}
