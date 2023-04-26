import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/medicine/dose/dose_components/day_hours_dose/day_hours_dose_form/day_hours_dose_form_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/dose/dose_components/day_hours_dose/day_hours_dose_watcher/day_hours_dose_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/dose/dose_core/dose_form/dose_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/view_models/label_dose_times_view_model.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/day_hours_doses.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/label_drop_down.dart';
import 'package:expedientes_clinicos/presentation/prescription/dose/day_hours_dose/day_hours_dose_form/day_hours_dose_form.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:expedientes_clinicos/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownSearchDayHoursDose extends StatefulWidget {
  //optional for the case of editing
  const DropdownSearchDayHoursDose({
    super.key,
  });
  @override
  _DropdownSearchDayHoursDoseState createState() =>
      _DropdownSearchDayHoursDoseState();
}

class _DropdownSearchDayHoursDoseState
    extends State<DropdownSearchDayHoursDose> {
  GlobalKey globalKey = GlobalKey();
  List<DayHoursDose> dayHoursDoseList = [];
  TextEditingController searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<DayHoursDoseWatcherBloc>()
          ..add(const DayHoursDoseWatcherEvent.watchAllStarted()),
        child: BlocConsumer<DayHoursDoseWatcherBloc, DayHoursDoseWatcherState>(
            listener: (context, state) {
          state.map(
              initial: (value) {
                dayHoursDoseList = [];
              },
              loadInProgress: ((value) => context.read<StateRendererBloc>().add(
                  StateRendererEvent.popUpLoading(AppStrings.saving,
                      AppStrings.actionInProgressExplain, null, 300, 500))),
              loadSuccess: ((value) {
                setState(() {
                  dayHoursDoseList = value.dayHourDose.asList();
                });
              }),
              loadFailure: ((value) => context.read<StateRendererBloc>().add(
                  StateRendererEvent.popUpError(AppStrings.unableToReadError,
                      AppStrings.unableToReadErrorExplain, null, 300, 500))));
        }, builder: (context, state) {
          return DropdownSearchLabel(
            element: LabelDoseTimesViewModel.fromDayHoursDose(
                context.read<DoseFormBloc>().state.dose.dayHoursDose),
            searchFieldController: searchFieldController,
            onSelected: (LabelDoseTimesViewModel labelDoseTimesViewModel) {
              print('day hours');
              print(labelDoseTimesViewModel.dayHoursDose);
              context.read<DoseFormBloc>().add(
                  DoseFormEvent.dayHoursDoseChanged(
                      labelDoseTimesViewModel.dayHoursDose));
              setState(() {});
            },
            onSearchWithKey: (key) {
              context
                  .read<DayHoursDoseWatcherBloc>()
                  .add(DayHoursDoseWatcherEvent.watchFilteredStarted(key));
            },
            onSearchAll: () {
              context
                  .read<DayHoursDoseWatcherBloc>()
                  .add(const DayHoursDoseWatcherEvent.watchAllStarted());
            },
            listElements: dayHoursDoseList
                .map((dayHoursDose) =>
                    LabelDoseTimesViewModel.fromDayHoursDose(dayHoursDose))
                .toList(),
            hintText: AppStrings.labelDayHours,
            newFunction: () {
              context
                  .read<StateRendererBloc>()
                  .add(StateRendererEvent.popUpForm(
                      'Crear ${AppStrings.labelDayHours}',
                      DayHoursDoseForm(
                        onCreated: (DayHoursDose dayHoursDose) {
                          context.read<DoseFormBloc>().add(
                              DoseFormEvent.dayHoursDoseChanged(dayHoursDose));
                          searchFieldController.text = dayHoursDose.label.value
                              .fold((l) => '', (r) => r);
                        },
                        dayHoursDose: DayHoursDose.empty(),
                        validLabel: () {
                          context
                              .read<DayHoursDoseFormBloc>()
                              .state
                              .dayHoursDose
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
                              .read<DayHoursDoseFormBloc>()
                              .add(DayHoursDoseFormEvent.labelChanged(label));
                        },
                        onSubmit: () {
                          context
                              .read<DayHoursDoseFormBloc>()
                              .add(DayHoursDoseFormEvent.saved());
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
