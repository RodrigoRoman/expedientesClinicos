import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/medicine/branded_medicine/branded_medicine_form/branded_medicine_form_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/branded_medicine/branded_medicine_watcher/branded_medicine_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/prescription/prescription_form/prescription_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/view_models/title_subtitle_image_view_model.dart';
import 'package:expedientes_clinicos/domain/medicine/branded_medicine/branded_medicine.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/name_subtitle_drop_down/drop_down_name_subtitle.dart';
import 'package:expedientes_clinicos/presentation/medicine/branded_medicine/branded_medicine_form/branded_medicine_form_page.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

class DropdownSearchBrandedMedicineForm extends StatefulWidget {
  //optional for the case of editing
  DropdownSearchBrandedMedicineForm({
    required this.onSelected,
    super.key,
  });
  Function onSelected;
  @override
  _DropdownSearchPharmaceuticalFormState createState() =>
      _DropdownSearchPharmaceuticalFormState();
}

class _DropdownSearchPharmaceuticalFormState
    extends State<DropdownSearchBrandedMedicineForm> {
  GlobalKey globalKey = GlobalKey();
  List<BrandedMedicine> brandedMedicineList = [];
  TextEditingController searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<BrandedMedicineWatcherBloc>()
          ..add(const BrandedMedicineWatcherEvent.watchAllStarted()),
        child: BlocConsumer<BrandedMedicineWatcherBloc,
            BrandedMedicineWatcherState>(listener: (context, state) {
          state.map(
              initial: (value) {
                print('-----INITIALIZEDD----');
                brandedMedicineList = [];
              },
              loadInProgress: ((value) => context.read<StateRendererBloc>().add(
                  StateRendererEvent.popUpLoading(AppStrings.saving,
                      AppStrings.actionInProgressExplain, null, 300, 500))),
              loadSuccess: ((value) {
                print('ON LOAD FILL LIST');
                setState(() {
                  brandedMedicineList = value.medicines.asList();
                });
              }),
              loadFailure: ((value) => context.read<StateRendererBloc>().add(
                  StateRendererEvent.popUpError(AppStrings.unableToReadError,
                      AppStrings.unableToReadErrorExplain, null, 300, 500))));
        }, builder: (context, state) {
          return DropdownSearchTitleSubtitleImg(
            element: TitleSubtitleImageViewModel.fromBrandedMedicine(context
                .read<PrescriptionFormBloc>()
                .state
                .prescription
                .medicine),
            searchFieldController: searchFieldController,
            onSelected: (TitleSubtitleImageViewModel medicine) {
              widget.onSelected(medicine.originBrandedMedicine);
              setState(() {});
            },
            onSearchWithKey: (key) {
              context
                  .read<BrandedMedicineWatcherBloc>()
                  .add(BrandedMedicineWatcherEvent.watchFilteredStarted(key));
            },
            onSearchAll: () {
              context
                  .read<BrandedMedicineWatcherBloc>()
                  .add(const BrandedMedicineWatcherEvent.watchAllStarted());
            },
            listElements: brandedMedicineList
                .map((brandedMedicine) =>
                    TitleSubtitleImageViewModel.fromBrandedMedicine(
                        brandedMedicine))
                .toList(),
            hintText: AppStrings.selectBrandedMedicine,
            newFunction: () {
              context.read<StateRendererBloc>().add(
                      StateRendererEvent.fullScreenForm(
                          ' ${AppStrings.createBrandedMedicine}',
                          BrandedMedicineFormPage(
                    onCreated: (brandedMedicine) {
                      context.read<PrescriptionFormBloc>().add(
                          PrescriptionFormEvent.onMedicineChanged(
                              brandedMedicine));
                      searchFieldController.text = context
                          .read<BrandedMedicineFormBloc>()
                          .state
                          .medicine
                          .comercialName
                          .value
                          .fold((l) => '', (r) => r);
                    },
                  ), ' ', null));
            },
          );
        }));
  }
}
