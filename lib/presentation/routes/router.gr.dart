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
    DynamicFormFillablePageRoute.name: (routeData) {
      final args = routeData.argsAs<DynamicFormFillablePageRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DynamicFormFillablePage(
          incommingFormSection: args.incommingFormSection,
          key: args.key,
        ),
      );
    },
    DynamicSectionFormStructurePageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DynamicSectionFormStructurePage(),
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
    PrescriptionFormPageRoute.name: (routeData) {
      final args = routeData.argsAs<PrescriptionFormPageRouteArgs>(
          orElse: () => const PrescriptionFormPageRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PrescriptionFormPage(onCreated: args.onCreated),
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
/// [DynamicFormFillablePage]
class DynamicFormFillablePageRoute
    extends PageRouteInfo<DynamicFormFillablePageRouteArgs> {
  DynamicFormFillablePageRoute({
    required FormSection incommingFormSection,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          DynamicFormFillablePageRoute.name,
          args: DynamicFormFillablePageRouteArgs(
            incommingFormSection: incommingFormSection,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DynamicFormFillablePageRoute';

  static const PageInfo<DynamicFormFillablePageRouteArgs> page =
      PageInfo<DynamicFormFillablePageRouteArgs>(name);
}

class DynamicFormFillablePageRouteArgs {
  const DynamicFormFillablePageRouteArgs({
    required this.incommingFormSection,
    this.key,
  });

  final FormSection incommingFormSection;

  final Key? key;

  @override
  String toString() {
    return 'DynamicFormFillablePageRouteArgs{incommingFormSection: $incommingFormSection, key: $key}';
  }
}

/// generated route for
/// [DynamicSectionFormStructurePage]
class DynamicSectionFormStructurePageRoute extends PageRouteInfo<void> {
  const DynamicSectionFormStructurePageRoute({List<PageRouteInfo>? children})
      : super(
          DynamicSectionFormStructurePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'DynamicSectionFormStructurePageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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

/// generated route for
/// [PrescriptionFormPage]
class PrescriptionFormPageRoute
    extends PageRouteInfo<PrescriptionFormPageRouteArgs> {
  PrescriptionFormPageRoute({
    Function? onCreated,
    List<PageRouteInfo>? children,
  }) : super(
          PrescriptionFormPageRoute.name,
          args: PrescriptionFormPageRouteArgs(onCreated: onCreated),
          initialChildren: children,
        );

  static const String name = 'PrescriptionFormPageRoute';

  static const PageInfo<PrescriptionFormPageRouteArgs> page =
      PageInfo<PrescriptionFormPageRouteArgs>(name);
}

class PrescriptionFormPageRouteArgs {
  const PrescriptionFormPageRouteArgs({this.onCreated});

  final Function? onCreated;

  @override
  String toString() {
    return 'PrescriptionFormPageRouteArgs{onCreated: $onCreated}';
  }
}
