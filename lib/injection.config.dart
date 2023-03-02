// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i8;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_actor/administration_route_actor_bloc.dart'
    as _i41;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_actor/measure_unit_actor_bloc.dart'
    as _i24;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_actor/pharmaceutical_form_actor_bloc.dart'
    as _i30;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/abbreviation_name_form_abstract_bloc.dart'
    as _i3;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/administration_route_form_bloc.dart'
    as _i42;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/measure_unit_form_bloc.dart'
    as _i25;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/pharmaceutical_form_form_bloc.dart'
    as _i31;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart'
    as _i5;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/administration_route_watcher_bloc_.dart'
    as _i43;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/measure_unit_watcher_bloc.dart'
    as _i26;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/pharmaceutical_form_watcher_bloc.dart'
    as _i32;
import 'package:expedientes_clinicos/application/categories/category_actor/category_actor_bloc.dart'
    as _i44;
import 'package:expedientes_clinicos/application/categories/category_form/category_form_bloc.dart'
    as _i45;
import 'package:expedientes_clinicos/application/categories/category_watcher/category_watcher_bloc.dart'
    as _i46;
import 'package:expedientes_clinicos/application/indication/indication_actor/indication_actor_bloc.dart'
    as _i20;
import 'package:expedientes_clinicos/application/indication/indication_form/indication_form_bloc.dart'
    as _i22;
import 'package:expedientes_clinicos/application/indication/indication_watcher/indication_watcher_bloc.dart'
    as _i23;
import 'package:expedientes_clinicos/application/medicine/medicine_actor/medicine_actor_bloc.dart'
    as _i27;
import 'package:expedientes_clinicos/application/medicine/medicine_form/medicine_form_bloc.dart'
    as _i28;
import 'package:expedientes_clinicos/application/medicine/medicine_watcher/medicine_watcher_bloc.dart'
    as _i29;
import 'package:expedientes_clinicos/application/prescription/prescription_actor/prescription_actor_bloc.dart'
    as _i33;
import 'package:expedientes_clinicos/application/prescription/prescription_form/prescription_form_bloc.dart'
    as _i35;
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart'
    as _i36;
import 'package:expedientes_clinicos/application/time_interval/time_interval_actor/time_interval_actor_bloc.dart'
    as _i37;
import 'package:expedientes_clinicos/application/time_interval/time_interval_form/time_interval_form_bloc.dart'
    as _i39;
import 'package:expedientes_clinicos/application/time_interval/time_interval_watcher/time_interval_watcher_bloc.dart'
    as _i40;
import 'package:expedientes_clinicos/domain/core/categories/i_category_repository.dart'
    as _i12;
import 'package:expedientes_clinicos/domain/core/indication/i_indication_repository.dart'
    as _i21;
import 'package:expedientes_clinicos/domain/core/name_abbreviation/i_name_abbreviation_repository.dart'
    as _i4;
import 'package:expedientes_clinicos/domain/core/time_interval/i_time_interval_repository.dart'
    as _i38;
import 'package:expedientes_clinicos/domain/medicine/i_administration_route_repository.dart'
    as _i10;
import 'package:expedientes_clinicos/domain/medicine/i_measure_unit_repository.dart'
    as _i14;
import 'package:expedientes_clinicos/domain/medicine/i_medicine_repository.dart'
    as _i16;
import 'package:expedientes_clinicos/domain/medicine/i_pharmaceutical_form_repository.dart'
    as _i18;
import 'package:expedientes_clinicos/domain/prescription/i_prescription.dart'
    as _i34;
import 'package:expedientes_clinicos/infraestructure/firebase_injectable_module.dart'
    as _i48;
import 'package:expedientes_clinicos/infraestructure/medicine/administration_route/administration_route.dart'
    as _i11;
import 'package:expedientes_clinicos/infraestructure/medicine/measure_unit/measure_unit_repository.dart'
    as _i15;
import 'package:expedientes_clinicos/infraestructure/medicine/medicine_category/category_repository.dart'
    as _i13;
import 'package:expedientes_clinicos/infraestructure/medicine/medicine_repository.dart'
    as _i17;
import 'package:expedientes_clinicos/infraestructure/medicine/pharmaceutical_form/pharmaceutical_form_repository.dart'
    as _i19;
