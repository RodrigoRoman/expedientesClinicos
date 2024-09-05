// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_actor/administration_route_actor_bloc.dart'
    as _i60;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_actor/measure_unit_actor_bloc.dart'
    as _i22;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_actor/pharmaceutical_form_actor_bloc.dart'
    as _i80;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/abbreviation_name_form_abstract_bloc.dart'
    as _i28;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/administration_route_form_bloc.dart'
    as _i61;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/measure_unit_form_bloc.dart'
    as _i53;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/pharmaceutical_form_form_bloc.dart'
    as _i81;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart'
    as _i48;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/administration_route_watcher_bloc_.dart'
    as _i62;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/measure_unit_watcher_bloc.dart'
    as _i33;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/pharmaceutical_form_watcher_bloc.dart'
    as _i82;
import 'package:expedientes_clinicos/application/categories/category_actor/category_actor_bloc.dart'
    as _i38;
import 'package:expedientes_clinicos/application/categories/category_actor/dynamic_category_actor_bloc.dart'
    as _i24;
import 'package:expedientes_clinicos/application/categories/category_actor/indication_category_actor_bloc.dart'
    as _i86;
import 'package:expedientes_clinicos/application/categories/category_actor/medicine_category_actor_bloc.dart'
    as _i14;
import 'package:expedientes_clinicos/application/categories/category_actor/patient_visit_category_actor_bloc.dart'
    as _i70;
import 'package:expedientes_clinicos/application/categories/category_form/category_form_bloc.dart'
    as _i39;
import 'package:expedientes_clinicos/application/categories/category_form/dynamic_category_form_bloc.dart'
    as _i25;
import 'package:expedientes_clinicos/application/categories/category_form/indication_category_form_bloc.dart'
    as _i87;
import 'package:expedientes_clinicos/application/categories/category_form/medicine_category_form_bloc.dart'
    as _i15;
import 'package:expedientes_clinicos/application/categories/category_form/patient_visit_category_form_bloc.dart'
    as _i46;
import 'package:expedientes_clinicos/application/categories/category_watcher/category_watcher_bloc.dart'
    as _i40;
import 'package:expedientes_clinicos/application/categories/category_watcher/dynamic_category_bloc.dart'
    as _i26;
import 'package:expedientes_clinicos/application/categories/category_watcher/indication_category_bloc.dart'
    as _i88;
import 'package:expedientes_clinicos/application/categories/category_watcher/medicine_category_bloc.dart'
    as _i16;
import 'package:expedientes_clinicos/application/categories/category_watcher/patient_visit_category_bloc.dart'
    as _i71;
import 'package:expedientes_clinicos/application/dynamic_form/dynamic_form_actor/dynamic_form_actor_bloc.dart'
    as _i47;
import 'package:expedientes_clinicos/application/dynamic_form/dynamic_form_form/dynamic_form_form_bloc.dart'
    as _i89;
import 'package:expedientes_clinicos/application/dynamic_form/dynamic_form_watcher/dynamic_form_watcher_bloc.dart'
    as _i90;
import 'package:expedientes_clinicos/application/indication/indication_actor/indication_actor_bloc.dart'
    as _i63;
import 'package:expedientes_clinicos/application/indication/indication_actor/medicine_indication_actor_bloc.dart'
    as _i41;
import 'package:expedientes_clinicos/application/indication/indication_form/indication_form_bloc.dart'
    as _i44;
import 'package:expedientes_clinicos/application/indication/indication_form/medicine_indication_form_bloc.dart'
    as _i72;
import 'package:expedientes_clinicos/application/indication/indication_watcher/indication_watcher_bloc.dart'
    as _i45;
import 'package:expedientes_clinicos/application/indication/indication_watcher/medicine_indication_watcher_bloc.dart'
    as _i73;
import 'package:expedientes_clinicos/application/label_double_amount/label_double_amount_actor/dose_amount_actor_bloc.dart'
    as _i65;
import 'package:expedientes_clinicos/application/label_double_amount/label_double_amount_form/dose_amount_form_bloc.dart'
    as _i64;
import 'package:expedientes_clinicos/application/label_double_amount/label_double_amount_form/label_double_amount_form_bloc.dart'
    as _i75;
