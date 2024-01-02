import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/indication/indication_watcher/indication_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/indication/indication_watcher/medicine_indication_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/prescription/prescription_form/prescription_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication.dart';
import 'package:expedientes_clinicos/domain/core/view_models/drop_down_view_model.dart';
import 'package:expedientes_clinicos/domain/core/view_models/title_subtitle_img_view_model.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/drop_down_head.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/name_subtitle_drop_down/drop_down_name_subtitle.dart';
import 'package:expedientes_clinicos/presentation/prescription/indications/indication_form.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

//DropSearchIndication is an agnostic widget that can be used in many scenarios
//That is why most of the functions come in as parameters
class DropdownSearchPrescriptionIndication extends StatefulWidget {
  //optional for the case of editing
  DropdownSearchPrescriptionIndication({
    // required this.onSelected,
    super.key,
  });
  // Function onSelected;
  @override
  _DropdownSearchPrescriptionIndication createState() =>
      _DropdownSearchPrescriptionIndication();
}

class _DropdownSearchPrescriptionIndication
    extends State<DropdownSearchPrescriptionIndication> {
  GlobalKey globalKey = GlobalKey();
  List<Indication> indicationList = [];
  TextEditingController searchFieldController = TextEditingController();
  List<Indication> selectedIndications = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<MedicineIndicationWatcherBloc>()
          ..add(const IndicationWatcherEvent.watchAllStarted()),
        child:
            BlocConsumer<MedicineIndicationWatcherBloc, IndicationWatcherState>(
                listener: (context, state) {
          state.map(
              initial: (value) {
                indicationList = [];
              },
              loadInProgress: ((value) => context.read<StateRendererBloc>().add(
                  const StateRendererEvent.popUpLoading(
                      title: AppStrings.saving,
                      message: AppStrings.actionInProgressExplain))),
              loadSuccess: ((value) {
                setState(() {
                  indicationList = value.indication.asList();
                });
              }),
              loadFailure: ((value) => context.read<StateRendererBloc>().add(
                  const StateRendererEvent.popUpError(
                      title: AppStrings.unableToReadError,
                      message: AppStrings.unableToReadErrorExplain))));
        }, builder: (context, state) {
          selectedIndications = context
              .read<PrescriptionFormBloc>()
              .state
              .prescription
              .indications
              .value
              .fold((l) => [], (r) => r.toMutableList().asList());
          return DropDownSearchHead(
            element: DropdownItemViewModel.fromIndication(Indication.empty()),
            searchFieldController: searchFieldController,
            onSelected: (DropdownItemViewModel dropdownItemViewModel) {
              if (selectedIndications
                  .contains(dropdownItemViewModel.indication)) {
                searchFieldController.text = '';
              } else {
                selectedIndications.add(dropdownItemViewModel.indication!);
                selectedIndications.sort((a, b) => a
                    .indicationCategory.name.value
                    .fold((l) => '', (r) => r)
                    .compareTo(b.indicationCategory.name.value
                        .fold((l) => '', (r) => r)));

                context.read<PrescriptionFormBloc>().add(
                    PrescriptionFormEvent.onIndicationsChanged(
                        selectedIndications));
                context
                    .read<MedicineIndicationWatcherBloc>()
                    .add(const IndicationWatcherEvent.watchAllStarted());
              }
              searchFieldController.text = '';

              // widget.onSelected(medicine.indication);
              setState(() {});
            },
            onSearchWithKey: (key) {
              // widget.onSearchWithKey(key);
              context
                  .read<MedicineIndicationWatcherBloc>()
                  .add(IndicationWatcherEvent.watchFilteredStarted(key));
            },
            onSearchAll: () {
              // widget.onSearchAll();
              context
                  .read<MedicineIndicationWatcherBloc>()
                  .add(const IndicationWatcherEvent.watchAllStarted());
            },
            listElements: indicationList
                .map((indication) =>
                    DropdownItemViewModel.fromIndication(indication))
                .toList(),
            hintText: AppStrings.selectIndication,
            newFunction: () {
              // widget.onCreate();
              context
                  .read<StateRendererBloc>()
                  .add(StateRendererEvent.fullScreenForm(
                      title: AppStrings.createBrandedMedicine,
                      bodyWidget: IndicationForm(
                        indication: Indication.empty(),
                        onCreated: (newIndication) {
                          if (selectedIndications.contains(newIndication)) {
                            searchFieldController.text = '';
                          } else {
                            selectedIndications.add(newIndication);
                            context.read<PrescriptionFormBloc>().add(
                                PrescriptionFormEvent.onIndicationsChanged(
                                    selectedIndications));
                            searchFieldController.text = '';
                          }
                        },
                      ),
                      message: AppStrings.empty));
            },
          );
        }));
  }
}
