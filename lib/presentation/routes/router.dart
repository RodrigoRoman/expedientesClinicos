import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/presentation/splash/splash_page.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <MaterialRoute>[
  MaterialRoute(page: SplashPage),
])
class $AppRouter {}
