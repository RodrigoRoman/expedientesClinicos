import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication_failure.dart';
import 'package:kt_dart/collection.dart';

abstract class IIndicationRepository {
  Stream<Either<IndicationFailure, KtList<Indication>>> watchAll();
  Stream<Either<IndicationFailure, KtList<Indication>>> watchFiltered(
      String keyword);
  Future<Either<IndicationFailure, Unit>> create(Indication indication);
  Future<Either<IndicationFailure, Unit>> update(Indication indication);
  Future<Either<IndicationFailure, Unit>> delete(Indication indication);
}
