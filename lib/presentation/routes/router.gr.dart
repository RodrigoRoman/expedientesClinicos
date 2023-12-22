// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BrandedMedicineFormPageRoute.name: (routeData) {
      final args = routeData.argsAs<BrandedMedicineFormPageRouteArgs>(
          orElse: () => const BrandedMedicineFormPageRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BrandedMedicineFormPage(onCreated: args.onCreated),
      );
    },
    FullScreenStatePageRoute.name: (routeData) {
      final args = routeData.argsAs<FullScreenStatePageRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FullScreenStatePage(
          content: args.content,
          title: args.title,
        ),
      );
    },
    GenericMedicineFormPageRoute.name: (routeData) {
      final args = routeData.argsAs<GenericMedicineFormPageRouteArgs>(
          orElse: () => const GenericMedicineFormPageRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: GenericMedicineFormPage(onCreated: args.onCreated),
      );
    },
    PatientVisitPageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PatientVisitPage(),
      );
    },
  };
}

/// generated route for
/// [BrandedMedicineFormPage]
class BrandedMedicineFormPageRoute
    extends PageRouteInfo<BrandedMedicineFormPageRouteArgs> {
  BrandedMedicineFormPageRoute({
    Function? onCreated,
    List<PageRouteInfo>? children,
  }) : super(
          BrandedMedicineFormPageRoute.name,
          args: BrandedMedicineFormPageRouteArgs(onCreated: onCreated),
          initialChildren: children,
        );

  static const String name = 'BrandedMedicineFormPageRoute';

  static const PageInfo<BrandedMedicineFormPageRouteArgs> page =
      PageInfo<BrandedMedicineFormPageRouteArgs>(name);
}

class BrandedMedicineFormPageRouteArgs {
  const BrandedMedicineFormPageRouteArgs({this.onCreated});

  final Function? onCreated;

  @override
  String toString() {
    return 'BrandedMedicineFormPageRouteArgs{onCreated: $onCreated}';
  }
}

/// generated route for
/// [FullScreenStatePage]
class FullScreenStatePageRoute
    extends PageRouteInfo<FullScreenStatePageRouteArgs> {
  FullScreenStatePageRoute({
    required Widget content,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          FullScreenStatePageRoute.name,
          args: FullScreenStatePageRouteArgs(
            content: content,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'FullScreenStatePageRoute';

  static const PageInfo<FullScreenStatePageRouteArgs> page =
      PageInfo<FullScreenStatePageRouteArgs>(name);
}

class FullScreenStatePageRouteArgs {
  const FullScreenStatePageRouteArgs({
    required this.content,
    required this.title,
  });

  final Widget content;

  final String title;

  @override
  String toString() {
    return 'FullScreenStatePageRouteArgs{content: $content, title: $title}';
  }
}

/// generated route for
/// [GenericMedicineFormPage]
class GenericMedicineFormPageRoute
    extends PageRouteInfo<GenericMedicineFormPageRouteArgs> {
  GenericMedicineFormPageRoute({
    Function? onCreated,
    List<PageRouteInfo>? children,
  }) : super(
          GenericMedicineFormPageRoute.name,
          args: GenericMedicineFormPageRouteArgs(onCreated: onCreated),
          initialChildren: children,
        );

  static const String name = 'GenericMedicineFormPageRoute';

  static const PageInfo<GenericMedicineFormPageRouteArgs> page =
      PageInfo<GenericMedicineFormPageRouteArgs>(name);
}

class GenericMedicineFormPageRouteArgs {
  const GenericMedicineFormPageRouteArgs({this.onCreated});

  final Function? onCreated;

  @override
  String toString() {
    return 'GenericMedicineFormPageRouteArgs{onCreated: $onCreated}';
  }
}

/// generated route for
/// [PatientVisitPage]
class PatientVisitPageRoute extends PageRouteInfo<void> {
  const PatientVisitPageRoute({List<PageRouteInfo>? children})
      : super(
          PatientVisitPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'PatientVisitPageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
