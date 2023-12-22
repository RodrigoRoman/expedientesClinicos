import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/medicine/dose/dose_core/dose_form/dose_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/application/time_interval/time_interval_form/duration_interval_form_bloc.dart';
import 'package:expedientes_clinicos/application/time_interval/time_interval_form/time_interval_form_bloc.dart';
import 'package:expedientes_clinicos/application/time_interval/time_interval_watcher/duration_interval_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/time_interval/time_interval_watcher/time_interval_watcher_bloc.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/time_interval.dart';
import 'package:expedientes_clinicos/domain/core/view_models/drop_down_view_model.dart';
import 'package:expedientes_clinicos/domain/core/view_models/label_dose_times_view_model.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/dose_amount.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/drop_down_head.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/label_drop_down.dart';
import 'package:expedientes_clinicos/presentation/prescription/dose/dose_amount/dose_amount_form.dart';
import 'package:expedientes_clinicos/presentation/prescription/dose/dose_duration/dose_duration_form.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:expedientes_clinicos/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownSearchDoseDuration extends StatefulWidget {
  //optional for the case of editing
  const DropdownSearchDoseDuration({
    super.key,
  });
  @override
  _DropdownSearchDoseDurationState createState() =>
      _DropdownSearchDoseDurationState();
}

class _DropdownSearchDoseDurationState
    extends State<DropdownSearchDoseDuration> {
  GlobalKey globalKey = GlobalKey();
  List<TimeInterval> doseDuarationsList = [];
  TextEditingController searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<DurationIntervalWatcherBloc>()
          ..add(const TimeIntervalWatcherEvent.watchAllStarted()),
        child:
            BlocConsumer<DurationIntervalWatcherBloc, TimeIntervalWatcherState>(
                listener: (context, state) {
          state.map(
              initial: (value) {
                doseDuarationsList = [];
              },
              loadInProgress: ((value) => context.read<StateRendererBloc>().add(
                  const StateRendererEvent.popUpLoading(
                      title: AppStrings.saving,
                      message: AppStrings.actionInProgressExplain))),
              loadSuccess: ((value) {
                setState(() {
                  doseDuarationsList = value.timeIntervals.asList();
                });
              }),
              loadFailure: ((value) => context.read<StateRendererBloc>().add(
                  const StateRendererEvent.popUpError(
                      title: AppStrings.unableToReadError,
                      message: AppStrings.unableToReadErrorExplain))));
        }, builder: (context, state) {
          return DropDownSearchHead(
            element: DropdownItemViewModel.fromTimeInterval(
                context.read<DoseFormBloc>().state.dose.duration),
            searchFieldController: searchFieldController,
            onSelected: (DropdownItemViewModel dropdownItemViewModel) {
              context.read<DoseFormBloc>().add(DoseFormEvent.durationChanged(
                  dropdownItemViewModel.timeInterval!));
              setState(() {});
            },
            onSearchWithKey: (key) {
              context
                  .read<DurationIntervalWatcherBloc>()
                  .add(TimeIntervalWatcherEvent.watchFilteredStarted(key));
            },
            onSearchAll: () {
              context
                  .read<DurationIntervalWatcherBloc>()
                  .add(const TimeIntervalWatcherEvent.watchAllStarted());
            },
            listElements: doseDuarationsList
                .map((dayHoursDose) =>
                    DropdownItemViewModel.fromTimeInterval(dayHoursDose))
                .toList(),
            hintText: AppStrings.labelDurationAbbr,
            newFunction: () {
              context
                  .read<StateRendererBloc>()
                  .add(StateRendererEvent.popUpForm(
                      title: 'Crear ${AppStrings.labelDuration}',
                      bodyWidget: DoseDurationForm(
                        onCreated: (TimeInterval duration) {
                          context
                              .read<DoseFormBloc>()
                              .add(DoseFormEvent.durationChanged(duration));
                          searchFieldController.text =
                              duration.label.value.fold((l) => '', (r) => r);
                        },
                        doseAmount: DoseAmount.empty(),
                        onDaysChanged: (int newDays) {
                          context.read<DurationIntervalFormBloc>().add(
                              TimeIntervalFormEvent.onDaysChanged(newDays));
                        },
                        onMonthsChanged: (int newMonths) {
                          context.read<DurationIntervalFormBloc>().add(
                              TimeIntervalFormEvent.onMonthsChanged(newMonths));
                        },
                        onWeeksChanged: (int newWeeks) {
                          context.read<DurationIntervalFormBloc>().add(
                              TimeIntervalFormEvent.onWeeksChanged(newWeeks));
                        },
                        onAmountChanged: (int newAmount) {
                          context.read<DurationIntervalFormBloc>().add(
                              TimeIntervalFormEvent.onIntervalDurationChanged(
                                  Duration(days: newAmount)));
                        },
                        durationAmountEmpty: context
                                .read<DurationIntervalFormBloc>()
                                .state
                                .timeInterval !=
                            TimeInterval.empty(),
                        validLabel: () {
                          context
                              .read<DurationIntervalFormBloc>()
                              .state
                              .timeInterval
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
                          context.read<DurationIntervalFormBloc>().add(
                              TimeIntervalFormEvent.onIntervalNameChanged(
                                  label));
                        },
                        onSubmit: () {
                          context
                              .read<DurationIntervalFormBloc>()
                              .add(const TimeIntervalFormEvent.saved());
                        },
                      ),
                      until: FullScreenStatePageRoute.name));
            },
          );
        }));
  }
}
