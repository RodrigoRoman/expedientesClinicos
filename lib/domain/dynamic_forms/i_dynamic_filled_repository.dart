import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/dynamic_form_failures.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_section.dart';

abstract class IDynamicFilledRepository {
  Stream<Either<DynamicFormFailures, FormSection>> watch();
  Stream<Either<DynamicFormFailures, FormSection>> watchAll();
  Future<Either<DynamicFormFailures, FormSection>> create(
      FormSection formSection);
  Future<Either<DynamicFormFailures, Unit>> delete(FormSection formSection);
  Future<Either<DynamicFormFailures, FormSection>> update(
      FormSection formSection);
}
