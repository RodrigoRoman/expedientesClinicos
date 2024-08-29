import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/dynamic_form_failures.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/form_element.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_section.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/i_dynamic_repository.dart';
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/i_generic_medicine_repository.dart';
import 'package:expedientes_clinicos/infraestructure/dynamic_forms/dynamic_form_structure/form_section/form_components/form_element_dto.dart';
import 'package:expedientes_clinicos/infraestructure/dynamic_forms/dynamic_form_structure/form_section/form_section_dto.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/kt_list.dart';

@LazySingleton(as: IDynamicFormRepository)
class DynamicFormRepository implements IDynamicFormRepository {
  final FirebaseFirestore _firestore;
  DynamicFormRepository(this._firestore);

  //Save the form to the forms collection
  @override
  Future<Either<DynamicFormFailures, FormSection>> create(
      FormSection formSection) async {
    try {
      // Convert the formSection to Data transfer object
      FormSectionDto formSectionDto = FormSectionDto.fromDomain(formSection);

      // Access the dynamicForms collection
      final formsCollection = _firestore.collection("dynamicForms");

      // modify the formSection object to a format that can be
      // saved to the database JSON format
      Map<String, dynamic> data = formSectionDto.toJson();

      //We keep the id that comes from categoryDto and avoid autogeneration
      await formsCollection.doc(formSectionDto.formId).set(data);
      FormSection newFormSection = FormSectionDto.fromFirestore(
              await formsCollection.doc(formSectionDto.formId).get())
          .toDomain();

      return right(newFormSection);
    } on FirebaseException catch (e) {
      return left(const DynamicFormFailures.database());
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DynamicFormFailures.insufficientPermissions());
      } else {
        return left(const DynamicFormFailures.unexpected());
      }
    } catch (e) {
      print('unexpected error');
      print(e);
      return left(const DynamicFormFailures.unexpected());
    }
  }

  @override
  Future<Either<DynamicFormFailures, Unit>> delete(
      FormSection formSection) async {
    try {
      final CollectionReference<Map<String, dynamic>> formsCollection =
          _firestore.collection("dynamicForms");
      FormSectionDto formSectionDto = FormSectionDto.fromDomain(formSection);
      DocumentReference<Map<String, dynamic>> collectionDocument =
          formsCollection.doc(formSectionDto.formId);
      await collectionDocument.delete();
      return right(unit);
    } on FirebaseException catch (e) {
      return left(const DynamicFormFailures.database());
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DynamicFormFailures.insufficientPermissions());
      } else {
        return left(const DynamicFormFailures.unexpected());
      }
    } catch (e) {
      print('unexpected error');
      print(e);
      return left(const DynamicFormFailures.unexpected());
    }
  }

  @override
  Future<Either<DynamicFormFailures, FormSection>> update(
      FormSection formSection) async {
    try {
      CollectionReference<Map<String, dynamic>> formCollection =
          _firestore.collection("dynamicForms");
      FormSectionDto formSectionDto = FormSectionDto.fromDomain(formSection);
      DocumentReference<Map<String, dynamic>> documentReference =
          formCollection.doc(formSectionDto.formId);
      Map<String, dynamic> jsonForm = formSectionDto.toJson();
      await documentReference.set(jsonForm);
      FormSectionDto newFormElementDto = FormSectionDto.fromFirestore(
          await formCollection.doc(formSectionDto.formId).get());
      FormSection newFormElement = newFormElementDto.toDomain();
      return right(newFormElement);
    } on FirebaseException catch (e) {
      return left(DynamicFormFailures.database());
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DynamicFormFailures.insufficientPermissions());
      } else {
        return left(const DynamicFormFailures.unexpected());
      }
    } catch (e) {
      return left(const DynamicFormFailures.unexpected());
    }
  }

  @override
  Stream<Either<DynamicFormFailures, KtList<FormSection>>> watchAll() {
    // TODO: implement watchAll
    throw UnimplementedError();
  }

  @override
  Stream<Either<DynamicFormFailures, KtList<FormSection>>> watchFiltered(
      String name) {
    // TODO: implement watchFiltered
    throw UnimplementedError();
  }

  @override
  Future<Either<DynamicFormFailures, FormSection>> filledForm(
      FormSection formSection) async {
    try {
      final formsCollection = _firestore.collection("dynamicFilledForm");
      FormSectionDto formSectionDto = FormSectionDto.fromDomain(formSection);
      Map<String, dynamic> formSectionJson = formSectionDto.toJson();

      //We keep the id that comes from categoryDto and avoid autogeneration
      formsCollection.doc(formSectionDto.formId).set(formSectionJson);
      FormSection newFormSection = FormSectionDto.fromFirestore(
              await formsCollection.doc(formSectionDto.formId).get())
          .toDomain();
      return right(newFormSection);
    } on FirebaseException catch (e) {
      return left(const DynamicFormFailures.database());
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DynamicFormFailures.insufficientPermissions());
      } else {
        return left(const DynamicFormFailures.unexpected());
      }
    } catch (e) {
      print('unexpected error');
      print(e);
      return left(const DynamicFormFailures.unexpected());
    }
  }
}
