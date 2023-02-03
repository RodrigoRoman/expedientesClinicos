// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/measure_unit_form_bloc.dart'
    as _i11;
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/measure_unit_watcher_bloc.dart'
    as _i12;
import 'package:expedientes_clinicos/application/categories/category_form/category_form_bloc.dart'
    as _i14;
import 'package:expedientes_clinicos/application/categories/category_watcher/category_watcher_bloc.dart'
    as _i15;
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart'
    as _i13;
import 'package:expedientes_clinicos/domain/core/categories/i_category_repository.dart'
    as _i4;
import 'package:expedientes_clinicos/domain/medicine/i_measure_unit_repository.dart'
    as _i7;
import 'package:expedientes_clinicos/domain/medicine/i_medicine_repository.dart'
    as _i9;
import 'package:expedientes_clinicos/infraestructure/medicine/measure_unit/measure_unit_repository.dart'
    as _i8;
import 'package:expedientes_clinicos/infraestructure/medicine/medicine_category/category_repository.dart'
    as _i5;
import 'package:expedientes_clinicos/infraestructure/medicine/medicine_repository.dart'
    as _i10;
import 'package:expedientes_clinicos/injectable_modules.dart' as _i16;
import 'package:expedientes_clinicos/presentation/routes/router.gr.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
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
    gh.lazySingleton<_i3.AppRouter>(() => injectableModule.router);
    gh.lazySingleton<_i4.ICategoryRepository>(
        () => _i5.CategoryRepository(gh<_i6.FirebaseFirestore>()));
    gh.lazySingleton<_i7.IMeasureUnitRepository>(
        () => _i8.MeasureUnitRepository(gh<_i6.FirebaseFirestore>()));
    gh.lazySingleton<_i9.IMedicineRepository>(
        () => _i10.MedicineRepository(gh<_i6.FirebaseFirestore>()));
    gh.factory<_i11.MeasureUnitFormBloc>(
        () => _i11.MeasureUnitFormBloc(gh<_i7.IMeasureUnitRepository>()));
    gh.factory<_i12.MeasureUnitWatcherBloc>(
        () => _i12.MeasureUnitWatcherBloc(gh<_i7.IMeasureUnitRepository>()));
    gh.factory<_i13.StateRendererBloc>(() => _i13.StateRendererBloc());
    gh.factory<_i14.CategoryFormBloc>(
        () => _i14.CategoryFormBloc(gh<_i4.ICategoryRepository>()));
    gh.factory<_i15.CategoryWatcherBloc>(
        () => _i15.CategoryWatcherBloc(gh<_i4.ICategoryRepository>()));
    return this;
  }
}

class _$InjectableModule extends _i16.InjectableModule {}
