import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/medicine/branded_medicine/branded_medicine_form/branded_medicine_form_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_watcher/generic_medicine_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/view_models/drop_down_view_model.dart';
import 'package:expedientes_clinicos/domain/core/view_models/title_subtitle_img_view_model.dart';
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/generic_medicine.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/drop_down_head.dart';
import 'package:expedientes_clinicos/presentation/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_page.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownSearchGenericMedicine extends StatefulWidget {
  bool requestedSubmition;
  //optional for the case of editing
  DropdownSearchGenericMedicine({
    required this.onSelected,
    this.requestedSubmition = false,
    super.key,
  });
  final Function onSelected;

  @override
  _DropdownSearchGenericMedicine createState() =>
      _DropdownSearchGenericMedicine();
}

class _DropdownSearchGenericMedicine
    extends State<DropdownSearchGenericMedicine> {
  GlobalKey globalKey = GlobalKey();
  List<GenericMedicine> genericMedicineList = [];
  TextEditingController searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<GenericMedicineWatcherBloc>()
          ..add(const GenericMedicineWatcherEvent.watchAllStarted()),
        child: BlocConsumer<GenericMedicineWatcherBloc,
            GenericMedicineWatcherState>(listener: (context, state) {
          state.map(
              initial: (value) {
                genericMedicineList = [];
              },
              loadInProgress: ((value) => context
                  .read<StateRendererBloc>()
                  .add(const StateRendererEvent.popUpLoading(
                    title: AppStrings.saving,
                    message: AppStrings.actionInProgressExplain,
                  ))),
              loadSuccess: ((value) {
                setState(() {
                  genericMedicineList = value.medicines.asList();
                });
              }),
              loadFailure: ((value) => context.read<StateRendererBloc>().add(
                  const StateRendererEvent.popUpError(
                      title: AppStrings.unableToReadError,
                      message: AppStrings.unableToReadErrorExplain))));
        }, builder: (context, state) {
          return DropDownSearchHead(
            element: DropdownItemViewModel.fromGenericMedicine(context
                .read<BrandedMedicineFormBloc>()
                .state
                .medicine
                .genericMedicine),
            searchFieldController: searchFieldController,
            onSelected: (DropdownItemViewModel itemViewModel) {
              widget.onSelected(itemViewModel.originGenericMedicine);
              searchFieldController.text = itemViewModel.title.value
                  .fold((l) => AppStrings.isEmpty, (r) => r);
            },
            valid: widget.requestedSubmition &&
                (context
                    .read<BrandedMedicineFormBloc>()
                    .state
                    .medicine
                    .genericMedicine
                    .isEmpty),
            onSearchWithKey: (key) {
              context
                  .read<GenericMedicineWatcherBloc>()
                  .add(GenericMedicineWatcherEvent.watchFilteredStarted(key));
            },
            onSearchAll: () {
              context
                  .read<GenericMedicineWatcherBloc>()
                  .add(GenericMedicineWatcherEvent.watchAllStarted());
            },
            listElements: genericMedicineList
                .map((genericMedicine) =>
                    DropdownItemViewModel.fromGenericMedicine(genericMedicine))
                .toList(),
            hintText: AppStrings.selectGenericMedicine,
            newFunction: () {
              context
                  .read<StateRendererBloc>()
                  .add(StateRendererEvent.fullScreenForm(
                    title: AppStrings.createGenericMedicine,
                    bodyWidget: GenericMedicineFormPage(
                        onCreated: (GenericMedicine medicine) {
                      widget.onSelected(medicine);
                      searchFieldController.text =
                          medicine.genericName.value.fold((l) => '', (r) => r);
                    }),
                    message: AppStrings.empty,
                  ));
            },
          );
        }));
  }
}
