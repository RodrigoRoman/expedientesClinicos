import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/indication/indication_watcher/indication_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/indication/indication_watcher/medicine_indication_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/prescription/prescription_form/prescription_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication.dart';
import 'package:expedientes_clinicos/domain/core/view_models/title_subtitle_img_view_model.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/name_subtitle_drop_down/drop_down_name_subtitle.dart';
import 'package:expedientes_clinicos/presentation/prescription/indications/indication_form.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

class DropdownSearchIndication extends StatefulWidget {
  //optional for the case of editing
  DropdownSearchIndication({
    required this.onSelected,
    super.key,
  });
  Function onSelected;
  @override
  _DropdownSearchPharmaceuticalFormState createState() =>
      _DropdownSearchPharmaceuticalFormState();
}

class _DropdownSearchPharmaceuticalFormState
    extends State<DropdownSearchIndication> {
  GlobalKey globalKey = GlobalKey();
  List<Indication> indicationList = [];
  TextEditingController searchFieldController = TextEditingController();

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
          List<Indication> selectedIndications = context
              .read<PrescriptionFormBloc>()
              .state
              .prescription
              .indications
              .value
              .fold((l) => [], (r) => r.toMutableList().asList());
          return DropdownSearchTitleSubtitleImg(
            element:
                TitleSubtitleImageViewModel.fromIndication(Indication.empty()),
            searchFieldController: searchFieldController,
            onSelected: (TitleSubtitleImageViewModel medicine) {
              if (selectedIndications.contains(medicine.indication)) {
                searchFieldController.text = '';
              } else {
                selectedIndications.add(medicine.indication);
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

              // widget.onSelected(medicine.originBrandedMedicine);
              // setState(() {});
            },
            onSearchWithKey: (key) {
              print('search key');
              print(key);
              context
                  .read<MedicineIndicationWatcherBloc>()
                  .add(IndicationWatcherEvent.watchFilteredStarted(key));
            },
            onSearchAll: () {
              context
                  .read<MedicineIndicationWatcherBloc>()
                  .add(const IndicationWatcherEvent.watchAllStarted());
            },
            listElements: indicationList
                .map((indication) =>
                    TitleSubtitleImageViewModel.fromIndication(indication))
                .toList(),
            hintText: AppStrings.selectIndication,
            newFunction: () {
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
