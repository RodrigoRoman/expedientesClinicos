import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/medicine/dose/dose_components/day_hours_dose/day_hours_dose_form/day_hours_dose_form_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/dose/dose_components/day_hours_dose/day_hours_dose_watcher/day_hours_dose_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/dose/dose_components/week_days_dose/week_days_dose_form/week_days_dose_form_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/dose/dose_components/week_days_dose/week_days_dose_watcher/week_days_dose_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/dose/dose_core/dose_form/dose_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/view_models/label_dose_times_view_model.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/week_days_dose.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/label_drop_down.dart';
import 'package:expedientes_clinicos/presentation/prescription/dose/week_days_dose/week_days_dose_form/week_days_form.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:expedientes_clinicos/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownSearchWeekDays extends StatefulWidget {
  //optional for the case of editing
  const DropdownSearchWeekDays({
    super.key,
  });
  @override
  _DropdownSearchWeekDaysState createState() => _DropdownSearchWeekDaysState();
}

class _DropdownSearchWeekDaysState extends State<DropdownSearchWeekDays> {
  GlobalKey globalKey = GlobalKey();
  List<WeekDaysDose> weekDaysList = [];
  TextEditingController searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<WeekDaysDoseWatcherBloc>()
          ..add(WeekDaysDoseWatcherEvent.watchAllStarted()),
        child: BlocConsumer<WeekDaysDoseWatcherBloc, WeekDaysDoseWatcherState>(
            listener: (context, state) {
          state.map(
              initial: (value) {
                weekDaysList = [];
              },
              loadInProgress: ((value) => context.read<StateRendererBloc>().add(
                  StateRendererEvent.popUpLoading(
                      AppStrings.saving,
                      AppStrings.actionInProgressExplain,
                      AppStrings.popUp,
                      300,
                      500))),
              loadSuccess: ((value) {
                setState(() {
                  weekDaysList = value.weekDaysDose.asList();
                });
              }),
              loadFailure: ((value) => context.read<StateRendererBloc>().add(
                  StateRendererEvent.popUpError(AppStrings.unableToReadError,
                      AppStrings.unableToReadErrorExplain, null, 300, 500))));
        }, builder: (context, state) {
          return DropdownSearchLabel(
            element: LabelDoseTimesViewModel.fromWeekDays(
                context.read<DoseFormBloc>().state.dose.weekDays),
            searchFieldController: searchFieldController,
            onSelected: (LabelDoseTimesViewModel labelDoseTimesViewModel) {
              print('dose amount');
              print(labelDoseTimesViewModel.weekDaysDose);
              context.read<DoseFormBloc>().add(DoseFormEvent.weekDaysChanged(
                  labelDoseTimesViewModel.weekDaysDose));
              setState(() {});
            },
            onSearchWithKey: (key) {
              context
                  .read<WeekDaysDoseWatcherBloc>()
                  .add(WeekDaysDoseWatcherEvent.watchFilteredStarted(key));
            },
            onSearchAll: () {
              context
                  .read<WeekDaysDoseWatcherBloc>()
                  .add(const WeekDaysDoseWatcherEvent.watchAllStarted());
            },
            listElements: weekDaysList
                .map((weekDays) =>
                    LabelDoseTimesViewModel.fromWeekDays(weekDays))
                .toList(),
            hintText: AppStrings.labelWeekDays,
            newFunction: () {
              context
                  .read<StateRendererBloc>()
                  .add(StateRendererEvent.popUpForm(
                      'Crear ${AppStrings.labelDayHours}',
                      WeekDaysDoseForm(
                        onCreated: (WeekDaysDose weekDaysDose) {
                          context
                              .read<DoseFormBloc>()
                              .add(DoseFormEvent.weekDaysChanged(weekDaysDose));
                          searchFieldController.text = weekDaysDose.label.value
                              .fold((l) => '', (r) => r);
                        },
                        weekDaysDose: WeekDaysDose.empty(),
                        validLabel: () {
                          context
                              .read<WeekDaysDoseFormBloc>()
                              .state
                              .weekDays
                              .label
                              .value
                              .fold(
                                  (f) => f.maybeMap(
                                      exceedingLength: (value) =>
                                          AppStrings.tooLong,
                                      empty: (value) => AppStrings.isEmpty,
                                      orElse: () => AppStrings.empty),
                                  (_) => null);
                        },
                        onNameChanged: (label) {
                          context
                              .read<WeekDaysDoseFormBloc>()
                              .add(WeekDaysDoseFormEvent.labelChanged(label));
                        },
                        onSubmit: () {
                          context
                              .read<WeekDaysDoseFormBloc>()
                              .add(const WeekDaysDoseFormEvent.saved());
                        },
                      ),
                      500,
                      400,
                      FullScreenState.name));
            },
          );
        }));
  }
}
