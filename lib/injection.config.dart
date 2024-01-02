// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_actor/administration_route_actor_bloc.dart'
    as _i65;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_actor/measure_unit_actor_bloc.dart'
    as _i39;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_actor/pharmaceutical_form_actor_bloc.dart'
    as _i51;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/abbreviation_name_form_abstract_bloc.dart'
    as _i63;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/administration_route_form_bloc.dart'
    as _i66;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/measure_unit_form_bloc.dart'
    as _i40;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/pharmaceutical_form_form_bloc.dart'
    as _i52;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart'
    as _i64;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/administration_route_watcher_bloc_.dart'
    as _i67;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/measure_unit_watcher_bloc.dart'
    as _i41;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/pharmaceutical_form_watcher_bloc.dart'
    as _i53;
import 'package:expedientes_clinicos/application/categories/category_actor/category_actor_bloc.dart'
    as _i71;
import 'package:expedientes_clinicos/application/categories/category_actor/indication_category_actor_bloc.dart'
    as _i32;
import 'package:expedientes_clinicos/application/categories/category_actor/medicine_category_actor_bloc.dart'
    as _i42;
import 'package:expedientes_clinicos/application/categories/category_form/category_form_bloc.dart'
    as _i72;
import 'package:expedientes_clinicos/application/categories/category_form/indication_category_form_bloc.dart'
    as _i33;
import 'package:expedientes_clinicos/application/categories/category_form/medicine_category_form_bloc.dart'
    as _i43;
import 'package:expedientes_clinicos/application/categories/category_watcher/category_watcher_bloc.dart'
    as _i73;
import 'package:expedientes_clinicos/application/categories/category_watcher/indication_category_bloc.dart'
    as _i34;
import 'package:expedientes_clinicos/application/categories/category_watcher/medicine_category_bloc.dart'
    as _i44;
import 'package:expedientes_clinicos/application/indication/indication_actor/indication_actor_bloc.dart'
    as _i31;
import 'package:expedientes_clinicos/application/indication/indication_actor/medicine_indication_actor_bloc.dart'
    as _i45;
import 'package:expedientes_clinicos/application/indication/indication_form/indication_form_bloc.dart'
    as _i35;
import 'package:expedientes_clinicos/application/indication/indication_form/medicine_indication_form_bloc.dart'
    as _i46;
import 'package:expedientes_clinicos/application/indication/indication_watcher/indication_watcher_bloc.dart'
    as _i36;
import 'package:expedientes_clinicos/application/indication/indication_watcher/medicine_indication_watcher_bloc.dart'
    as _i47;
import 'package:expedientes_clinicos/application/label_double_amount/label_double_amount_actor/dose_amount_actor_bloc.dart'
    as _i77;
import 'package:expedientes_clinicos/application/label_double_amount/label_double_amount_form/dose_amount_form_bloc.dart'
    as _i78;
import 'package:expedientes_clinicos/application/label_double_amount/label_double_amount_form/label_double_amount_form_bloc.dart'
    as _i37;
import 'package:expedientes_clinicos/application/label_double_amount/label_double_amount_watcher/dose_amount_watcher_bloc.dart'
    as _i79;
import 'package:expedientes_clinicos/application/label_double_amount/label_double_amount_watcher/label_double_amount_watcher_bloc.dart'
    as _i38;
import 'package:expedientes_clinicos/application/medicine/branded_medicine/branded_medicine_actor/branded_medicine_actor_bloc.dart'
    as _i68;
import 'package:expedientes_clinicos/application/medicine/branded_medicine/branded_medicine_form/branded_medicine_form_bloc.dart'
    as _i69;
import 'package:expedientes_clinicos/application/medicine/branded_medicine/branded_medicine_watcher/branded_medicine_watcher_bloc.dart'
    as _i70;
import 'package:expedientes_clinicos/application/medicine/dose/dose_components/day_hours_dose/day_hours_dose_form/day_hours_dose_form_bloc.dart'
    as _i74;
import 'package:expedientes_clinicos/application/medicine/dose/dose_components/day_hours_dose/day_hours_dose_watcher/day_hours_dose_watcher_bloc.dart'
    as _i75;
import 'package:expedientes_clinicos/application/medicine/dose/dose_components/week_days_dose/week_days_dose_form/week_days_dose_form_bloc.dart'
    as _i61;
