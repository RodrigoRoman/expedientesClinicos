import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/medicine/dose/dose_components/dose_amount/dose_amount_form/dose_amount_form_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/dose/dose_components/dose_amount/dose_amount_watcher/dose_amount_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/dose/dose_core/dose_form/dose_form_bloc.dart';
import 'package:expedientes_clinicos/application/prescription/prescription_form/prescription_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/view_models/label_dose_times_view_model.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/dose_amount.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/label_drop_down.dart';
import 'package:expedientes_clinicos/presentation/prescription/dose/dose_amount/dose_amount_form.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:expedientes_clinicos/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownSearchDoseAmount extends StatefulWidget {
  //optional for the case of editing
  const DropdownSearchDoseAmount({
    super.key,
  });
  @override
  _DropdownSearchDoseAmountState createState() =>
      _DropdownSearchDoseAmountState();
}

class _DropdownSearchDoseAmountState extends State<DropdownSearchDoseAmount> {
  GlobalKey globalKey = GlobalKey();
  List<DoseAmount> doseAmountList = [];
  TextEditingController searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<DoseAmountWatcherBloc>()
          ..add(const DoseAmountWatcherEvent.watchAllStarted()),
        child: BlocConsumer<DoseAmountWatcherBloc, DoseAmountWatcherState>(
            listener: (context, state) {
          state.map(
              initial: (value) {
                doseAmountList = [];
              },
              loadInProgress: ((value) {
                print('LOAD from watcher');
                return context.read<StateRendererBloc>().add(
                    StateRendererEvent.popUpLoading(AppStrings.saving,
                        AppStrings.actionInProgressExplain, null, 300, 500));
              }),
              loadSuccess: ((value) {
                setState(() {
                  doseAmountList = value.doseAmounts.asList();
                });
              }),
              loadFailure: ((value) => context.read<StateRendererBloc>().add(
                  StateRendererEvent.popUpError(AppStrings.unableToReadError,
                      AppStrings.unableToReadErrorExplain, null, 300, 500))));
        }, builder: (context, state) {
          return DropdownSearchLabel(
            element: LabelDoseTimesViewModel.fromDoseAmount(context
                .read<PrescriptionFormBloc>()
                .state
                .prescription
                .doseAmount),
            searchFieldController: searchFieldController,
            onSelected: (LabelDoseTimesViewModel labelAmount) {
              context.read<PrescriptionFormBloc>().add(
                  PrescriptionFormEvent.onDoseAmountChanged(
                      labelAmount.doseAmount));
              setState(() {});
            },
            onSearchWithKey: (key) {
              context
                  .read<DoseAmountWatcherBloc>()
                  .add(DoseAmountWatcherEvent.watchFilteredStarted(key));
            },
            onSearchAll: () {
              context
                  .read<DoseAmountWatcherBloc>()
                  .add(const DoseAmountWatcherEvent.watchAllStarted());
            },
            listElements: doseAmountList
                .map((dayHoursDose) =>
                    LabelDoseTimesViewModel.fromDoseAmount(dayHoursDose))
                .toList(),
            hintText: AppStrings.doseAmount,
            newFunction: () {
              context
                  .read<StateRendererBloc>()
                  .add(StateRendererEvent.popUpForm(
                      'Crear ${AppStrings.pharmaceuticalForm}',
                      DoseAmountForm(
                        onCreated: (DoseAmount doseAmount) {
                          context.read<PrescriptionFormBloc>().add(
                              PrescriptionFormEvent.onDoseAmountChanged(
                                  doseAmount));
                          searchFieldController.text =
                              doseAmount.label.value.fold((l) => '', (r) => r);
                        },
                        doseAmount: DoseAmount.empty(),
                        onAmountChanged: (double newAmount) {
                          context.read<DoseAmountFormBloc>().add(
                              DoseAmountFormEvent.amountChanged(newAmount));
                        },
                        currentDoseAmount: context
                            .read<DoseAmountFormBloc>()
                            .state
                            .doseAmount
                            .amount
                            .value
                            .fold((l) => 0, (r) => r),
                        validLabel: () {
                          context
                              .read<DoseAmountFormBloc>()
                              .state
                              .doseAmount
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
                              .read<DoseAmountFormBloc>()
                              .add(DoseAmountFormEvent.labelChanged(label));
                        },
                        onSubmit: () {
                          context
                              .read<DoseAmountFormBloc>()
                              .add(DoseAmountFormEvent.saved());
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
