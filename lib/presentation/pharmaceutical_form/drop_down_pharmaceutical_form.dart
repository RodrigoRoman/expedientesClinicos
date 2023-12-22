import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/pharmaceutical_form_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/view_models/drop_down_view_model.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/drop_down_head.dart';
import 'package:expedientes_clinicos/presentation/pharmaceutical_form/pop_up_pharmaceutical_form.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownSearchPharmaceuticalForm extends StatefulWidget {
  //optional for the case of editing
  bool requestedSubmition;
  DropdownSearchPharmaceuticalForm(
      {super.key, this.requestedSubmition = false});
  @override
  _DropdownSearchPharmaceuticalFormState createState() =>
      _DropdownSearchPharmaceuticalFormState();
}

class _DropdownSearchPharmaceuticalFormState
    extends State<DropdownSearchPharmaceuticalForm> {
  GlobalKey globalKey = GlobalKey();
  List<NameAbbreviation> pharmaceuticalFormList = [];
  TextEditingController searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<PharmaceuticalFormWatcherBloc>()
          ..add(const AbbreviationNameWatcherEvent.watchAllStarted()),
        child: BlocConsumer<PharmaceuticalFormWatcherBloc,
            AbbreviationNameWatcherState>(listener: (context, state) {
          state.map(
              initial: (value) {
                pharmaceuticalFormList = [];
              },
              loadInProgress: ((value) => context
                  .read<StateRendererBloc>()
                  .add(const StateRendererEvent.popUpLoading(
                    title: AppStrings.saving,
                    message: AppStrings.actionInProgressExplain,
                    until: AppStrings.popUp,
                  ))),
              loadSuccess: ((value) {
                setState(() {
                  pharmaceuticalFormList = value.abbreviationName.asList();
                });
              }),
              loadFailure: ((value) => context.read<StateRendererBloc>().add(
                  const StateRendererEvent.popUpError(
                      title: AppStrings.unableToReadError,
                      message: AppStrings.unableToReadErrorExplain,
                      until: AppStrings.popUp))));
        }, builder: (context, state) {
          return DropDownSearchHead(
            element: DropdownItemViewModel.fromNameAbbreviation(context
                .read<GenericMedicineFormBloc>()
                .state
                .medicine
                .pharmaceuticalForm),
            searchFieldController: searchFieldController,
            onSelected: (DropdownItemViewModel dropdownItemViewModel) {
              context.read<GenericMedicineFormBloc>().add(
                  GenericMedicineFormEvent.pharmaceuticalFormChanged(
                      dropdownItemViewModel.nameAbbreviation!));
              // setState(() {});
            },
            onSearchWithKey: (key) {
              context
                  .read<PharmaceuticalFormWatcherBloc>()
                  .add(AbbreviationNameWatcherEvent.watchFilteredStarted(key));
            },
            valid: widget.requestedSubmition &&
                (context
                        .read<GenericMedicineFormBloc>()
                        .state
                        .medicine
                        .pharmaceuticalForm ==
                    NameAbbreviation.empty()),
            onSearchAll: () {
              context
                  .read<PharmaceuticalFormWatcherBloc>()
                  .add(const AbbreviationNameWatcherEvent.watchAllStarted());
            },
            listElements: pharmaceuticalFormList
                .map((e) => DropdownItemViewModel.fromNameAbbreviation(e))
                .toList(),
            hintText: AppStrings.pharmaceuticalForm,
            newFunction: () {
              context
                  .read<StateRendererBloc>()
                  .add(StateRendererEvent.popUpForm(
                      title: 'Crear ${AppStrings.pharmaceuticalForm}',
                      bodyWidget: PharmaceuticalFormForm(
                        nameAbbreviation: NameAbbreviation.empty(),
                        onCreated: (NameAbbreviation nameAbbreviation) {
                          context.read<GenericMedicineFormBloc>().add(
                              GenericMedicineFormEvent
                                  .pharmaceuticalFormChanged(nameAbbreviation));
                          searchFieldController.text = nameAbbreviation
                              .name.value
                              .fold((l) => '', (r) => r);
                          setState(() {});
                        },
                      ),
                      until: AppStrings.popUp));
            },
          );
        }));
  }
}
