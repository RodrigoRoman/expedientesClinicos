import 'package:expedientes_clinicos/presentation/routes/router.dart';
import 'package:injectable/injectable.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  AppRouter get router => AppRouter();
}