import 'package:expedientes_clinicos/application/label_double_amount/label_double_amount_watcher/dose_amount_watcher_bloc.dart'
    as _i66;
import 'package:expedientes_clinicos/application/label_double_amount/label_double_amount_watcher/label_double_amount_watcher_bloc.dart'
    as _i76;
import 'package:expedientes_clinicos/application/medicine/branded_medicine/branded_medicine_actor/branded_medicine_actor_bloc.dart'
    as _i79;
import 'package:expedientes_clinicos/application/medicine/branded_medicine/branded_medicine_form/branded_medicine_form_bloc.dart'
    as _i78;
import 'package:expedientes_clinicos/application/medicine/branded_medicine/branded_medicine_watcher/branded_medicine_watcher_bloc.dart'
    as _i77;
import 'package:expedientes_clinicos/application/medicine/dose/dose_components/day_hours_dose/day_hours_dose_form/day_hours_dose_form_bloc.dart'
    as _i56;
import 'package:expedientes_clinicos/application/medicine/dose/dose_components/day_hours_dose/day_hours_dose_watcher/day_hours_dose_watcher_bloc.dart'
    as _i57;
import 'package:expedientes_clinicos/application/medicine/dose/dose_components/week_days_dose/week_days_dose_form/week_days_dose_form_bloc.dart'
    as _i54;
import 'package:expedientes_clinicos/application/medicine/dose/dose_components/week_days_dose/week_days_dose_watcher/week_days_dose_watcher_bloc.dart'
    as _i55;
import 'package:expedientes_clinicos/application/medicine/dose/dose_core/dose_actor/dose_actor_bloc.dart'
    as _i93;
import 'package:expedientes_clinicos/application/medicine/dose/dose_core/dose_form/dose_form_bloc.dart'
    as _i92;
import 'package:expedientes_clinicos/application/medicine/dose/dose_core/dose_watcher/dose_watcher_bloc.dart'
    as _i91;
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_actor/generic_medicine_actor_bloc.dart'
    as _i94;
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_bloc.dart'
    as _i96;
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_watcher/generic_medicine_watcher_bloc.dart'
    as _i95;
import 'package:expedientes_clinicos/application/patient_visit/patient_visit_actor/patient_visit_actor_bloc.dart'
    as _i97;
import 'package:expedientes_clinicos/application/patient_visit/patient_visit_form/patient_visit_form_bloc.dart'
    as _i98;
import 'package:expedientes_clinicos/application/patient_visit/patient_visit_watcher/patient_visit_watcher_bloc.dart'
    as _i74;
import 'package:expedientes_clinicos/application/prescription/prescription_actor/prescription_actor_bloc.dart'
    as _i101;
import 'package:expedientes_clinicos/application/prescription/prescription_form/prescription_form_bloc.dart'
    as _i100;
import 'package:expedientes_clinicos/application/prescription/prescription_watcher/prescription_watcher_bloc.dart'
    as _i99;
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart'
    as _i3;
import 'package:expedientes_clinicos/application/time_interval/time_interval_actor/duration_interval_actor_bloc.dart'
    as _i11;
import 'package:expedientes_clinicos/application/time_interval/time_interval_actor/frequency_interval_actor_bloc.dart'
    as _i68;
import 'package:expedientes_clinicos/application/time_interval/time_interval_actor/time_interval_actor_bloc.dart'
    as _i84;
import 'package:expedientes_clinicos/application/time_interval/time_interval_form/duration_interval_form_bloc.dart'
    as _i12;
import 'package:expedientes_clinicos/application/time_interval/time_interval_form/frequency_interval_form_bloc.dart'
    as _i69;
import 'package:expedientes_clinicos/application/time_interval/time_interval_form/time_interval_form_bloc.dart'
    as _i85;
import 'package:expedientes_clinicos/application/time_interval/time_interval_watcher/duration_interval_watcher_bloc.dart'
    as _i10;
import 'package:expedientes_clinicos/application/time_interval/time_interval_watcher/frequency_duration_watcher_bloc.dart'
    as _i67;
import 'package:expedientes_clinicos/application/time_interval/time_interval_watcher/time_interval_watcher_bloc.dart'
    as _i83;
import 'package:expedientes_clinicos/domain/core/categories/i_category_repository.dart'
    as _i9;
import 'package:expedientes_clinicos/domain/core/indication/i_indication_repository.dart'
    as _i13;
