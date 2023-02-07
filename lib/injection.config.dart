// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/measure_unit_form_bloc.dart'
    as _i13;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/measure_unit_watcher_bloc.dart'
    as _i14;
import 'package:expedientes_clinicos/application/categories/category_actor/category_actor_bloc.dart'
    as _i18;
import 'package:expedientes_clinicos/application/categories/category_form/category_form_bloc.dart'
    as _i19;
import 'package:expedientes_clinicos/application/categories/category_watcher/category_watcher_bloc.dart'
    as _i20;
import 'package:expedientes_clinicos/application/medicine/medicine_form/medicine_form_bloc.dart'
    as _i15;
import 'package:expedientes_clinicos/application/medicine/medicine_watcher/medicine_watcher_bloc.dart'
    as _i16;
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart'
    as _i17;
import 'package:expedientes_clinicos/domain/core/categories/i_category_repository.dart'
    as _i7;
import 'package:expedientes_clinicos/domain/medicine/i_measure_unit_repository.dart'
    as _i9;
import 'package:expedientes_clinicos/domain/medicine/i_medicine_repository.dart'
    as _i11;
import 'package:expedientes_clinicos/infraestructure/firebase_injectable_module.dart'
    as _i22;
import 'package:expedientes_clinicos/infraestructure/medicine/measure_unit/measure_unit_repository.dart'
    as _i10;
import 'package:expedientes_clinicos/infraestructure/medicine/medicine_category/category_repository.dart'
    as _i8;
import 'package:expedientes_clinicos/infraestructure/medicine/medicine_repository.dart'
    as _i12;
import 'package:expedientes_clinicos/injectable_modules.dart' as _i21;
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
    gh.lazySingleton<_i7.ICategoryRepository>(
        () => _i8.CategoryRepository(gh<_i5.FirebaseFirestore>()));
    gh.lazySingleton<_i9.IMeasureUnitRepository>(
        () => _i10.MeasureUnitRepository(gh<_i5.FirebaseFirestore>()));
    gh.lazySingleton<_i11.IMedicineRepository>(
        () => _i12.MedicineRepository(gh<_i5.FirebaseFirestore>()));
    gh.factory<_i13.MeasureUnitFormBloc>(
        () => _i13.MeasureUnitFormBloc(gh<_i9.IMeasureUnitRepository>()));
    gh.factory<_i14.MeasureUnitWatcherBloc>(
        () => _i14.MeasureUnitWatcherBloc(gh<_i9.IMeasureUnitRepository>()));
    gh.factory<_i15.MedicineFormBloc>(
        () => _i15.MedicineFormBloc(gh<_i11.IMedicineRepository>()));
    gh.factory<_i16.MedicineWatcherBloc>(
        () => _i16.MedicineWatcherBloc(gh<_i11.IMedicineRepository>()));
    gh.factory<_i17.StateRendererBloc>(() => _i17.StateRendererBloc());
    gh.factory<_i18.CategoryActorBloc>(
        () => _i18.CategoryActorBloc(gh<_i7.ICategoryRepository>()));
    gh.factory<_i19.CategoryFormBloc>(
        () => _i19.CategoryFormBloc(gh<_i7.ICategoryRepository>()));
    gh.factory<_i20.CategoryWatcherBloc>(
        () => _i20.CategoryWatcherBloc(gh<_i7.ICategoryRepository>()));
    return this;
  }
}

class _$InjectableModule extends _i21.InjectableModule {}

class _$FirebaseInjectableModule extends _i22.FirebaseInjectableModule {}
