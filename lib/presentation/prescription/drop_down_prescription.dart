import 'package:expedientes_clinicos/application/prescription/prescription_watcher/prescription_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/view_models/drop_down_expanded_view_model.dart';
import 'package:expedientes_clinicos/domain/prescription/prescription.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/drop_down_expanded_head.dart';
import 'package:expedientes_clinicos/presentation/prescription/prescription_form_page.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownSearchPrescription extends StatefulWidget {
  bool requestedSubmition;
  //optional for the case of editing
  DropdownSearchPrescription({
    required this.onSelected,
    this.requestedSubmition = false,
    super.key,
  });
  final Function onSelected;

  @override
  _DropdownSearchPrescription createState() => _DropdownSearchPrescription();
}

class _DropdownSearchPrescription extends State<DropdownSearchPrescription> {
  GlobalKey globalKey = GlobalKey();
  List<Prescription> prescriptionList = [];
  TextEditingController searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<PrescriptionWatcherBloc>()
          ..add(const PrescriptionWatcherEvent.watchAllStarted()),
        child: BlocConsumer<PrescriptionWatcherBloc, PrescriptionWatcherState>(
            listener: (context, state) {
          state.map(
              initial: (value) {
                prescriptionList = [];
              },
              loadInProgress: ((value) => context
                  .read<StateRendererBloc>()
                  .add(const StateRendererEvent.popUpLoading(
                    title: AppStrings.saving,
                    message: AppStrings.actionInProgressExplain,
                  ))),
              loadSuccess: ((value) {
                print("cargado");
                print(value.prescriptions.asList());
                setState(() {
                  prescriptionList = value.prescriptions.asList();
                });
              }),
              loadFailure: ((value) => context.read<StateRendererBloc>().add(
                  const StateRendererEvent.popUpError(
                      title: AppStrings.unableToReadError,
                      message: AppStrings.unableToReadErrorExplain))));
        }, builder: (context, state) {
          return DropDownExpandedSearchHead(
            element: DropdownExpandedItemViewModel.empty(),
            searchFieldController: searchFieldController,
            onSelected: (DropdownExpandedItemViewModel itemExpandedViewModel) {
              widget.onSelected(itemExpandedViewModel);
              searchFieldController.text = itemExpandedViewModel.title.value
                  .fold((l) => AppStrings.isEmpty, (r) => r);
            },
            valid: true,
            onSearchWithKey: (key) {
              context
                  .read<PrescriptionWatcherBloc>()
                  .add(PrescriptionWatcherEvent.watchFilteredStarted(key));
            },
            onSearchAll: () {
              context
                  .read<PrescriptionWatcherBloc>()
                  .add(PrescriptionWatcherEvent.watchAllStarted());
            },
            listElements: prescriptionList
                .map((prescription) =>
                    DropdownExpandedItemViewModel.fromPrescription(
                        prescription))
                .toList(),
            hintText: AppStrings.medicinePrescription,
            newFunction: () {
              context
                  .read<StateRendererBloc>()
                  .add(StateRendererEvent.fullScreenForm(
                    title: AppStrings.createGenericMedicine,
                    bodyWidget: PrescriptionFormPage(),
                    message: AppStrings.empty,
                  ));
            },
          );
        }));
  }
}
