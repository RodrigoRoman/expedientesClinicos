// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i12;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_actor/administration_route_actor_bloc.dart'
    as _i66;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_actor/measure_unit_actor_bloc.dart'
    as _i43;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_actor/pharmaceutical_form_actor_bloc.dart'
    as _i55;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/abbreviation_name_form_abstract_bloc.dart'
    as _i3;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/administration_route_form_bloc.dart'
    as _i67;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/measure_unit_form_bloc.dart'
    as _i44;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/pharmaceutical_form_form_bloc.dart'
    as _i56;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart'
    as _i5;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/administration_route_watcher_bloc_.dart'
    as _i68;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/measure_unit_watcher_bloc.dart'
    as _i45;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/pharmaceutical_form_watcher_bloc.dart'
    as _i57;
import 'package:expedientes_clinicos/application/categories/category_actor/category_actor_bloc.dart'
    as _i7;
import 'package:expedientes_clinicos/application/categories/category_actor/indication_category_actor_bloc.dart'
    as _i38;
import 'package:expedientes_clinicos/application/categories/category_actor/medicine_category_actor_bloc.dart'
    as _i47;
import 'package:expedientes_clinicos/application/categories/category_form/category_form_bloc.dart'
    as _i9;
import 'package:expedientes_clinicos/application/categories/category_form/indication_category_form_bloc.dart'
    as _i39;
import 'package:expedientes_clinicos/application/categories/category_form/medicine_category_form_bloc.dart'
    as _i48;
import 'package:expedientes_clinicos/application/categories/category_watcher/category_watcher_bloc.dart'
    as _i10;
import 'package:expedientes_clinicos/application/categories/category_watcher/indication_category_bloc.dart'
    as _i40;
import 'package:expedientes_clinicos/application/categories/category_watcher/medicine_category_bloc.dart'
    as _i49;
import 'package:expedientes_clinicos/application/indication/indication_actor/indication_actor_bloc.dart'
    as _i36;
import 'package:expedientes_clinicos/application/indication/indication_actor/medicine_indication_actor_bloc.dart'
    as _i51;
import 'package:expedientes_clinicos/application/indication/indication_form/indication_form_bloc.dart'
    as _i41;
import 'package:expedientes_clinicos/application/indication/indication_form/medicine_indication_form_bloc.dart'
    as _i52;
import 'package:expedientes_clinicos/application/indication/indication_watcher/indication_watcher_bloc.dart'
    as _i42;
import 'package:expedientes_clinicos/application/indication/indication_watcher/medicine_indication_watcher_bloc.dart'
    as _i53;
import 'package:expedientes_clinicos/application/medicine/medicine_actor/medicine_actor_bloc.dart'
    as _i46;
import 'package:expedientes_clinicos/application/medicine/medicine_form/medicine_form_bloc.dart'
    as _i50;
import 'package:expedientes_clinicos/application/medicine/medicine_watcher/medicine_watcher_bloc.dart'
    as _i54;
import 'package:expedientes_clinicos/application/prescription/prescription_actor/duration_interval_actor_bloc.dart'
    as _i69;
import 'package:expedientes_clinicos/application/prescription/prescription_actor/frequency_interval_actor_bloc.dart'
    as _i13;
import 'package:expedientes_clinicos/application/prescription/prescription_actor/prescription_actor_bloc.dart'
    as _i58;
import 'package:expedientes_clinicos/application/prescription/prescription_form/duration_interval_form_bloc.dart'
    as _i70;
import 'package:expedientes_clinicos/application/prescription/prescription_form/frequency_interval_form_bloc.dart'
    as _i15;
import 'package:expedientes_clinicos/application/prescription/prescription_form/prescription_form_bloc.dart'
    as _i60;
import 'package:expedientes_clinicos/application/prescription/prescription_watcher/duration_interval_watcher_bloc.dart'
    as _i71;
import 'package:expedientes_clinicos/application/prescription/prescription_watcher/frequency_duration_watcher_bloc.dart'
    as _i16;
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart'
    as _i61;
import 'package:expedientes_clinicos/application/time_interval/time_interval_actor/time_interval_actor_bloc.dart'
    as _i62;
