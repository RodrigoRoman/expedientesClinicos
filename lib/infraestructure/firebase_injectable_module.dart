import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/categories/i_category_repository.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/i_name_abbreviation_repository.dart';
import 'package:expedientes_clinicos/infraestructure/category/category_db_collection_name.dart';
import 'package:expedientes_clinicos/infraestructure/category/category_repository.dart';
import 'package:expedientes_clinicos/infraestructure/name_abbreviation/name_abbreviation_db_collection_names.dart';
import 'package:expedientes_clinicos/infraestructure/name_abbreviation/name_abbreviation_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseInjectableModule {
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  //category collection names
  @Named(FirebaseCollectionCategories.medicineCategories)
  @lazySingleton
  ICategoryRepository get categoryMedicineRepository => CategoryRepository(
      firestore, FirebaseCollectionCategories.medicineCategories);

  @Named(FirebaseCollectionCategories.indicationCategories)
  @lazySingleton
  ICategoryRepository get categoryIndicationRepository => CategoryRepository(
      firestore, FirebaseCollectionCategories.indicationCategories);

  //abreviation names collection names
  @Named(FirebaseCollectionNameAbbreviations.measureUnits)
  INameAbbreviationRepository get measureUnitRepository =>
      NameAbbreviationRepository(
          firestore, FirebaseCollectionNameAbbreviations.measureUnits);

  @Named(FirebaseCollectionNameAbbreviations.pharmaceuticalForms)
  INameAbbreviationRepository get pharmaceuticalFormRepostitory =>
      NameAbbreviationRepository(
          firestore, FirebaseCollectionNameAbbreviations.pharmaceuticalForms);

  @Named(FirebaseCollectionNameAbbreviations.administrationRoutes)
  INameAbbreviationRepository get administrationRoutesRepostitory =>
      NameAbbreviationRepository(
          firestore, FirebaseCollectionNameAbbreviations.administrationRoutes);
}