import 'package:expedientes_clinicos/domain/core/label_double_amount/i_label_double_amount_repository.dart'
    as _i17;
import 'package:expedientes_clinicos/domain/core/name_abbreviation/i_name_abbreviation_repository.dart'
    as _i20;
import 'package:expedientes_clinicos/domain/core/time_interval/i_time_interval_repository.dart'
    as _i8;
import 'package:expedientes_clinicos/domain/dynamic_forms/i_dynamic_repository.dart'
    as _i31;
import 'package:expedientes_clinicos/domain/medicine/branded_medicine/i_branded_medicine_repository.dart'
    as _i36;
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/i_generic_medicine_repository.dart'
    as _i29;
import 'package:expedientes_clinicos/domain/patient_visit/i_patient_visit_repository.dart'
    as _i49;
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/i_day_hour_doses_repository.dart'
    as _i51;
import 'package:expedientes_clinicos/domain/prescription/dose/i_dose_repository.dart'
    as _i34;
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/i_week_doses_repository.dart'
    as _i42;
import 'package:expedientes_clinicos/domain/prescription/i_prescription_repository.dart'
    as _i58;
import 'package:expedientes_clinicos/infraestructure/category/category_repository.dart'
    as _i19;
import 'package:expedientes_clinicos/infraestructure/dynamic_forms/dynamic_form_structure/dynamic_form_repository.dart'
    as _i32;
import 'package:expedientes_clinicos/infraestructure/firebase_injectable_module.dart'
    as _i102;
import 'package:expedientes_clinicos/infraestructure/indication/indication_repository.dart'
    as _i21;
import 'package:expedientes_clinicos/infraestructure/label_double_amount/label_double_amount_repository.dart'
    as _i18;
import 'package:expedientes_clinicos/infraestructure/medicine/branded_medicine/branded_medicine_repository.dart'
    as _i37;
import 'package:expedientes_clinicos/infraestructure/medicine/generic_medicine/generic_medicine_repository.dart'
    as _i30;
import 'package:expedientes_clinicos/infraestructure/name_abbreviation/name_abbreviation_repository.dart'
    as _i23;
import 'package:expedientes_clinicos/infraestructure/patient_visit/patient_visit_repository.dart'
    as _i50;
import 'package:expedientes_clinicos/infraestructure/prescription/dose/day_hours_doses/day_hours_doses_repository.dart'
    as _i52;
import 'package:expedientes_clinicos/infraestructure/prescription/dose/dose_repository.dart'
    as _i35;
import 'package:expedientes_clinicos/infraestructure/prescription/dose/week_days_dose/week_days_dose_repository.dart'
    as _i43;
import 'package:expedientes_clinicos/infraestructure/prescription/prescription_repository.dart'
    as _i59;
import 'package:expedientes_clinicos/infraestructure/time_interval/time_interval_repository.dart'
    as _i27;
