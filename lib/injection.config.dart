// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_actor/administration_route_actor_bloc.dart'
    as _i47;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_actor/measure_unit_actor_bloc.dart'
    as _i23;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_actor/pharmaceutical_form_actor_bloc.dart'
    as _i35;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/abbreviation_name_form_abstract_bloc.dart'
    as _i45;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/administration_route_form_bloc.dart'
    as _i48;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/measure_unit_form_bloc.dart'
    as _i24;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/pharmaceutical_form_form_bloc.dart'
    as _i36;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart'
    as _i46;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/administration_route_watcher_bloc_.dart'
    as _i49;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/measure_unit_watcher_bloc.dart'
    as _i25;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/pharmaceutical_form_watcher_bloc.dart'
    as _i37;
import 'package:expedientes_clinicos/application/categories/category_actor/category_actor_bloc.dart'
    as _i50;
import 'package:expedientes_clinicos/application/categories/category_actor/indication_category_actor_bloc.dart'
    as _i18;
import 'package:expedientes_clinicos/application/categories/category_actor/medicine_category_actor_bloc.dart'
    as _i27;
import 'package:expedientes_clinicos/application/categories/category_form/category_form_bloc.dart'
    as _i51;
import 'package:expedientes_clinicos/application/categories/category_form/indication_category_form_bloc.dart'
    as _i19;
import 'package:expedientes_clinicos/application/categories/category_form/medicine_category_form_bloc.dart'
    as _i28;
import 'package:expedientes_clinicos/application/categories/category_watcher/category_watcher_bloc.dart'
    as _i52;
import 'package:expedientes_clinicos/application/categories/category_watcher/indication_category_bloc.dart'
    as _i20;
import 'package:expedientes_clinicos/application/categories/category_watcher/medicine_category_bloc.dart'
    as _i29;
import 'package:expedientes_clinicos/application/indication/indication_actor/indication_actor_bloc.dart'
    as _i17;
import 'package:expedientes_clinicos/application/indication/indication_actor/medicine_indication_actor_bloc.dart'
    as _i31;
import 'package:expedientes_clinicos/application/indication/indication_form/indication_form_bloc.dart'
    as _i21;
import 'package:expedientes_clinicos/application/indication/indication_form/medicine_indication_form_bloc.dart'
    as _i32;
import 'package:expedientes_clinicos/application/indication/indication_watcher/indication_watcher_bloc.dart'
    as _i22;
import 'package:expedientes_clinicos/application/indication/indication_watcher/medicine_indication_watcher_bloc.dart'
    as _i33;
import 'package:expedientes_clinicos/application/medicine/medicine_actor/medicine_actor_bloc.dart'
    as _i26;
import 'package:expedientes_clinicos/application/medicine/medicine_form/medicine_form_bloc.dart'
    as _i30;
import 'package:expedientes_clinicos/application/medicine/medicine_watcher/medicine_watcher_bloc.dart'
    as _i34;
import 'package:expedientes_clinicos/application/prescription/prescription_actor/prescription_actor_bloc.dart'
    as _i38;
import 'package:expedientes_clinicos/application/prescription/prescription_form/prescription_form_bloc.dart'
    as _i40;
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart'
    as _i41;
import 'package:expedientes_clinicos/application/time_interval/time_interval_actor/duration_interval_actor_bloc.dart'
    as _i53;
import 'package:expedientes_clinicos/application/time_interval/time_interval_actor/frequency_interval_actor_bloc.dart'
    as _i56;
import 'package:expedientes_clinicos/application/time_interval/time_interval_actor/time_interval_actor_bloc.dart'
    as _i42;
import 'package:expedientes_clinicos/application/time_interval/time_interval_form/duration_interval_form_bloc.dart'
    as _i54;
import 'package:expedientes_clinicos/application/time_interval/time_interval_form/frequency_interval_form_bloc.dart'
    as _i57;
import 'package:expedientes_clinicos/application/time_interval/time_interval_form/time_interval_form_bloc.dart'
    as _i43;
import 'package:expedientes_clinicos/application/time_interval/time_interval_watcher/duration_interval_watcher_bloc.dart'
    as _i55;
import 'package:expedientes_clinicos/application/time_interval/time_interval_watcher/frequency_duration_watcher_bloc.dart'
    as _i58;
import 'package:expedientes_clinicos/application/time_interval/time_interval_watcher/time_interval_watcher_bloc.dart'
    as _i44;
import 'package:expedientes_clinicos/domain/core/categories/i_category_repository.dart'
    as _i7;
import 'package:expedientes_clinicos/domain/core/indication/i_indication_repository.dart'
    as _i9;
import 'package:expedientes_clinicos/domain/core/name_abbreviation/i_name_abbreviation_repository.dart'
    as _i13;
import 'package:expedientes_clinicos/domain/core/time_interval/i_time_interval_repository.dart'
    as _i15;