import 'package:expedientes_clinicos/injectable_modules.dart' as _i47;
import 'package:expedientes_clinicos/presentation/routes/router.gr.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i9;
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
    gh.lazySingleton<_i7.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i8.FirebaseFirestore>(
        () => firebaseInjectableModule.firestore);
    gh.lazySingleton<_i9.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i10.IAdministrationRouteRepository>(
        () => _i11.AdministrationRouteRepository(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i12.ICategoryRepository>(
        () => _i13.CategoryRepository(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i14.IMeasureUnitRepository>(
        () => _i15.MeasureUnitRepository(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i16.IMedicineRepository>(
        () => _i17.MedicineRepository(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i18.IPharmaceuticalFormRepository>(
        () => _i19.PharmaceuticalFormRepository(gh<_i8.FirebaseFirestore>()));
    gh.factory<_i20.IndicationActorBloc>(
        () => _i20.IndicationActorBloc(gh<_i21.IIndicationRepository>()));
    gh.factory<_i22.IndicationFormBloc>(
        () => _i22.IndicationFormBloc(gh<_i21.IIndicationRepository>()));
    gh.factory<_i23.IndicationWatcherBloc>(
        () => _i23.IndicationWatcherBloc(gh<_i21.IIndicationRepository>()));
    gh.factory<_i24.MeasureUnitActorBloc>(
        () => _i24.MeasureUnitActorBloc(gh<_i14.IMeasureUnitRepository>()));
    gh.factory<_i25.MeasureUnitFormBloc>(
        () => _i25.MeasureUnitFormBloc(gh<_i14.IMeasureUnitRepository>()));
    gh.factory<_i26.MeasureUnitWatcherBloc>(
        () => _i26.MeasureUnitWatcherBloc(gh<_i14.IMeasureUnitRepository>()));
    gh.factory<_i27.MedicineActorBloc>(
        () => _i27.MedicineActorBloc(gh<_i16.IMedicineRepository>()));
    gh.factory<_i28.MedicineFormBloc>(
        () => _i28.MedicineFormBloc(gh<_i16.IMedicineRepository>()));
    gh.factory<_i29.MedicineWatcherBloc>(
        () => _i29.MedicineWatcherBloc(gh<_i16.IMedicineRepository>()));
    gh.factory<_i30.PharmaceuticalFormActorBloc>(() =>
        _i30.PharmaceuticalFormActorBloc(
            gh<_i18.IPharmaceuticalFormRepository>()));
    gh.factory<_i31.PharmaceuticalFormFormBloc>(() =>
        _i31.PharmaceuticalFormFormBloc(
            gh<_i18.IPharmaceuticalFormRepository>()));
    gh.factory<_i32.PharmaceuticalFormWatcherBloc>(() =>
        _i32.PharmaceuticalFormWatcherBloc(
            gh<_i18.IPharmaceuticalFormRepository>()));
    gh.factory<_i33.PrescriptionActorBloc>(
        () => _i33.PrescriptionActorBloc(gh<_i34.IPrescriptionRepository>()));
    gh.factory<_i35.PrescriptionFormBloc>(
        () => _i35.PrescriptionFormBloc(gh<_i34.IPrescriptionRepository>()));
    gh.factory<_i36.StateRendererBloc>(() => _i36.StateRendererBloc());
    gh.factory<_i37.TimeIntervalActorBloc>(
        () => _i37.TimeIntervalActorBloc(gh<_i38.ITimeIntervalRepository>()));
    gh.factory<_i39.TimeIntervalFormBloc>(
        () => _i39.TimeIntervalFormBloc(gh<_i38.ITimeIntervalRepository>()));
    gh.factory<_i40.TimeIntervalWatcherBloc>(
        () => _i40.TimeIntervalWatcherBloc(gh<_i38.ITimeIntervalRepository>()));
    gh.factory<_i41.AdministrationRouteActorBloc>(() =>
        _i41.AdministrationRouteActorBloc(
            gh<_i10.IAdministrationRouteRepository>()));
    gh.factory<_i42.AdministrationRouteFormBloc>(() =>
        _i42.AdministrationRouteFormBloc(
            gh<_i10.IAdministrationRouteRepository>()));
    gh.factory<_i43.AdministrationRouteWatcherBloc>(() =>
        _i43.AdministrationRouteWatcherBloc(
            gh<_i10.IAdministrationRouteRepository>()));
    gh.factory<_i44.CategoryActorBloc>(
        () => _i44.CategoryActorBloc(gh<_i12.ICategoryRepository>()));
    gh.factory<_i45.CategoryFormBloc>(
        () => _i45.CategoryFormBloc(gh<_i12.ICategoryRepository>()));
    gh.factory<_i46.CategoryWatcherBloc>(
        () => _i46.CategoryWatcherBloc(gh<_i12.ICategoryRepository>()));
    return this;
  }
}

class _$InjectableModule extends _i47.InjectableModule {}

class _$FirebaseInjectableModule extends _i48.FirebaseInjectableModule {}