import 'package:expedientes_clinicos/injectable_modules.dart' as _i103;
import 'package:expedientes_clinicos/presentation/routes/router.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i4;
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
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    final injectableModule = _$InjectableModule();
    gh.factory<_i3.StateRendererBloc>(() => _i3.StateRendererBloc());
    gh.lazySingleton<_i4.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i5.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i6.FirebaseFirestore>(
        () => firebaseInjectableModule.firestore);
    gh.lazySingleton<_i7.AppRouter>(() => injectableModule.router);
    gh.factory<_i8.ITimeIntervalRepository>(
      () => firebaseInjectableModule.medicineDurationRoutesRepostitory,
      instanceName: 'medicineDurationInterval',
    );
    gh.lazySingleton<_i9.ICategoryRepository>(
      () => firebaseInjectableModule.categoryMedicineRepository,
      instanceName: 'categoryMedicine',
    );
    gh.factory<_i10.DurationIntervalWatcherBloc>(() =>
        _i10.DurationIntervalWatcherBloc(gh<_i8.ITimeIntervalRepository>(
            instanceName: 'medicineDurationInterval')));
    gh.factory<_i11.DurationIntervalActorBloc>(() =>
        _i11.DurationIntervalActorBloc(gh<_i8.ITimeIntervalRepository>(
            instanceName: 'medicineDurationInterval')));
    gh.factory<_i12.DurationIntervalFormBloc>(() =>
        _i12.DurationIntervalFormBloc(gh<_i8.ITimeIntervalRepository>(
            instanceName: 'medicineDurationInterval')));
    gh.lazySingleton<_i13.IIndicationRepository>(
      () => firebaseInjectableModule.treatmentIndicationRepository,
      instanceName: 'treatmentIndication',
    );
    gh.factory<_i14.MedicineCategoryActorBloc>(() =>
        _i14.MedicineCategoryActorBloc(
            gh<_i9.ICategoryRepository>(instanceName: 'categoryMedicine')));
    gh.factory<_i15.MedicineCategoryFormBloc>(() =>
        _i15.MedicineCategoryFormBloc(
            gh<_i9.ICategoryRepository>(instanceName: 'categoryMedicine')));
    gh.factory<_i16.MedicineCategoryWatcherBloc>(() =>
        _i16.MedicineCategoryWatcherBloc(
            gh<_i9.ICategoryRepository>(instanceName: 'categoryMedicine')));
    gh.lazySingleton<_i17.ILabelDoubleAmountRepository>(
        () => _i18.LabelDoubleAmountRepository(
              gh<_i6.FirebaseFirestore>(),
              gh<String>(),
            ));
    gh.lazySingleton<_i9.ICategoryRepository>(
      () => firebaseInjectableModule.categoryDynamicRepository,
      instanceName: 'categoryDynamic',
    );
    gh.lazySingleton<_i9.ICategoryRepository>(() => _i19.CategoryRepository(
          gh<_i6.FirebaseFirestore>(),
          gh<String>(),
        ));
    gh.factory<_i8.ITimeIntervalRepository>(
      () => firebaseInjectableModule.doseFrequencyRoutesRepostitory,
      instanceName: 'doseFrequencyInterval',
    );
    gh.lazySingleton<_i9.ICategoryRepository>(
      () => firebaseInjectableModule.categoryPatientVisitRepository,
      instanceName: 'categoryPatientVisit',
    );
    gh.factory<_i20.INameAbbreviationRepository>(
      () => firebaseInjectableModule.measureUnitRepository,
      instanceName: 'measureUnits',
    );
    gh.lazySingleton<_i13.IIndicationRepository>(
        () => _i21.IndicationRepository(
              gh<_i6.FirebaseFirestore>(),
              gh<String>(),
            ));
    gh.factory<_i22.MeasureUnitActorBloc>(() => _i22.MeasureUnitActorBloc(
        gh<_i20.INameAbbreviationRepository>(instanceName: 'measureUnits')));
    gh.factory<_i20.INameAbbreviationRepository>(
      () => firebaseInjectableModule.administrationRoutesRepostitory,
      instanceName: 'administrationRoutes',
    );
    gh.lazySingleton<_i20.INameAbbreviationRepository>(
        () => _i23.NameAbbreviationRepository(
              gh<_i6.FirebaseFirestore>(),
              gh<String>(),
            ));
    gh.factory<_i20.INameAbbreviationRepository>(
      () => firebaseInjectableModule.pharmaceuticalFormRepostitory,
      instanceName: 'pharmaceuticalForms',
    );
    gh.lazySingleton<_i13.IIndicationRepository>(
      () => firebaseInjectableModule.medicineIndicationRepository,
      instanceName: 'medicineIndication',
    );
    gh.factory<_i17.ILabelDoubleAmountRepository>(
      () => firebaseInjectableModule.doseAmountRepository,
      instanceName: 'doseAmount',
    );
    gh.factory<_i24.DynamicCategoryActorBloc>(() =>
        _i24.DynamicCategoryActorBloc(
            gh<_i9.ICategoryRepository>(instanceName: 'categoryDynamic')));
    gh.factory<_i25.DynamicCategoryFormBloc>(() => _i25.DynamicCategoryFormBloc(
        gh<_i9.ICategoryRepository>(instanceName: 'categoryDynamic')));
    gh.factory<_i26.DynamicCategoryWatcherBloc>(() =>
        _i26.DynamicCategoryWatcherBloc(
            gh<_i9.ICategoryRepository>(instanceName: 'categoryDynamic')));
    gh.lazySingleton<_i9.ICategoryRepository>(
      () => firebaseInjectableModule.categoryIndicationRepository,
      instanceName: 'categoryIndication',
    );
    gh.lazySingleton<_i8.ITimeIntervalRepository>(
        () => _i27.TimeIntervalRepository(
              gh<_i6.FirebaseFirestore>(),
              gh<String>(),
            ));
    gh.factory<_i28.AbbreviationNameFormBloc>(() =>
        _i28.AbbreviationNameFormBloc(gh<_i20.INameAbbreviationRepository>()));
    gh.lazySingleton<_i29.IGenericMedicineRepository>(
        () => _i30.GenericMedicineRepository(gh<_i6.FirebaseFirestore>()));
    gh.lazySingleton<_i31.IDynamicFormRepository>(
        () => _i32.DynamicFormRepository(gh<_i6.FirebaseFirestore>()));
    gh.factory<_i33.MeasureUnitWatcherBloc>(() => _i33.MeasureUnitWatcherBloc(
        gh<_i20.INameAbbreviationRepository>(instanceName: 'measureUnits')));
    gh.lazySingleton<_i34.IDoseRepository>(
        () => _i35.DoseRepository(gh<_i6.FirebaseFirestore>()));
    gh.lazySingleton<_i36.IBrandedMedicineRepository>(
        () => _i37.BrandedMedicineRepository(gh<_i6.FirebaseFirestore>()));
    gh.factory<_i38.CategoryActorBloc>(
        () => _i38.CategoryActorBloc(gh<_i9.ICategoryRepository>()));
    gh.factory<_i39.CategoryFormBloc>(
        () => _i39.CategoryFormBloc(gh<_i9.ICategoryRepository>()));
    gh.factory<_i40.CategoryWatcherBloc>(
        () => _i40.CategoryWatcherBloc(gh<_i9.ICategoryRepository>()));
    gh.factory<_i41.MedicineIndicationActorBloc>(() =>
        _i41.MedicineIndicationActorBloc(gh<_i13.IIndicationRepository>()));
    gh.lazySingleton<_i42.IWeekDaysDoseRepository>(
        () => _i43.WeekDaysDoseRepository(gh<_i6.FirebaseFirestore>()));
    gh.factory<_i44.IndicationFormBloc>(
        () => _i44.IndicationFormBloc(gh<_i13.IIndicationRepository>()));
    gh.factory<_i45.IndicationWatcherBloc>(
        () => _i45.IndicationWatcherBloc(gh<_i13.IIndicationRepository>()));
    gh.factory<_i46.PatientVisitTypeCategoryFormBloc>(() =>
        _i46.PatientVisitTypeCategoryFormBloc(
            gh<_i9.ICategoryRepository>(instanceName: 'categoryPatientVisit')));
    gh.factory<_i47.DynamicFormActor>(
        () => _i47.DynamicFormActor(gh<_i31.IDynamicFormRepository>()));
    gh.factory<_i48.AbbreviationNameWatcherBloc>(() =>
        _i48.AbbreviationNameWatcherBloc(
            gh<_i20.INameAbbreviationRepository>()));
    gh.lazySingleton<_i49.IPatientVisitRepository>(
        () => _i50.PatientVisitRepository(gh<_i6.FirebaseFirestore>()));
    gh.lazySingleton<_i51.IDayHoursDoseRepository>(
        () => _i52.DayHoursDosesRepository(gh<_i6.FirebaseFirestore>()));
    gh.factory<_i53.MeasureUnitFormBloc>(() => _i53.MeasureUnitFormBloc(
        gh<_i20.INameAbbreviationRepository>(instanceName: 'measureUnits')));
    gh.factory<_i54.WeekDaysDoseFormBloc>(
        () => _i54.WeekDaysDoseFormBloc(gh<_i42.IWeekDaysDoseRepository>()));
    gh.factory<_i55.WeekDaysDoseWatcherBloc>(
        () => _i55.WeekDaysDoseWatcherBloc(gh<_i42.IWeekDaysDoseRepository>()));
    gh.factory<_i56.DayHoursDoseFormBloc>(
        () => _i56.DayHoursDoseFormBloc(gh<_i51.IDayHoursDoseRepository>()));
    gh.factory<_i57.DayHoursDoseWatcherBloc>(
        () => _i57.DayHoursDoseWatcherBloc(gh<_i51.IDayHoursDoseRepository>()));
    gh.lazySingleton<_i58.IPrescriptionRepository>(
        () => _i59.PrescriptionRepository(gh<_i6.FirebaseFirestore>()));
    gh.factory<_i60.AdministrationRouteActorBloc>(() =>
        _i60.AdministrationRouteActorBloc(gh<_i20.INameAbbreviationRepository>(
            instanceName: 'administrationRoutes')));
    gh.factory<_i61.AdministrationRouteFormBloc>(() =>
        _i61.AdministrationRouteFormBloc(gh<_i20.INameAbbreviationRepository>(
            instanceName: 'administrationRoutes')));
    gh.factory<_i62.AdministrationRouteWatcherBloc>(() =>
        _i62.AdministrationRouteWatcherBloc(
            gh<_i20.INameAbbreviationRepository>(
                instanceName: 'administrationRoutes')));
    gh.factory<_i63.IndicationActorBloc>(() => _i63.IndicationActorBloc(
          gh<_i13.IIndicationRepository>(),
          gh<String>(),
        ));
    gh.factory<_i64.DoseAmountFormBloc>(() => _i64.DoseAmountFormBloc(
        gh<_i17.ILabelDoubleAmountRepository>(instanceName: 'doseAmount')));
    gh.factory<_i65.DoseAmountActorBloc>(() => _i65.DoseAmountActorBloc(
        gh<_i17.ILabelDoubleAmountRepository>(instanceName: 'doseAmount')));
    gh.factory<_i66.DoseAmountWatcherBloc>(() => _i66.DoseAmountWatcherBloc(
        gh<_i17.ILabelDoubleAmountRepository>(instanceName: 'doseAmount')));
    gh.factory<_i67.FrequencyIntervalWatcherBloc>(() =>
        _i67.FrequencyIntervalWatcherBloc(gh<_i8.ITimeIntervalRepository>(
            instanceName: 'doseFrequencyInterval')));
    gh.factory<_i68.FrequencyIntervalActorBloc>(() =>
        _i68.FrequencyIntervalActorBloc(gh<_i8.ITimeIntervalRepository>(
            instanceName: 'doseFrequencyInterval')));
    gh.factory<_i69.FrequencyIntervalFormBloc>(() =>
        _i69.FrequencyIntervalFormBloc(gh<_i8.ITimeIntervalRepository>(
            instanceName: 'doseFrequencyInterval')));
    gh.factory<_i70.PatientVisitCategoryActorBloc>(() =>
        _i70.PatientVisitCategoryActorBloc(
            gh<_i9.ICategoryRepository>(instanceName: 'categoryPatientVisit')));
    gh.factory<_i71.PatientVisitTypeCategoryWatcherBloc>(() =>
        _i71.PatientVisitTypeCategoryWatcherBloc(
            gh<_i9.ICategoryRepository>(instanceName: 'categoryPatientVisit')));
    gh.factory<_i72.MedicineIndicationFormBloc>(() =>
        _i72.MedicineIndicationFormBloc(gh<_i13.IIndicationRepository>(
            instanceName: 'medicineIndication')));
    gh.factory<_i73.MedicineIndicationWatcherBloc>(() =>
        _i73.MedicineIndicationWatcherBloc(gh<_i13.IIndicationRepository>(
            instanceName: 'medicineIndication')));
    gh.factory<_i74.PatientVisitWatcherBloc>(
        () => _i74.PatientVisitWatcherBloc(gh<_i49.IPatientVisitRepository>()));
    gh.factory<_i75.LabelDoubleAmountFormBloc>(() =>
        _i75.LabelDoubleAmountFormBloc(
            gh<_i17.ILabelDoubleAmountRepository>()));
    gh.factory<_i76.LabelDoubleAmountWatcherBloc>(() =>
        _i76.LabelDoubleAmountWatcherBloc(
            gh<_i17.ILabelDoubleAmountRepository>()));
    gh.factory<_i77.BrandedMedicineWatcherBloc>(() =>
        _i77.BrandedMedicineWatcherBloc(gh<_i36.IBrandedMedicineRepository>()));
    gh.factory<_i78.BrandedMedicineFormBloc>(() =>
        _i78.BrandedMedicineFormBloc(gh<_i36.IBrandedMedicineRepository>()));
    gh.factory<_i79.BrandedMedicineActorBloc>(() =>
        _i79.BrandedMedicineActorBloc(gh<_i36.IBrandedMedicineRepository>()));
    gh.factory<_i80.PharmaceuticalFormActorBloc>(() =>
        _i80.PharmaceuticalFormActorBloc(gh<_i20.INameAbbreviationRepository>(
            instanceName: 'pharmaceuticalForms')));
    gh.factory<_i81.PharmaceuticalFormFormBloc>(() =>
        _i81.PharmaceuticalFormFormBloc(gh<_i20.INameAbbreviationRepository>(
            instanceName: 'pharmaceuticalForms')));
    gh.factory<_i82.PharmaceuticalFormWatcherBloc>(() =>
        _i82.PharmaceuticalFormWatcherBloc(gh<_i20.INameAbbreviationRepository>(
            instanceName: 'pharmaceuticalForms')));
    gh.factory<_i83.TimeIntervalWatcherBloc>(
        () => _i83.TimeIntervalWatcherBloc(gh<_i8.ITimeIntervalRepository>()));
    gh.factory<_i84.TimeIntervalActorBloc>(
        () => _i84.TimeIntervalActorBloc(gh<_i8.ITimeIntervalRepository>()));
    gh.factory<_i85.TimeIntervalFormBloc>(
        () => _i85.TimeIntervalFormBloc(gh<_i8.ITimeIntervalRepository>()));
    gh.factory<_i86.IndicationCategoryActorBloc>(() =>
        _i86.IndicationCategoryActorBloc(
            gh<_i9.ICategoryRepository>(instanceName: 'categoryIndication')));
    gh.factory<_i87.IndicationCategoryFormBloc>(() =>
        _i87.IndicationCategoryFormBloc(
            gh<_i9.ICategoryRepository>(instanceName: 'categoryIndication')));
    gh.factory<_i88.IndicationCategoryWatcherBloc>(() =>
        _i88.IndicationCategoryWatcherBloc(
            gh<_i9.ICategoryRepository>(instanceName: 'categoryIndication')));
    gh.factory<_i89.DynamicFormFormBloc>(
        () => _i89.DynamicFormFormBloc(gh<_i31.IDynamicFormRepository>()));
    gh.factory<_i90.DynamicFormWatcherBloc>(
        () => _i90.DynamicFormWatcherBloc(gh<_i31.IDynamicFormRepository>()));
    gh.factory<_i91.DoseWatcherBloc>(
        () => _i91.DoseWatcherBloc(gh<_i34.IDoseRepository>()));
    gh.factory<_i92.DoseFormBloc>(
        () => _i92.DoseFormBloc(gh<_i34.IDoseRepository>()));
    gh.factory<_i93.DoseActorBloc>(
        () => _i93.DoseActorBloc(gh<_i34.IDoseRepository>()));
    gh.factory<_i94.GenericMedicineActorBloc>(() =>
        _i94.GenericMedicineActorBloc(gh<_i29.IGenericMedicineRepository>()));
    gh.factory<_i95.GenericMedicineWatcherBloc>(() =>
        _i95.GenericMedicineWatcherBloc(gh<_i29.IGenericMedicineRepository>()));
    gh.factory<_i96.GenericMedicineFormBloc>(() =>
        _i96.GenericMedicineFormBloc(gh<_i29.IGenericMedicineRepository>()));
    gh.factory<_i97.PatientVisitActorBloc>(
        () => _i97.PatientVisitActorBloc(gh<_i49.IPatientVisitRepository>()));
    gh.factory<_i98.PatientVisitFormBloc>(
        () => _i98.PatientVisitFormBloc(gh<_i49.IPatientVisitRepository>()));
    gh.factory<_i99.PrescriptionWatcherBloc>(
        () => _i99.PrescriptionWatcherBloc(gh<_i58.IPrescriptionRepository>()));
    gh.factory<_i100.PrescriptionFormBloc>(
        () => _i100.PrescriptionFormBloc(gh<_i58.IPrescriptionRepository>()));
    gh.factory<_i101.PrescriptionActorBloc>(
        () => _i101.PrescriptionActorBloc(gh<_i58.IPrescriptionRepository>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i102.FirebaseInjectableModule {}

class _$InjectableModule extends _i103.InjectableModule {}
