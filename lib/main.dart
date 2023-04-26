import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/administration_route_form_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/measure_unit_form_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/pharmaceutical_form_form_bloc.dart';
import 'package:expedientes_clinicos/application/categories/category_form/medicine_category_form_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/branded_medicine/branded_medicine_form/branded_medicine_form_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/dose/dose_components/day_hours_dose/day_hours_dose_form/day_hours_dose_form_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/dose/dose_components/dose_amount/dose_amount_form/dose_amount_form_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/dose/dose_components/week_days_dose/week_days_dose_form/week_days_dose_form_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/dose/dose_core/dose_form/dose_form_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_bloc.dart';
import 'package:expedientes_clinicos/application/prescription/prescription_form/prescription_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/application/time_interval/time_interval_form/duration_interval_form_bloc.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
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
          BlocProvider<MedicineCategoryFormBloc>(
              create: (context) => getIt<MedicineCategoryFormBloc>()),
          BlocProvider<MeasureUnitFormBloc>(
              create: (context) => getIt<MeasureUnitFormBloc>()),
          BlocProvider<AdministrationRouteFormBloc>(
              create: (context) => getIt<AdministrationRouteFormBloc>()),
          BlocProvider<PharmaceuticalFormFormBloc>(
              create: (context) => getIt<PharmaceuticalFormFormBloc>()),
          BlocProvider<GenericMedicineFormBloc>(
              create: (context) => getIt<GenericMedicineFormBloc>()),
          BlocProvider<BrandedMedicineFormBloc>(
              create: (context) => getIt<BrandedMedicineFormBloc>()),
          BlocProvider<PrescriptionFormBloc>(
              create: (context) => getIt<PrescriptionFormBloc>()),
          BlocProvider<DayHoursDoseFormBloc>(
              create: (context) => getIt<DayHoursDoseFormBloc>()),
          BlocProvider<DoseAmountFormBloc>(
              create: (context) => getIt<DoseAmountFormBloc>()),
          BlocProvider<DurationIntervalFormBloc>(
              create: (context) => getIt<DurationIntervalFormBloc>()),
          BlocProvider<WeekDaysDoseFormBloc>(
              create: (context) => getIt<WeekDaysDoseFormBloc>()),
          BlocProvider<DoseFormBloc>(
              create: (context) => getIt<DoseFormBloc>()),
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
                  if (appRouter.canPop()) {
                    if (state.until != null) {
                      if (state.until != AppStrings.popUp) {
                        appRouter.popUntil(
                            (route) => route.settings.name == state.until);
                      }
                    } else {
                      appRouter.popUntilRoot();
                    }
                  }
                  await showPopUp(ctx, state.stateRender, () {
                    appRouter.pop();
                  }, state.message, state.width, state.height, state.body,
                      title: state.title);
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
                  bodyWidget: state.body,
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
