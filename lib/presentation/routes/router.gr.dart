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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../common/state_renderer/full_screen_state.dart' as _i3;
import '../medicine/medicine_form/medicine_form_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    MedicineFormRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.MedicineFormPage(),
      );
    },
    FullScreenState.name: (routeData) {
      final args = routeData.argsAs<FullScreenStateArgs>();
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.FullScreenState(
          content: args.content,
          key: args.key,
        ),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          MedicineFormRoute.name,
          path: '/medicine-form-page',
        ),
        _i4.RouteConfig(
          FullScreenState.name,
          path: '/full-screen-state',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.MedicineFormPage]
class MedicineFormRoute extends _i4.PageRouteInfo<void> {
  const MedicineFormRoute()
      : super(
          MedicineFormRoute.name,
          path: '/medicine-form-page',
        );

  static const String name = 'MedicineFormRoute';
}

/// generated route for
/// [_i3.FullScreenState]
class FullScreenState extends _i4.PageRouteInfo<FullScreenStateArgs> {
  FullScreenState({
    required _i5.Widget content,
    _i5.Key? key,
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

  final _i5.Widget content;

  final _i5.Key? key;

  @override
  String toString() {
    return 'FullScreenStateArgs{content: $content, key: $key}';
  }
}
