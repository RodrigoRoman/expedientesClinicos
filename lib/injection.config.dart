// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i8;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_actor/administration_route_actor_bloc.dart'
    as _i24;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_actor/measure_unit_actor_bloc.dart'
    as _i18;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/abbreviation_name_form_abstract_bloc.dart'
    as _i3;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/administration_route_form_bloc.dart'
    as _i25;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/measure_unit_form_bloc.dart'
    as _i19;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart'
    as _i5;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/administration_route_watcher_bloc_.dart'
    as _i26;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/measure_unit_watcher_bloc.dart'
    as _i20;
import 'package:expedientes_clinicos/application/categories/category_actor/category_actor_bloc.dart'
    as _i27;
import 'package:expedientes_clinicos/application/categories/category_form/category_form_bloc.dart'
    as _i28;
import 'package:expedientes_clinicos/application/categories/category_watcher/category_watcher_bloc.dart'
    as _i29;
import 'package:expedientes_clinicos/application/medicine/medicine_form/medicine_form_bloc.dart'
    as _i21;
import 'package:expedientes_clinicos/application/medicine/medicine_watcher/medicine_watcher_bloc.dart'
    as _i22;
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart'
    as _i23;
import 'package:expedientes_clinicos/domain/core/categories/i_category_repository.dart'
    as _i12;
import 'package:expedientes_clinicos/domain/core/name_abbreviation/i_name_abbreviation_repository.dart'
    as _i4;
import 'package:expedientes_clinicos/domain/medicine/i_administration_route_repository.dart'
    as _i10;
import 'package:expedientes_clinicos/domain/medicine/i_measure_unit_repository.dart'
    as _i14;
import 'package:expedientes_clinicos/domain/medicine/i_medicine_repository.dart'
    as _i16;
import 'package:expedientes_clinicos/infraestructure/firebase_injectable_module.dart'
    as _i31;
import 'package:expedientes_clinicos/infraestructure/medicine/administration_route/administration_route.dart'
    as _i11;
import 'package:expedientes_clinicos/infraestructure/medicine/measure_unit/measure_unit_repository.dart'
    as _i15;
import 'package:expedientes_clinicos/infraestructure/medicine/medicine_category/category_repository.dart'
    as _i13;
import 'package:expedientes_clinicos/infraestructure/medicine/medicine_repository.dart'
    as _i17;
import 'package:expedientes_clinicos/injectable_modules.dart' as _i30;
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
    gh.factory<_i18.MeasureUnitActorBloc>(
        () => _i18.MeasureUnitActorBloc(gh<_i14.IMeasureUnitRepository>()));
    gh.factory<_i19.MeasureUnitFormBloc>(
        () => _i19.MeasureUnitFormBloc(gh<_i14.IMeasureUnitRepository>()));
    gh.factory<_i20.MeasureUnitWatcherBloc>(
        () => _i20.MeasureUnitWatcherBloc(gh<_i14.IMeasureUnitRepository>()));
    gh.factory<_i21.MedicineFormBloc>(
        () => _i21.MedicineFormBloc(gh<_i16.IMedicineRepository>()));
    gh.factory<_i22.MedicineWatcherBloc>(
        () => _i22.MedicineWatcherBloc(gh<_i16.IMedicineRepository>()));
    gh.factory<_i23.StateRendererBloc>(() => _i23.StateRendererBloc());
    gh.factory<_i24.AdministrationRouteActorBloc>(() =>
        _i24.AdministrationRouteActorBloc(
            gh<_i10.IAdministrationRouteRepository>()));
    gh.factory<_i25.AdministrationRouteFormBloc>(() =>
        _i25.AdministrationRouteFormBloc(
            gh<_i10.IAdministrationRouteRepository>()));
    gh.factory<_i26.AdministrationRouteWatcherBloc>(() =>
        _i26.AdministrationRouteWatcherBloc(
            gh<_i10.IAdministrationRouteRepository>()));
    gh.factory<_i27.CategoryActorBloc>(
        () => _i27.CategoryActorBloc(gh<_i12.ICategoryRepository>()));
    gh.factory<_i28.CategoryFormBloc>(
        () => _i28.CategoryFormBloc(gh<_i12.ICategoryRepository>()));
    gh.factory<_i29.CategoryWatcherBloc>(
        () => _i29.CategoryWatcherBloc(gh<_i12.ICategoryRepository>()));
    return this;
  }
}

class _$InjectableModule extends _i30.InjectableModule {}

class _$FirebaseInjectableModule extends _i31.FirebaseInjectableModule {}
