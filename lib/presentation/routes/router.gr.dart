// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../common/state_renderer/full_screen_state.dart' as _i5;
import '../medicine/branded_medicine/branded_medicine_form/branded_medicine_form_page.dart'
    as _i4;
import '../medicine/generic_medicine/generic_medicine_form/generic_medicine_form_page.dart'
    as _i3;
import '../patient_visit/patient_visit_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    PatientVisitRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.PatientVisitPage(),
      );
    },
    GenericMedicineFormRoute.name: (routeData) {
      final args = routeData.argsAs<GenericMedicineFormRouteArgs>(
          orElse: () => const GenericMedicineFormRouteArgs());
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.GenericMedicineFormPage(
          onCreated: args.onCreated,
          key: args.key,
        ),
      );
    },
    BrandedMedicineFormRoute.name: (routeData) {
      final args = routeData.argsAs<BrandedMedicineFormRouteArgs>(
          orElse: () => const BrandedMedicineFormRouteArgs());
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.BrandedMedicineFormPage(
          onCreated: args.onCreated,
          key: args.key,
        ),
      );
    },
    FullScreenState.name: (routeData) {
      final args = routeData.argsAs<FullScreenStateArgs>();
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.FullScreenState(
          content: args.content,
          key: args.key,
        ),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          SplashRoute.name,
          path: '/splash-page',
        ),
        _i6.RouteConfig(
          PatientVisitRoute.name,
          path: '/',
        ),
        _i6.RouteConfig(
          GenericMedicineFormRoute.name,
          path: '/generic-medicine-form-page',
        ),
        _i6.RouteConfig(
          BrandedMedicineFormRoute.name,
          path: '/branded-medicine-form-page',
        ),
        _i6.RouteConfig(
          FullScreenState.name,
          path: '/full-screen-state',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash-page',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.PatientVisitPage]
class PatientVisitRoute extends _i6.PageRouteInfo<void> {
  const PatientVisitRoute()
      : super(
          PatientVisitRoute.name,
          path: '/',
        );

  static const String name = 'PatientVisitRoute';
}

/// generated route for
/// [_i3.GenericMedicineFormPage]
class GenericMedicineFormRoute
    extends _i6.PageRouteInfo<GenericMedicineFormRouteArgs> {
  GenericMedicineFormRoute({
    Function? onCreated,
    _i7.Key? key,
  }) : super(
          GenericMedicineFormRoute.name,
          path: '/generic-medicine-form-page',
          args: GenericMedicineFormRouteArgs(
            onCreated: onCreated,
            key: key,
          ),
        );

  static const String name = 'GenericMedicineFormRoute';
}

class GenericMedicineFormRouteArgs {
  const GenericMedicineFormRouteArgs({
    this.onCreated,
    this.key,
  });

  final Function? onCreated;

  final _i7.Key? key;

  @override
  String toString() {
    return 'GenericMedicineFormRouteArgs{onCreated: $onCreated, key: $key}';
  }
}

/// generated route for
/// [_i4.BrandedMedicineFormPage]
class BrandedMedicineFormRoute
    extends _i6.PageRouteInfo<BrandedMedicineFormRouteArgs> {
  BrandedMedicineFormRoute({
    Function? onCreated,
    _i7.Key? key,
  }) : super(
          BrandedMedicineFormRoute.name,
          path: '/branded-medicine-form-page',
          args: BrandedMedicineFormRouteArgs(
            onCreated: onCreated,
            key: key,
          ),
        );

  static const String name = 'BrandedMedicineFormRoute';
}

class BrandedMedicineFormRouteArgs {
  const BrandedMedicineFormRouteArgs({
    this.onCreated,
    this.key,
  });

  final Function? onCreated;

  final _i7.Key? key;

  @override
  String toString() {
    return 'BrandedMedicineFormRouteArgs{onCreated: $onCreated, key: $key}';
  }
}

/// generated route for
/// [_i5.FullScreenState]
class FullScreenState extends _i6.PageRouteInfo<FullScreenStateArgs> {
  FullScreenState({
    required _i7.Widget content,
    _i7.Key? key,
  }) : super(
          FullScreenState.name,
          path: '/full-screen-state',
          args: FullScreenStateArgs(
            content: content,
            key: key,
          ),
        );

  static const String name = 'FullScreenState';
}

class FullScreenStateArgs {
  const FullScreenStateArgs({
    required this.content,
    this.key,
  });

  final _i7.Widget content;

  final _i7.Key? key;

  @override
  String toString() {
    return 'FullScreenStateArgs{content: $content, key: $key}';
  }
}
