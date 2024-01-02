import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/medicine/dose/dose_core/dose_form/dose_form_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/dose/dose_core/dose_watcher/dose_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/prescription/prescription_form/prescription_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/view_models/drop_down_view_model.dart';
import 'package:expedientes_clinicos/domain/core/view_models/label_dose_times_view_model.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/drop_down_head.dart';
import 'package:expedientes_clinicos/presentation/prescription/dose/dose_form_page.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownSearchDose extends StatefulWidget {
  bool valid;
  //optional for the case of editing
  DropdownSearchDose({
    super.key,
    this.valid = true,
  });
  @override
  _DropdownSearchDoseState createState() => _DropdownSearchDoseState();
}

class _DropdownSearchDoseState extends State<DropdownSearchDose> {
  GlobalKey globalKey = GlobalKey();
  List<Dose> doseList = [];
  TextEditingController searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<DoseWatcherBloc>()
          ..add(const DoseWatcherEvent.watchAllStarted()),
        child: BlocConsumer<DoseWatcherBloc, DoseWatcherState>(
            listener: (context, state) {
          state.map(
              initial: (value) {
                doseList = [];
              },
              loadInProgress: ((value) => context
                  .read<StateRendererBloc>()
                  .add(const StateRendererEvent.popUpLoading(
                    title: AppStrings.saving,
                    message: AppStrings.actionInProgressExplain,
                  ))),
              loadSuccess: ((value) {
                setState(() {
                  doseList = value.dose.asList();
                });
              }),
              loadFailure: ((value) => context.read<StateRendererBloc>().add(
                  const StateRendererEvent.popUpError(
                      title: AppStrings.unableToReadError,
                      message: AppStrings.unableToReadErrorExplain))));
        }, builder: (context, state) {
          return DropDownSearchHead(
            valid: widget.valid,
            element: DropdownItemViewModel.fromDose(
                context.read<PrescriptionFormBloc>().state.prescription.dose),
            searchFieldController: searchFieldController,
            onSelected: (DropdownItemViewModel dropdownItemViewModel) {
              context.read<PrescriptionFormBloc>().add(
                  PrescriptionFormEvent.onDoseChanged(
                      dropdownItemViewModel.dose!));
              setState(() {});
            },
            onSearchWithKey: (key) {
              context
                  .read<DoseWatcherBloc>()
                  .add(DoseWatcherEvent.watchFilteredStarted(key));
            },
            onSearchAll: () {
              context
                  .read<DoseWatcherBloc>()
                  .add(const DoseWatcherEvent.watchAllStarted());
            },
            listElements: doseList
                .map((dose) => DropdownItemViewModel.fromDose(dose))
                .toList(),
            hintText: AppStrings.doseSchedule,
            newFunction: () {
              context
                  .read<StateRendererBloc>()
                  .add(StateRendererEvent.fullScreenForm(
                    title: 'Crear ${AppStrings.pharmaceuticalForm}',
                    bodyWidget: DoseTimeForm(
                      onCreated: (Dose dose) {
                        context
                            .read<PrescriptionFormBloc>()
                            .add(PrescriptionFormEvent.onDoseChanged(dose));
                        searchFieldController.text =
                            dose.label.value.fold((l) => '', (r) => r);
                      },
                      dose: Dose.empty(),
                      onSubmit: () {
                        context
                            .read<DoseFormBloc>()
                            .add(const DoseFormEvent.saved());
                      },
                    ),
                    message: AppStrings.empty,
                  ));
            },
          );
        }));
  }
}