import 'package:expedientes_clinicos/application/medicine/dose/dose_components/week_days_dose/week_days_dose_watcher/week_days_dose_watcher_bloc.dart'
    as _i62;
import 'package:expedientes_clinicos/application/medicine/dose/dose_core/dose_actor/dose_actor_bloc.dart'
    as _i76;
import 'package:expedientes_clinicos/application/medicine/dose/dose_core/dose_form/dose_form_bloc.dart'
    as _i80;
import 'package:expedientes_clinicos/application/medicine/dose/dose_core/dose_watcher/dose_watcher_bloc.dart'
    as _i81;
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_actor/generic_medicine_actor_bloc.dart'
    as _i88;
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_bloc.dart'
    as _i89;
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_watcher/generic_medicine_watcher_bloc.dart'
    as _i90;
import 'package:expedientes_clinicos/application/patient_visit/patient_visit_actor/patient_visit_actor_bloc.dart'
    as _i48;
import 'package:expedientes_clinicos/application/patient_visit/patient_visit_form/patient_visit_form_bloc.dart'
    as _i49;
import 'package:expedientes_clinicos/application/patient_visit/patient_visit_watcher/patient_visit_watcher_bloc.dart'
    as _i50;
import 'package:expedientes_clinicos/application/prescription/prescription_actor/prescription_actor_bloc.dart'
    as _i54;
import 'package:expedientes_clinicos/application/prescription/prescription_form/prescription_form_bloc.dart'
    as _i55;
import 'package:expedientes_clinicos/application/prescription/prescription_watcher/prescription_watcher_bloc.dart'
    as _i56;
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart'
    as _i57;
import 'package:expedientes_clinicos/application/time_interval/time_interval_actor/duration_interval_actor_bloc.dart'
    as _i82;
import 'package:expedientes_clinicos/application/time_interval/time_interval_actor/frequency_interval_actor_bloc.dart'
    as _i85;
import 'package:expedientes_clinicos/application/time_interval/time_interval_actor/time_interval_actor_bloc.dart'
    as _i58;
import 'package:expedientes_clinicos/application/time_interval/time_interval_form/duration_interval_form_bloc.dart'
    as _i83;
import 'package:expedientes_clinicos/application/time_interval/time_interval_form/frequency_interval_form_bloc.dart'
    as _i86;
import 'package:expedientes_clinicos/application/time_interval/time_interval_form/time_interval_form_bloc.dart'
    as _i59;
import 'package:expedientes_clinicos/application/time_interval/time_interval_watcher/duration_interval_watcher_bloc.dart'
    as _i84;
import 'package:expedientes_clinicos/application/time_interval/time_interval_watcher/frequency_duration_watcher_bloc.dart'
    as _i87;
import 'package:expedientes_clinicos/application/time_interval/time_interval_watcher/time_interval_watcher_bloc.dart'
    as _i60;
import 'package:expedientes_clinicos/domain/core/categories/i_category_repository.dart'
    as _i9;
import 'package:expedientes_clinicos/domain/core/indication/i_indication_repository.dart'
    as _i17;
import 'package:expedientes_clinicos/domain/core/label_double_amount/i_label_double_amount_repository.dart'
    as _i19;
import 'package:expedientes_clinicos/domain/core/name_abbreviation/i_name_abbreviation_repository.dart'
    as _i21;
import 'package:expedientes_clinicos/domain/core/time_interval/i_time_interval_repository.dart'
    as _i27;
import 'package:expedientes_clinicos/domain/medicine/branded_medicine/i_branded_medicine_repository.dart'
    as _i7;
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/i_generic_medicine_repository.dart'
    as _i15;
import 'package:expedientes_clinicos/domain/patient_visit/i_patient_visit_repository.dart'
    as _i23;
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/i_day_hour_doses_repository.dart'
    as _i11;
import 'package:expedientes_clinicos/domain/prescription/dose/i_dose_repository.dart'
    as _i13;
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/i_week_doses_repository.dart'
    as _i29;
import 'package:expedientes_clinicos/domain/prescription/i_prescription_repository.dart'
    as _i25;
import 'package:expedientes_clinicos/infraestructure/category/category_repository.dart'
    as _i10;
import 'package:expedientes_clinicos/infraestructure/firebase_injectable_module.dart'
    as _i92;
import 'package:expedientes_clinicos/infraestructure/indication/indication_repository.dart'
    as _i18;
