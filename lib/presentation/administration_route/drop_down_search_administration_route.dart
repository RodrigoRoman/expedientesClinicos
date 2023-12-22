import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/administration_route_watcher_bloc_.dart';
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/view_models/drop_down_view_model.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/administration_route/pop_up_administration_route_form.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/drop_down_head.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownSearchAdministrationRoute extends StatefulWidget {
  //optional for the case of editing
  bool requestedSubmition;
  DropdownSearchAdministrationRoute(
      {super.key, this.requestedSubmition = false});
  @override
  _DropdownSearchAdministrationRouteState createState() =>
      _DropdownSearchAdministrationRouteState();
}

class _DropdownSearchAdministrationRouteState
    extends State<DropdownSearchAdministrationRoute> {
  GlobalKey globalKey = GlobalKey();
  List<NameAbbreviation> administrationRouteList = [];
  TextEditingController searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<AdministrationRouteWatcherBloc>()
          ..add(const AbbreviationNameWatcherEvent.watchAllStarted()),
        child: BlocConsumer<AdministrationRouteWatcherBloc,
            AbbreviationNameWatcherState>(listener: (context, state) {
          state.map(
              initial: (value) {
                administrationRouteList = [];
              },
              loadInProgress: ((value) => context.read<StateRendererBloc>().add(
                  const StateRendererEvent.popUpLoading(
                      title: AppStrings.saving,
                      message: AppStrings.actionInProgressExplain))),
              loadSuccess: ((value) {
                setState(() {
                  administrationRouteList = value.abbreviationName.asList();
                });
              }),
              loadFailure: ((value) => context.read<StateRendererBloc>().add(
                  const StateRendererEvent.popUpError(
                      title: AppStrings.unableToReadError,
                      message: AppStrings.unableToReadErrorExplain))));
        }, builder: (context, state) {
          return DropDownSearchHead(
            element: DropdownItemViewModel.fromNameAbbreviation(context
                .read<GenericMedicineFormBloc>()
                .state
                .medicine
                .administrationRoute),
            searchFieldController: searchFieldController,
            onSelected: (DropdownItemViewModel nameAbbr) {
              context.read<GenericMedicineFormBloc>().add(
                  GenericMedicineFormEvent.administrationRouteChanged(
                      nameAbbr.nameAbbreviation!));
              setState(() {});
            },
            valid: widget.requestedSubmition &&
                (context
                        .read<GenericMedicineFormBloc>()
                        .state
                        .medicine
                        .administrationRoute ==
                    NameAbbreviation.empty()),
            onSearchWithKey: (key) {
              context
                  .read<AdministrationRouteWatcherBloc>()
                  .add(AbbreviationNameWatcherEvent.watchFilteredStarted(key));
            },
            onSearchAll: () {
              context
                  .read<AdministrationRouteWatcherBloc>()
                  .add(const AbbreviationNameWatcherEvent.watchAllStarted());
            },
            listElements: administrationRouteList
                .map((e) => DropdownItemViewModel.fromNameAbbreviation(e))
                .toList(),
            hintText: AppStrings.administrationRoute,
            newFunction: () {
              context
                  .read<StateRendererBloc>()
                  .add(StateRendererEvent.popUpForm(
                      title: AppStrings.createAdminRoute,
                      bodyWidget: AdministrationRouteForm(
                        onCreated: (NameAbbreviation nameAbbreviation) {
                          context.read<GenericMedicineFormBloc>().add(
                              GenericMedicineFormEvent
                                  .administrationRouteChanged(
                                      nameAbbreviation));
                          searchFieldController.text = nameAbbreviation
                              .name.value
                              .fold((l) => '', (r) => r);
                          setState(() {});
                        },
                        nameAbbreviation: NameAbbreviation.empty(),
                      ),
                      until: AppStrings.popUp));
            },
          );
        }));
  }
}
