import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/administration_route_form_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/measure_unit_form_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/pharmaceutical_form_form_bloc.dart';
import 'package:expedientes_clinicos/application/categories/category_form/category_form_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/medicine_form/medicine_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/routes/router.gr.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'presentation/common/state_renderer/app_state_renderer.dart';
import 'presentation/common/widget_elements/popup_dialog.dart';
import 'presentation/resources/const_values.dart';
import 'presentation/resources/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureInjection(Environment.prod);
  await Firebase.initializeApp();
  runApp(AppRoot());
}

class AppRoot extends StatelessWidget {
  AppRoot({Key? key}) : super(key: key);
  final appRouter = getIt<AppRouter>();
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<StateRendererBloc>(
            create: (context) => getIt<StateRendererBloc>(),
          ),
          BlocProvider<CategoryFormBloc>(
              create: (context) => getIt<CategoryFormBloc>()),
          BlocProvider<MeasureUnitFormBloc>(
              create: (context) => getIt<MeasureUnitFormBloc>()),
          BlocProvider<AdministrationRouteFormBloc>(
              create: (context) => getIt<AdministrationRouteFormBloc>()),
          BlocProvider<PharmaceuticalFormFormBloc>(
              create: (context) => getIt<PharmaceuticalFormFormBloc>()),
          BlocProvider<MedicineFormBloc>(
              create: (context) => getIt<MedicineFormBloc>())
        ],
        child: BlocConsumer<StateRendererBloc, StateRendererState>(
            buildWhen: (previous, current) =>
                previous.stateRender != current.stateRender,
            listener: (context, state) async {
              var ctx = appRouter.navigatorKey.currentContext;

              if (popStateRender.contains(state.stateRender)) {
                //The current context of the navigator screen present
                if (ctx != null) {
                  //Check if there is a dialog before showing another one
                  if (appRouter.canPop() & state.popPrevioues == true) {
                    appRouter.popUntil((route) => route.isFirst);
                  }
                  await showPopUp(ctx, state.stateRender, () async {
                    await appRouter.pop();
                  }, state.message, state.body, title: state.title);
                } else {
                  appRouter.push(FullScreenState(
                      content: StateRenderer(
                    stateRendererType:
                        StateRendererType.FULL_SCREEN_ERROR_STATE,
                    message: 'Error Inesperado!',
                    retryActionFunction: state.retryAction,
                  )));
                }
              } else {
                appRouter.push(FullScreenState(
                    content: StateRenderer(
                  stateRendererType: state.stateRender,
                  message: state.message,
                  retryActionFunction: state.retryAction,
                )));
              }
            },
            builder: (context, state) {
              return MaterialApp.router(
                routerDelegate: appRouter.delegate(),
                routeInformationParser: appRouter.defaultRouteParser(),
                theme: CustomTheme.lightTheme,
              );
            }));
  }
}
