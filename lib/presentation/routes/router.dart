import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/presentation/common/state_renderer/full_screen_state.dart';
import 'package:expedientes_clinicos/presentation/patient_visit/patient_visit_page.dart';
import 'package:expedientes_clinicos/presentation/medicine/branded_medicine/branded_medicine_form/branded_medicine_form_page.dart';
import 'package:expedientes_clinicos/presentation/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_page.dart';
import 'package:expedientes_clinicos/presentation/splash/splash_page.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route,Screen')
class AppRouter extends _$AppRouter {
  List<AutoRoute> get routes => [
        AutoRoute(page: PatientVisitPageRoute.page, initial: true),
        AutoRoute(page: GenericMedicineFormPageRoute.page),
        AutoRoute(page: BrandedMedicineFormPageRoute.page),
        AutoRoute(page: FullScreenStatePageRoute.page),
      ];
}
