import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/dynamic_form_failures.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_section.dart';
import 'package:kt_dart/kt.dart';

abstract class IDynamicFormRepository {
  Stream<Either<DynamicFormFailures, KtList<FormSection>>> watchAll();
  Stream<Either<DynamicFormFailures, KtList<FormSection>>> watchFiltered(
      String name);
  Future<Either<DynamicFormFailures, FormSection>> create(
      FormSection formSection);
  Future<Either<DynamicFormFailures, FormSection>> update(
      FormSection formSection);

  Future<Either<DynamicFormFailures, Unit>> delete(FormSection formSection);
  Future<Either<DynamicFormFailures, FormSection>> filledForm(
      FormSection formSection);
}