import 'package:expedientes_clinicos/infraestructure/label_double_amount/label_double_amount_repository.dart'
    as _i20;
import 'package:expedientes_clinicos/infraestructure/medicine/branded_medicine/branded_medicine_repository.dart'
    as _i8;
import 'package:expedientes_clinicos/infraestructure/medicine/generic_medicine/generic_medicine_repository.dart'
    as _i16;
import 'package:expedientes_clinicos/infraestructure/name_abbreviation/name_abbreviation_repository.dart'
    as _i22;
import 'package:expedientes_clinicos/infraestructure/patient_visit/patient_visit_repository.dart'
    as _i24;
import 'package:expedientes_clinicos/infraestructure/prescription/dose/day_hours_doses/day_hours_doses_repository.dart'
    as _i12;
import 'package:expedientes_clinicos/infraestructure/prescription/dose/dose_repository.dart'
    as _i14;
import 'package:expedientes_clinicos/infraestructure/prescription/dose/week_days_dose/week_days_dose_repository.dart'
    as _i30;
import 'package:expedientes_clinicos/infraestructure/prescription/prescription_repository.dart'
    as _i26;
import 'package:expedientes_clinicos/infraestructure/time_interval/time_interval_repository.dart'
    as _i28;
import 'package:expedientes_clinicos/injectable_modules.dart' as _i91;
import 'package:expedientes_clinicos/presentation/routes/router.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModule = _$InjectableModule();
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.lazySingleton<_i3.AppRouter>(() => injectableModule.router);
    gh.lazySingleton<_i4.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i5.FirebaseFirestore>(
        () => firebaseInjectableModule.firestore);
    gh.lazySingleton<_i6.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i7.IBrandedMedicineRepository>(
        () => _i8.BrandedMedicineRepository(gh<_i5.FirebaseFirestore>()));
    gh.lazySingleton<_i9.ICategoryRepository>(
      () => firebaseInjectableModule.categoryMedicineRepository,
      instanceName: 'categoryMedicine',
    );
    gh.lazySingleton<_i9.ICategoryRepository>(
      () => firebaseInjectableModule.categoryIndicationRepository,
      instanceName: 'categoryIndication',
    );
    gh.lazySingleton<_i9.ICategoryRepository>(() => _i10.CategoryRepository(
          gh<_i5.FirebaseFirestore>(),
          gh<String>(),
        ));
    gh.lazySingleton<_i11.IDayHoursDoseRepository>(
        () => _i12.DayHoursDosesRepository(gh<_i5.FirebaseFirestore>()));
    gh.lazySingleton<_i13.IDoseRepository>(
        () => _i14.DoseRepository(gh<_i5.FirebaseFirestore>()));
    gh.lazySingleton<_i15.IGenericMedicineRepository>(
        () => _i16.GenericMedicineRepository(gh<_i5.FirebaseFirestore>()));
    gh.lazySingleton<_i17.IIndicationRepository>(
      () => firebaseInjectableModule.medicineIndicationRepository,
      instanceName: 'medicineIndication',
    );
    gh.lazySingleton<_i17.IIndicationRepository>(
      () => firebaseInjectableModule.treatmentIndicationRepository,
      instanceName: 'treatmentIndication',
    );
    gh.lazySingleton<_i17.IIndicationRepository>(
        () => _i18.IndicationRepository(
              gh<_i5.FirebaseFirestore>(),
              gh<String>(),
            ));
    gh.lazySingleton<_i19.ILabelDoubleAmountRepository>(
        () => _i20.LabelDoubleAmountRepository(
              gh<_i5.FirebaseFirestore>(),
              gh<String>(),
            ));
    gh.factory<_i19.ILabelDoubleAmountRepository>(
      () => firebaseInjectableModule.doseAmountRepository,
      instanceName: 'doseAmount',
    );
    gh.lazySingleton<_i21.INameAbbreviationRepository>(
        () => _i22.NameAbbreviationRepository(
              gh<_i5.FirebaseFirestore>(),
              gh<String>(),
            ));
    gh.factory<_i21.INameAbbreviationRepository>(
      () => firebaseInjectableModule.measureUnitRepository,
      instanceName: 'measureUnits',
    );
    gh.factory<_i21.INameAbbreviationRepository>(
      () => firebaseInjectableModule.administrationRoutesRepostitory,
      instanceName: 'administrationRoutes',
    );
    gh.factory<_i21.INameAbbreviationRepository>(
      () => firebaseInjectableModule.pharmaceuticalFormRepostitory,
      instanceName: 'pharmaceuticalForms',
    );
    gh.lazySingleton<_i23.IPatientVisitRepository>(
        () => _i24.PatientVisitRepository(gh<_i5.FirebaseFirestore>()));
    gh.lazySingleton<_i25.IPrescriptionRepository>(
        () => _i26.PrescriptionRepository(gh<_i5.FirebaseFirestore>()));
    gh.lazySingleton<_i27.ITimeIntervalRepository>(
        () => _i28.TimeIntervalRepository(
              gh<_i5.FirebaseFirestore>(),
              gh<String>(),
            ));
    gh.factory<_i27.ITimeIntervalRepository>(
      () => firebaseInjectableModule.medicineDurationRoutesRepostitory,
      instanceName: 'medicineDurationInterval',
    );
    gh.factory<_i27.ITimeIntervalRepository>(
      () => firebaseInjectableModule.doseFrequencyRoutesRepostitory,
      instanceName: 'doseFrequencyInterval',
    );
    gh.lazySingleton<_i29.IWeekDaysDoseRepository>(
        () => _i30.WeekDaysDoseRepository(gh<_i5.FirebaseFirestore>()));
    gh.factory<_i31.IndicationActorBloc>(() => _i31.IndicationActorBloc(
          gh<_i17.IIndicationRepository>(),
          gh<String>(),
        ));
    gh.factory<_i32.IndicationCategoryActorBloc>(() =>
        _i32.IndicationCategoryActorBloc(
            gh<_i9.ICategoryRepository>(instanceName: 'categoryIndication')));
    gh.factory<_i33.IndicationCategoryFormBloc>(() =>
        _i33.IndicationCategoryFormBloc(
            gh<_i9.ICategoryRepository>(instanceName: 'categoryIndication')));
    gh.factory<_i34.IndicationCategoryWatcherBloc>(() =>
        _i34.IndicationCategoryWatcherBloc(
            gh<_i9.ICategoryRepository>(instanceName: 'categoryIndication')));
    gh.factory<_i35.IndicationFormBloc>(
        () => _i35.IndicationFormBloc(gh<_i17.IIndicationRepository>()));
    gh.factory<_i36.IndicationWatcherBloc>(
        () => _i36.IndicationWatcherBloc(gh<_i17.IIndicationRepository>()));
    gh.factory<_i37.LabelDoubleAmountFormBloc>(() =>
        _i37.LabelDoubleAmountFormBloc(
            gh<_i19.ILabelDoubleAmountRepository>()));
    gh.factory<_i38.LabelDoubleAmountWatcherBloc>(() =>
        _i38.LabelDoubleAmountWatcherBloc(
            gh<_i19.ILabelDoubleAmountRepository>()));
    gh.factory<_i39.MeasureUnitActorBloc>(() => _i39.MeasureUnitActorBloc(
        gh<_i21.INameAbbreviationRepository>(instanceName: 'measureUnits')));
    gh.factory<_i40.MeasureUnitFormBloc>(() => _i40.MeasureUnitFormBloc(
        gh<_i21.INameAbbreviationRepository>(instanceName: 'measureUnits')));
    gh.factory<_i41.MeasureUnitWatcherBloc>(() => _i41.MeasureUnitWatcherBloc(
        gh<_i21.INameAbbreviationRepository>(instanceName: 'measureUnits')));
    gh.factory<_i42.MedicineCategoryActorBloc>(() =>
        _i42.MedicineCategoryActorBloc(
            gh<_i9.ICategoryRepository>(instanceName: 'categoryMedicine')));
    gh.factory<_i43.MedicineCategoryFormBloc>(() =>
        _i43.MedicineCategoryFormBloc(
            gh<_i9.ICategoryRepository>(instanceName: 'categoryMedicine')));
    gh.factory<_i44.MedicineCategoryWatcherBloc>(() =>
        _i44.MedicineCategoryWatcherBloc(
            gh<_i9.ICategoryRepository>(instanceName: 'categoryMedicine')));
    gh.factory<_i45.MedicineIndicationActorBloc>(() =>
        _i45.MedicineIndicationActorBloc(gh<_i17.IIndicationRepository>()));
    gh.factory<_i46.MedicineIndicationFormBloc>(() =>
        _i46.MedicineIndicationFormBloc(gh<_i17.IIndicationRepository>(
            instanceName: 'medicineIndication')));
    gh.factory<_i47.MedicineIndicationWatcherBloc>(() =>
        _i47.MedicineIndicationWatcherBloc(gh<_i17.IIndicationRepository>(
            instanceName: 'medicineIndication')));
    gh.factory<_i48.PatientVisitActorBloc>(
        () => _i48.PatientVisitActorBloc(gh<_i23.IPatientVisitRepository>()));
    gh.factory<_i49.PatientVisitFormBloc>(
        () => _i49.PatientVisitFormBloc(gh<_i23.IPatientVisitRepository>()));
    gh.factory<_i50.PatientVisitWatcherBloc>(
        () => _i50.PatientVisitWatcherBloc(gh<_i23.IPatientVisitRepository>()));
    gh.factory<_i51.PharmaceuticalFormActorBloc>(() =>
        _i51.PharmaceuticalFormActorBloc(gh<_i21.INameAbbreviationRepository>(
            instanceName: 'pharmaceuticalForms')));
    gh.factory<_i52.PharmaceuticalFormFormBloc>(() =>
        _i52.PharmaceuticalFormFormBloc(gh<_i21.INameAbbreviationRepository>(
            instanceName: 'pharmaceuticalForms')));
    gh.factory<_i53.PharmaceuticalFormWatcherBloc>(() =>
        _i53.PharmaceuticalFormWatcherBloc(gh<_i21.INameAbbreviationRepository>(
            instanceName: 'pharmaceuticalForms')));
    gh.factory<_i54.PrescriptionActorBloc>(
        () => _i54.PrescriptionActorBloc(gh<_i25.IPrescriptionRepository>()));
    gh.factory<_i55.PrescriptionFormBloc>(
        () => _i55.PrescriptionFormBloc(gh<_i25.IPrescriptionRepository>()));
    gh.factory<_i56.PrescriptionWatcherBloc>(
        () => _i56.PrescriptionWatcherBloc(gh<_i25.IPrescriptionRepository>()));
    gh.factory<_i57.StateRendererBloc>(() => _i57.StateRendererBloc());
    gh.factory<_i58.TimeIntervalActorBloc>(
        () => _i58.TimeIntervalActorBloc(gh<_i27.ITimeIntervalRepository>()));
    gh.factory<_i59.TimeIntervalFormBloc>(
        () => _i59.TimeIntervalFormBloc(gh<_i27.ITimeIntervalRepository>()));
    gh.factory<_i60.TimeIntervalWatcherBloc>(
        () => _i60.TimeIntervalWatcherBloc(gh<_i27.ITimeIntervalRepository>()));
    gh.factory<_i61.WeekDaysDoseFormBloc>(
        () => _i61.WeekDaysDoseFormBloc(gh<_i29.IWeekDaysDoseRepository>()));
    gh.factory<_i62.WeekDaysDoseWatcherBloc>(
        () => _i62.WeekDaysDoseWatcherBloc(gh<_i29.IWeekDaysDoseRepository>()));
    gh.factory<_i63.AbbreviationNameFormBloc>(() =>
        _i63.AbbreviationNameFormBloc(gh<_i21.INameAbbreviationRepository>()));
    gh.factory<_i64.AbbreviationNameWatcherBloc>(() =>
        _i64.AbbreviationNameWatcherBloc(
            gh<_i21.INameAbbreviationRepository>()));
    gh.factory<_i65.AdministrationRouteActorBloc>(() =>
        _i65.AdministrationRouteActorBloc(gh<_i21.INameAbbreviationRepository>(
            instanceName: 'administrationRoutes')));
    gh.factory<_i66.AdministrationRouteFormBloc>(() =>
        _i66.AdministrationRouteFormBloc(gh<_i21.INameAbbreviationRepository>(
            instanceName: 'administrationRoutes')));
    gh.factory<_i67.AdministrationRouteWatcherBloc>(() =>
        _i67.AdministrationRouteWatcherBloc(
            gh<_i21.INameAbbreviationRepository>(
                instanceName: 'administrationRoutes')));
    gh.factory<_i68.BrandedMedicineActorBloc>(() =>
        _i68.BrandedMedicineActorBloc(gh<_i7.IBrandedMedicineRepository>()));
    gh.factory<_i69.BrandedMedicineFormBloc>(() =>
        _i69.BrandedMedicineFormBloc(gh<_i7.IBrandedMedicineRepository>()));
    gh.factory<_i70.BrandedMedicineWatcherBloc>(() =>
        _i70.BrandedMedicineWatcherBloc(gh<_i7.IBrandedMedicineRepository>()));
    gh.factory<_i71.CategoryActorBloc>(
        () => _i71.CategoryActorBloc(gh<_i9.ICategoryRepository>()));
    gh.factory<_i72.CategoryFormBloc>(
        () => _i72.CategoryFormBloc(gh<_i9.ICategoryRepository>()));
    gh.factory<_i73.CategoryWatcherBloc>(
        () => _i73.CategoryWatcherBloc(gh<_i9.ICategoryRepository>()));
    gh.factory<_i74.DayHoursDoseFormBloc>(
        () => _i74.DayHoursDoseFormBloc(gh<_i11.IDayHoursDoseRepository>()));
    gh.factory<_i75.DayHoursDoseWatcherBloc>(
        () => _i75.DayHoursDoseWatcherBloc(gh<_i11.IDayHoursDoseRepository>()));
    gh.factory<_i76.DoseActorBloc>(
        () => _i76.DoseActorBloc(gh<_i13.IDoseRepository>()));
    gh.factory<_i77.DoseAmountActorBloc>(() => _i77.DoseAmountActorBloc(
        gh<_i19.ILabelDoubleAmountRepository>(instanceName: 'doseAmount')));
    gh.factory<_i78.DoseAmountFormBloc>(() => _i78.DoseAmountFormBloc(
        gh<_i19.ILabelDoubleAmountRepository>(instanceName: 'doseAmount')));
    gh.factory<_i79.DoseAmountWatcherBloc>(() => _i79.DoseAmountWatcherBloc(
        gh<_i19.ILabelDoubleAmountRepository>(instanceName: 'doseAmount')));
    gh.factory<_i80.DoseFormBloc>(
        () => _i80.DoseFormBloc(gh<_i13.IDoseRepository>()));
    gh.factory<_i81.DoseWatcherBloc>(
        () => _i81.DoseWatcherBloc(gh<_i13.IDoseRepository>()));
    gh.factory<_i82.DurationIntervalActorBloc>(() =>
        _i82.DurationIntervalActorBloc(gh<_i27.ITimeIntervalRepository>(
            instanceName: 'medicineDurationInterval')));
    gh.factory<_i83.DurationIntervalFormBloc>(() =>
        _i83.DurationIntervalFormBloc(gh<_i27.ITimeIntervalRepository>(
            instanceName: 'medicineDurationInterval')));
    gh.factory<_i84.DurationIntervalWatcherBloc>(() =>
        _i84.DurationIntervalWatcherBloc(gh<_i27.ITimeIntervalRepository>(
            instanceName: 'medicineDurationInterval')));
    gh.factory<_i85.FrequencyIntervalActorBloc>(() =>
        _i85.FrequencyIntervalActorBloc(gh<_i27.ITimeIntervalRepository>(
            instanceName: 'doseFrequencyInterval')));
    gh.factory<_i86.FrequencyIntervalFormBloc>(() =>
        _i86.FrequencyIntervalFormBloc(gh<_i27.ITimeIntervalRepository>(
            instanceName: 'doseFrequencyInterval')));
    gh.factory<_i87.FrequencyIntervalWatcherBloc>(() =>
        _i87.FrequencyIntervalWatcherBloc(gh<_i27.ITimeIntervalRepository>(
            instanceName: 'doseFrequencyInterval')));
    gh.factory<_i88.GenericMedicineActorBloc>(() =>
        _i88.GenericMedicineActorBloc(gh<_i15.IGenericMedicineRepository>()));
    gh.factory<_i89.GenericMedicineFormBloc>(() =>
        _i89.GenericMedicineFormBloc(gh<_i15.IGenericMedicineRepository>()));
    gh.factory<_i90.GenericMedicineWatcherBloc>(() =>
        _i90.GenericMedicineWatcherBloc(gh<_i15.IGenericMedicineRepository>()));
    return this;
  }
}

class _$InjectableModule extends _i91.InjectableModule {}

class _$FirebaseInjectableModule extends _i92.FirebaseInjectableModule {}