import 'package:expedientes_clinicos/application/time_interval/time_interval_form/time_interval_form_bloc.dart'
    as _i64;
import 'package:expedientes_clinicos/application/time_interval/time_interval_watcher/time_interval_watcher_bloc.dart'
    as _i65;
import 'package:expedientes_clinicos/domain/core/categories/i_category_repository.dart'
    as _i8;
import 'package:expedientes_clinicos/domain/core/indication/i_indication_repository.dart'
    as _i37;
import 'package:expedientes_clinicos/domain/core/indication/indication_class/i_indication_class_repository.dart'
    as _i24;
import 'package:expedientes_clinicos/domain/core/name_abbreviation/i_name_abbreviation_repository.dart'
    as _i4;
import 'package:expedientes_clinicos/domain/core/time_interval/i_time_interval_repository.dart'
    as _i63;
import 'package:expedientes_clinicos/domain/medicine/i_administration_route_repository.dart'
    as _i18;
import 'package:expedientes_clinicos/domain/medicine/i_measure_unit_repository.dart'
    as _i26;
import 'package:expedientes_clinicos/domain/medicine/i_medicine_category_repository.dart'
    as _i28;
import 'package:expedientes_clinicos/domain/medicine/i_medicine_indication_repository.dart'
    as _i30;
import 'package:expedientes_clinicos/domain/medicine/i_medicine_repository.dart'
    as _i32;
import 'package:expedientes_clinicos/domain/medicine/i_pharmaceutical_form_repository.dart'
    as _i34;
import 'package:expedientes_clinicos/domain/prescription/duration_interval/i_duration_interval.dart'
    as _i20;
import 'package:expedientes_clinicos/domain/prescription/frequency_interval/i_frequency_interval_repository.dart'
    as _i14;
import 'package:expedientes_clinicos/domain/prescription/i_prescription.dart'
    as _i59;
import 'package:expedientes_clinicos/domain/prescription/medicine_indication/i_medicine_indication_repository.dart'
    as _i22;
import 'package:expedientes_clinicos/infraestructure/firebase_injectable_module.dart'
    as _i73;
import 'package:expedientes_clinicos/infraestructure/indication/indication_category_repository.dart'
    as _i25;
import 'package:expedientes_clinicos/infraestructure/medicine/administration_route/administration_route.dart'
    as _i19;
import 'package:expedientes_clinicos/infraestructure/medicine/measure_unit/measure_unit_repository.dart'
    as _i27;
import 'package:expedientes_clinicos/infraestructure/medicine/medicine_category/medicine_category_repository.dart'
    as _i29;
import 'package:expedientes_clinicos/infraestructure/medicine/medicine_repository.dart'
    as _i33;
import 'package:expedientes_clinicos/infraestructure/medicine/pharmaceutical_form/pharmaceutical_form_repository.dart'
    as _i35;
import 'package:expedientes_clinicos/infraestructure/prescription/duration_interval/duration_interval_repository.dart'
    as _i21;
import 'package:expedientes_clinicos/infraestructure/prescription/frequency_interval/frequency_interval_repository.dart'
    as _i23;
import 'package:expedientes_clinicos/infraestructure/prescription/medicine_indication/medicine_indication_repository.dart'
    as _i31;
