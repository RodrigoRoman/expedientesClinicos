import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/categories/i_category_repository.dart';
import 'package:expedientes_clinicos/domain/core/indication/i_indication_repository.dart';
import 'package:expedientes_clinicos/domain/core/label_double_amount/i_label_double_amount_repository.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/i_name_abbreviation_repository.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/i_time_interval_repository.dart';
import 'package:expedientes_clinicos/infraestructure/category/category_db_collection_name.dart';
import 'package:expedientes_clinicos/infraestructure/category/category_repository.dart';
import 'package:expedientes_clinicos/infraestructure/indication/indication_db_collection_name.dart';
import 'package:expedientes_clinicos/infraestructure/indication/indication_repository.dart';
import 'package:expedientes_clinicos/infraestructure/label_double_amount/label_double_amount_repository.dart';
import 'package:expedientes_clinicos/infraestructure/name_abbreviation/name_abbreviation_db_collection_names.dart';
import 'package:expedientes_clinicos/infraestructure/name_abbreviation/name_abbreviation_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'time_interval/time_interval_db_collection_name.dart';
import 'time_interval/time_interval_repository.dart';

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

  @Named(FirebaseCollectionCategories.patientVisitCategories)
  @lazySingleton
  ICategoryRepository get categoryPatientVisitRepository => CategoryRepository(
      firestore, FirebaseCollectionCategories.patientVisitCategories);

  //indication names

  @Named(FirebaseCollectionsIndication.medicineIndication)
  @lazySingleton
  IIndicationRepository get medicineIndicationRepository =>
      IndicationRepository(
          firestore, FirebaseCollectionsIndication.medicineIndication);

  @Named(FirebaseCollectionsIndication.treatmentIndication)
  @lazySingleton
  IIndicationRepository get treatmentIndicationRepository =>
      IndicationRepository(
          firestore, FirebaseCollectionsIndication.treatmentIndication);

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
  //LabelDoubleAmount
  @Named(FirebaseCollectionNameAbbreviations.doseAmount)
  ILabelDoubleAmountRepository get doseAmountRepository =>
      LabelDoubleAmountRepository(
          firestore, FirebaseCollectionNameAbbreviations.doseAmount);

  @Named(FirebaseCollectionsTimeInterval.doseFrequencyInterval)
  ITimeIntervalRepository get doseFrequencyRoutesRepostitory =>
      TimeIntervalRepository(
          firestore, FirebaseCollectionsTimeInterval.doseFrequencyInterval);

  @Named(FirebaseCollectionsTimeInterval.medicineDurationInterval)
  ITimeIntervalRepository get medicineDurationRoutesRepostitory =>
      TimeIntervalRepository(
          firestore, FirebaseCollectionsTimeInterval.medicineDurationInterval);
}
