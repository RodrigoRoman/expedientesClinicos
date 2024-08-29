import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/dynamic_form_failures.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_section.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/i_dynamic_filled_repository.dart';
import 'package:expedientes_clinicos/infraestructure/dynamic_forms/dynamic_form_structure/form_section/form_section_dto.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';

class DynamicFilledRepository implements IDynamicFilledRepository {
  final FirebaseFirestore _firestore;
  DynamicFilledRepository(this._firestore);

  @override
  Future<Either<DynamicFormFailures, FormSection>> create(
      FormSection formSection) async {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<DynamicFormFailures, Unit>> delete(FormSection formSection) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<DynamicFormFailures, FormSection>> update(
      FormSection formSection) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<DynamicFormFailures, FormSection>> watch() {
    // TODO: implement watch
    throw UnimplementedError();
  }

  @override
  Stream<Either<DynamicFormFailures, FormSection>> watchAll() {
    // TODO: implement watchAll
    throw UnimplementedError();
  }
}