import 'package:expedientes_clinicos/injectable_modules.dart' as _i72;
import 'package:expedientes_clinicos/presentation/routes/router.gr.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i17;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
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
    gh.factory<_i3.AbbreviationNameFormBloc>(() =>
        _i3.AbbreviationNameFormBloc(gh<_i4.INameAbbreviationRepository>()));
    gh.factory<_i5.AbbreviationNameWatcherBloc>(() =>
        _i5.AbbreviationNameWatcherBloc(gh<_i4.INameAbbreviationRepository>()));
    gh.lazySingleton<_i6.AppRouter>(() => injectableModule.router);
    gh.factory<_i7.CategoryActorBloc>(
        () => _i7.CategoryActorBloc(gh<_i8.ICategoryRepository>()));
    gh.factory<_i9.CategoryFormBloc>(
        () => _i9.CategoryFormBloc(gh<_i8.ICategoryRepository>()));
    gh.factory<_i10.CategoryWatcherBloc>(
        () => _i10.CategoryWatcherBloc(gh<_i8.ICategoryRepository>()));
    gh.lazySingleton<_i11.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i12.FirebaseFirestore>(
        () => firebaseInjectableModule.firestore);
    gh.factory<_i13.FrequencyIntervalActorBloc>(() =>
        _i13.FrequencyIntervalActorBloc(
            gh<_i14.IFrequencyIntervalRepository>()));
    gh.factory<_i15.FrequencyIntervalFormBloc>(() =>
        _i15.FrequencyIntervalFormBloc(
            gh<_i14.IFrequencyIntervalRepository>()));
    gh.factory<_i16.FrequencyIntervalWatcherBloc>(() =>
        _i16.FrequencyIntervalWatcherBloc(
            gh<_i14.IFrequencyIntervalRepository>()));
    gh.lazySingleton<_i17.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i18.IAdministrationRouteRepository>(
        () => _i19.AdministrationRouteRepository(gh<_i12.FirebaseFirestore>()));
    gh.lazySingleton<_i20.IDurationIntervalRepository>(
        () => _i21.DurationIntervalRepository(gh<_i12.FirebaseFirestore>()));
    gh.lazySingleton<_i22.IFrequencyIntervalRepository>(
        () => _i23.FrequencyIntervalRepository(gh<_i12.FirebaseFirestore>()));
    gh.lazySingleton<_i24.IIndicationCategoryRepository>(
        () => _i25.IndicationCategoryRepository(gh<_i12.FirebaseFirestore>()));
    gh.lazySingleton<_i26.IMeasureUnitRepository>(
        () => _i27.MeasureUnitRepository(gh<_i12.FirebaseFirestore>()));
    gh.lazySingleton<_i28.IMedicineCategoryRepository>(
        () => _i29.MedicineCategoryRepository(gh<_i12.FirebaseFirestore>()));
    gh.lazySingleton<_i30.IMedicineIndicationRepository>(
        () => _i31.MedicineIndicationRepository(gh<_i12.FirebaseFirestore>()));
    gh.lazySingleton<_i32.IMedicineRepository>(
        () => _i33.MedicineRepository(gh<_i12.FirebaseFirestore>()));
    gh.lazySingleton<_i34.IPharmaceuticalFormRepository>(
        () => _i35.PharmaceuticalFormRepository(gh<_i12.FirebaseFirestore>()));
    gh.factory<_i36.IndicationActorBloc>(
        () => _i36.IndicationActorBloc(gh<_i37.IIndicationRepository>()));
    gh.factory<_i38.IndicationCategoryActorBloc>(() =>
        _i38.IndicationCategoryActorBloc(
            gh<_i24.IIndicationCategoryRepository>()));
    gh.factory<_i39.IndicationCategoryFormBloc>(() =>
        _i39.IndicationCategoryFormBloc(
            gh<_i24.IIndicationCategoryRepository>()));
    gh.factory<_i40.IndicationCategoryWatcherBloc>(() =>
        _i40.IndicationCategoryWatcherBloc(
            gh<_i24.IIndicationCategoryRepository>()));
    gh.factory<_i41.IndicationFormBloc>(
        () => _i41.IndicationFormBloc(gh<_i37.IIndicationRepository>()));
    gh.factory<_i42.IndicationWatcherBloc>(
        () => _i42.IndicationWatcherBloc(gh<_i37.IIndicationRepository>()));
    gh.factory<_i43.MeasureUnitActorBloc>(
        () => _i43.MeasureUnitActorBloc(gh<_i26.IMeasureUnitRepository>()));
    gh.factory<_i44.MeasureUnitFormBloc>(
        () => _i44.MeasureUnitFormBloc(gh<_i26.IMeasureUnitRepository>()));
    gh.factory<_i45.MeasureUnitWatcherBloc>(
        () => _i45.MeasureUnitWatcherBloc(gh<_i26.IMeasureUnitRepository>()));
    gh.factory<_i46.MedicineActorBloc>(
        () => _i46.MedicineActorBloc(gh<_i32.IMedicineRepository>()));
    gh.factory<_i47.MedicineCategoryActorBloc>(() =>
        _i47.MedicineCategoryActorBloc(gh<_i28.IMedicineCategoryRepository>()));
    gh.factory<_i48.MedicineCategoryFormBloc>(() =>
        _i48.MedicineCategoryFormBloc(gh<_i28.IMedicineCategoryRepository>()));
    gh.factory<_i49.MedicineCategoryWatcherBloc>(() =>
        _i49.MedicineCategoryWatcherBloc(
            gh<_i28.IMedicineCategoryRepository>()));
    gh.factory<_i50.MedicineFormBloc>(
        () => _i50.MedicineFormBloc(gh<_i32.IMedicineRepository>()));
    gh.factory<_i51.MedicineIndicationActorBloc>(() =>
        _i51.MedicineIndicationActorBloc(
            gh<_i30.IMedicineIndicationRepository>()));
    gh.factory<_i52.MedicineIndicationFormBloc>(() =>
        _i52.MedicineIndicationFormBloc(
            gh<_i30.IMedicineIndicationRepository>()));
    gh.factory<_i53.MedicineIndicationWatcherBloc>(() =>
        _i53.MedicineIndicationWatcherBloc(
            gh<_i30.IMedicineIndicationRepository>()));
    gh.factory<_i54.MedicineWatcherBloc>(
        () => _i54.MedicineWatcherBloc(gh<_i32.IMedicineRepository>()));
    gh.factory<_i55.PharmaceuticalFormActorBloc>(() =>
        _i55.PharmaceuticalFormActorBloc(
            gh<_i34.IPharmaceuticalFormRepository>()));
    gh.factory<_i56.PharmaceuticalFormFormBloc>(() =>
        _i56.PharmaceuticalFormFormBloc(
            gh<_i34.IPharmaceuticalFormRepository>()));
    gh.factory<_i57.PharmaceuticalFormWatcherBloc>(() =>
        _i57.PharmaceuticalFormWatcherBloc(
            gh<_i34.IPharmaceuticalFormRepository>()));
    gh.factory<_i58.PrescriptionActorBloc>(
        () => _i58.PrescriptionActorBloc(gh<_i59.IPrescriptionRepository>()));
    gh.factory<_i60.PrescriptionFormBloc>(
        () => _i60.PrescriptionFormBloc(gh<_i59.IPrescriptionRepository>()));
    gh.factory<_i61.StateRendererBloc>(() => _i61.StateRendererBloc());
    gh.factory<_i62.TimeIntervalActorBloc>(
        () => _i62.TimeIntervalActorBloc(gh<_i63.ITimeIntervalRepository>()));
    gh.factory<_i64.TimeIntervalFormBloc>(
        () => _i64.TimeIntervalFormBloc(gh<_i63.ITimeIntervalRepository>()));
    gh.factory<_i65.TimeIntervalWatcherBloc>(
        () => _i65.TimeIntervalWatcherBloc(gh<_i63.ITimeIntervalRepository>()));
    gh.factory<_i66.AdministrationRouteActorBloc>(() =>
        _i66.AdministrationRouteActorBloc(
            gh<_i18.IAdministrationRouteRepository>()));
    gh.factory<_i67.AdministrationRouteFormBloc>(() =>
        _i67.AdministrationRouteFormBloc(
            gh<_i18.IAdministrationRouteRepository>()));
    gh.factory<_i68.AdministrationRouteWatcherBloc>(() =>
        _i68.AdministrationRouteWatcherBloc(
            gh<_i18.IAdministrationRouteRepository>()));
    gh.factory<_i69.DurationIntervalActorBloc>(() =>
        _i69.DurationIntervalActorBloc(gh<_i20.IDurationIntervalRepository>()));
    gh.factory<_i70.DurationIntervalFormBloc>(() =>
        _i70.DurationIntervalFormBloc(gh<_i20.IDurationIntervalRepository>()));
    gh.factory<_i71.DurationIntervalWatcherBloc>(() =>
        _i71.DurationIntervalWatcherBloc(
            gh<_i20.IDurationIntervalRepository>()));
    return this;
  }
}

class _$InjectableModule extends _i72.InjectableModule {}

class _$FirebaseInjectableModule extends _i73.FirebaseInjectableModule {}
