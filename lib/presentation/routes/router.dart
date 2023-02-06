import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/main.dart';
import 'package:expedientes_clinicos/presentation/common/state_renderer/full_screen_state.dart';
import 'package:expedientes_clinicos/presentation/medicine/medicine_form/medicine_form_page.dart';
import 'package:expedientes_clinicos/presentation/splash/splash_page.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <MaterialRoute>[
  MaterialRoute(page: SplashPage, initial: true),
  MaterialRoute(page: MedicineFormPage),
  MaterialRoute(page: FullScreenState),
])
class $AppRouter {}
