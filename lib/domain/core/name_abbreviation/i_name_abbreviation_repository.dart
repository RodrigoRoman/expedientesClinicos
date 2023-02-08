import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr_failure.dart';
import 'package:kt_dart/collection.dart';

abstract class INameAbbreviationRepository {
  Stream<Either<NameAbbreviationFailure, KtList<NameAbbreviation>>> watchAll();
  Stream<Either<NameAbbreviationFailure, KtList<NameAbbreviation>>>
      watchFiltered(String name);
  Future<Either<NameAbbreviationFailure, Unit>> create(
      NameAbbreviation nameAbbreviation);
  Future<Either<NameAbbreviationFailure, Unit>> update(
      NameAbbreviation nameAbbreviation);
  Future<Either<NameAbbreviationFailure, Unit>> delete(
      NameAbbreviation nameAbbreviation);
}
