import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/medicine/branded_medicine/branded_medicine_form/branded_medicine_form_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_watcher/generic_medicine_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/view_models/title_subtitle_image_view_model.dart';
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/generic_medicine.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/name_subtitle_drop_down/drop_down_name_subtitle.dart';
import 'package:expedientes_clinicos/presentation/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_page.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

class DropdownSearchGenericMedicineForm extends StatefulWidget {
  //optional for the case of editing
  const DropdownSearchGenericMedicineForm({
    required this.onSelected,
    super.key,
  });
  final Function onSelected;

  @override
  _DropdownSearchGenericMedicineForm createState() =>
      _DropdownSearchGenericMedicineForm();
}

class _DropdownSearchGenericMedicineForm
    extends State<DropdownSearchGenericMedicineForm> {
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
              loadInProgress: ((value) => context.read<StateRendererBloc>().add(
                  StateRendererEvent.popUpLoading(AppStrings.saving,
                      AppStrings.actionInProgressExplain, null, 300, 500))),
              loadSuccess: ((value) {
                setState(() {
                  genericMedicineList = value.medicines.asList();
                });
              }),
              loadFailure: ((value) => context.read<StateRendererBloc>().add(
                  StateRendererEvent.popUpError(AppStrings.unableToReadError,
                      AppStrings.unableToReadErrorExplain, null, 300, 500))));
        }, builder: (context, state) {
          return DropdownSearchTitleSubtitleImg(
            element: TitleSubtitleImageViewModel.fromGenericMedicine(context
                .read<BrandedMedicineFormBloc>()
                .state
                .medicine
                .genericMedicine),
            searchFieldController: searchFieldController,
            onSelected: (TitleSubtitleImageViewModel medicine) {
              widget.onSelected(medicine.originGenericMedicine);
              setState(() {});
            },
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
                    TitleSubtitleImageViewModel.fromGenericMedicine(
                        genericMedicine))
                .toList(),
            hintText: AppStrings.selectGenericMedicine,
            newFunction: () {
              context.read<StateRendererBloc>().add(
                      StateRendererEvent.popUpForm(
                          ' ${AppStrings.createGenericMedicine}',
                          GenericMedicineFormPage(
                              onCreated: (GenericMedicine medicine) {
                    widget.onSelected(medicine);
                    searchFieldController.text =
                        medicine.genericName.value.fold((l) => '', (r) => r);
                    // setState(() {});
                  }), 600, 600, null));
            },
          );
        }));
  }
}