import 'package:expedientes_clinicos/domain/medicine/i_medicine_repository.dart'
    as _i11;
import 'package:expedientes_clinicos/domain/prescription/i_prescription.dart'
    as _i39;
import 'package:expedientes_clinicos/infraestructure/category/category_repository.dart'
    as _i8;
import 'package:expedientes_clinicos/infraestructure/firebase_injectable_module.dart'
    as _i60;
import 'package:expedientes_clinicos/infraestructure/indication/indication_repository.dart'
    as _i10;
import 'package:expedientes_clinicos/infraestructure/medicine/medicine_repository.dart'
    as _i12;
import 'package:expedientes_clinicos/infraestructure/name_abbreviation/name_abbreviation_repository.dart'
    as _i14;
import 'package:expedientes_clinicos/infraestructure/time_interval/time_interval_repository.dart'
    as _i16;
import 'package:expedientes_clinicos/injectable_modules.dart' as _i59;
import 'package:expedientes_clinicos/presentation/routes/router.gr.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
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
    gh.lazySingleton<_i3.AppRouter>(() => injectableModule.router);
    gh.lazySingleton<_i4.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i5.FirebaseFirestore>(
        () => firebaseInjectableModule.firestore);
    gh.lazySingleton<_i6.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i7.ICategoryRepository>(() => _i8.CategoryRepository(
          gh<_i5.FirebaseFirestore>(),
          gh<String>(),
        ));
    gh.lazySingleton<_i9.IIndicationRepository>(() => _i10.IndicationRepository(
          gh<_i5.FirebaseFirestore>(),
          gh<String>(),
        ));
    gh.lazySingleton<_i11.IMedicineRepository>(
        () => _i12.MedicineRepository(gh<_i5.FirebaseFirestore>()));
    gh.lazySingleton<_i13.INameAbbreviationRepository>(
        () => _i14.NameAbbreviationRepository(
              gh<_i5.FirebaseFirestore>(),
              gh<String>(),
            ));
    gh.lazySingleton<_i15.ITimeIntervalRepository>(
        () => _i16.TimeIntervalRepository(
              gh<_i5.FirebaseFirestore>(),
              gh<String>(),
            ));
    gh.factory<_i17.IndicationActorBloc>(() => _i17.IndicationActorBloc(
          gh<_i9.IIndicationRepository>(),
          gh<String>(),
        ));
    gh.factory<_i18.IndicationCategoryActorBloc>(
        () => _i18.IndicationCategoryActorBloc(gh<_i7.ICategoryRepository>()));
    gh.factory<_i19.IndicationCategoryFormBloc>(
        () => _i19.IndicationCategoryFormBloc(gh<_i7.ICategoryRepository>()));
    gh.factory<_i20.IndicationCategoryWatcherBloc>(() =>
        _i20.IndicationCategoryWatcherBloc(gh<_i7.ICategoryRepository>()));
    gh.factory<_i21.IndicationFormBloc>(() => _i21.IndicationFormBloc(
          gh<_i9.IIndicationRepository>(),
          gh<String>(),
        ));
    gh.factory<_i22.IndicationWatcherBloc>(() => _i22.IndicationWatcherBloc(
          gh<_i9.IIndicationRepository>(),
          gh<String>(),
        ));
    gh.factory<_i23.MeasureUnitActorBloc>(() =>
        _i23.MeasureUnitActorBloc(gh<_i13.INameAbbreviationRepository>()));
    gh.factory<_i24.MeasureUnitFormBloc>(
        () => _i24.MeasureUnitFormBloc(gh<_i13.INameAbbreviationRepository>()));
    gh.factory<_i25.MeasureUnitWatcherBloc>(() =>
        _i25.MeasureUnitWatcherBloc(gh<_i13.INameAbbreviationRepository>()));
    gh.factory<_i26.MedicineActorBloc>(
        () => _i26.MedicineActorBloc(gh<_i11.IMedicineRepository>()));
    gh.factory<_i27.MedicineCategoryActorBloc>(
        () => _i27.MedicineCategoryActorBloc(gh<_i7.ICategoryRepository>()));
    gh.factory<_i28.MedicineCategoryFormBloc>(
        () => _i28.MedicineCategoryFormBloc(gh<_i7.ICategoryRepository>()));
    gh.factory<_i29.MedicineCategoryWatcherBloc>(
        () => _i29.MedicineCategoryWatcherBloc(gh<_i7.ICategoryRepository>()));
    gh.factory<_i30.MedicineFormBloc>(
        () => _i30.MedicineFormBloc(gh<_i11.IMedicineRepository>()));
    gh.factory<_i31.MedicineIndicationActorBloc>(() =>
        _i31.MedicineIndicationActorBloc(gh<_i9.IIndicationRepository>()));
    gh.factory<_i32.MedicineIndicationFormBloc>(
        () => _i32.MedicineIndicationFormBloc(gh<_i9.IIndicationRepository>()));
    gh.factory<_i33.MedicineIndicationWatcherBloc>(() =>
        _i33.MedicineIndicationWatcherBloc(gh<_i9.IIndicationRepository>()));
    gh.factory<_i34.MedicineWatcherBloc>(
        () => _i34.MedicineWatcherBloc(gh<_i11.IMedicineRepository>()));
    gh.factory<_i35.PharmaceuticalFormActorBloc>(() =>
        _i35.PharmaceuticalFormActorBloc(
            gh<_i13.INameAbbreviationRepository>()));
    gh.factory<_i36.PharmaceuticalFormFormBloc>(() =>
        _i36.PharmaceuticalFormFormBloc(
            gh<_i13.INameAbbreviationRepository>()));
    gh.factory<_i37.PharmaceuticalFormWatcherBloc>(() =>
        _i37.PharmaceuticalFormWatcherBloc(
            gh<_i13.INameAbbreviationRepository>()));
    gh.factory<_i38.PrescriptionActorBloc>(
        () => _i38.PrescriptionActorBloc(gh<_i39.IPrescriptionRepository>()));
    gh.factory<_i40.PrescriptionFormBloc>(
        () => _i40.PrescriptionFormBloc(gh<_i39.IPrescriptionRepository>()));
    gh.factory<_i41.StateRendererBloc>(() => _i41.StateRendererBloc());
    gh.factory<_i42.TimeIntervalActorBloc>(() => _i42.TimeIntervalActorBloc(
          gh<_i15.ITimeIntervalRepository>(),
          gh<String>(),
        ));
    gh.factory<_i43.TimeIntervalFormBloc>(() => _i43.TimeIntervalFormBloc(
          gh<_i15.ITimeIntervalRepository>(),
          gh<String>(),
        ));
    gh.factory<_i44.TimeIntervalWatcherBloc>(() => _i44.TimeIntervalWatcherBloc(
          gh<_i15.ITimeIntervalRepository>(),
          gh<String>(),
        ));
    gh.factory<_i45.AbbreviationNameFormBloc>(
        () => _i45.AbbreviationNameFormBloc(
              gh<_i13.INameAbbreviationRepository>(),
              gh<String>(),
            ));
    gh.factory<_i46.AbbreviationNameWatcherBloc>(
        () => _i46.AbbreviationNameWatcherBloc(
              gh<_i13.INameAbbreviationRepository>(),
              gh<String>(),
            ));
    gh.factory<_i47.AdministrationRouteActorBloc>(() =>
        _i47.AdministrationRouteActorBloc(
            gh<_i13.INameAbbreviationRepository>()));
    gh.factory<_i48.AdministrationRouteFormBloc>(() =>
        _i48.AdministrationRouteFormBloc(
            gh<_i13.INameAbbreviationRepository>()));
    gh.factory<_i49.AdministrationRouteWatcherBloc>(() =>
        _i49.AdministrationRouteWatcherBloc(
            gh<_i13.INameAbbreviationRepository>()));
    gh.factory<_i50.CategoryActorBloc>(() => _i50.CategoryActorBloc(
          gh<_i7.ICategoryRepository>(),
          gh<String>(),
        ));
    gh.factory<_i51.CategoryFormBloc>(() => _i51.CategoryFormBloc(
          gh<_i7.ICategoryRepository>(),
          gh<String>(),
        ));
    gh.factory<_i52.CategoryWatcherBloc>(() => _i52.CategoryWatcherBloc(
          gh<_i7.ICategoryRepository>(),
          gh<String>(),
        ));
    gh.factory<_i53.DurationIntervalActorBloc>(() =>
        _i53.DurationIntervalActorBloc(gh<_i15.ITimeIntervalRepository>()));
    gh.factory<_i54.DurationIntervalFormBloc>(() =>
        _i54.DurationIntervalFormBloc(gh<_i15.ITimeIntervalRepository>()));
    gh.factory<_i55.DurationIntervalWatcherBloc>(() =>
        _i55.DurationIntervalWatcherBloc(gh<_i15.ITimeIntervalRepository>()));
    gh.factory<_i56.FrequencyIntervalActorBloc>(() =>
        _i56.FrequencyIntervalActorBloc(gh<_i15.ITimeIntervalRepository>()));
    gh.factory<_i57.FrequencyIntervalFormBloc>(() =>
        _i57.FrequencyIntervalFormBloc(gh<_i15.ITimeIntervalRepository>()));
    gh.factory<_i58.FrequencyIntervalWatcherBloc>(() =>
        _i58.FrequencyIntervalWatcherBloc(gh<_i15.ITimeIntervalRepository>()));
    return this;
  }
}

class _$InjectableModule extends _i59.InjectableModule {}

class _$FirebaseInjectableModule extends _i60.FirebaseInjectableModule {}
