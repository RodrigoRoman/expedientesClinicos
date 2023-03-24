import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/administration_route_watcher_bloc_.dart';
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/administration_route/pop_up_administration_route_form.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/abbreviation_name_component/drop_down_search_abbreviation_name.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownSearchAdministrationRoute extends StatefulWidget {
  //optional for the case of editing
  const DropdownSearchAdministrationRoute({
    super.key,
  });
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
                  StateRendererEvent.popUpLoading(AppStrings.saving,
                      AppStrings.actionInProgressExplain, null, 300, 500))),
              loadSuccess: ((value) {
                setState(() {
                  administrationRouteList = value.abbreviationName.asList();
                });
              }),
              loadFailure: ((value) => context.read<StateRendererBloc>().add(
                  StateRendererEvent.popUpError(AppStrings.unableToReadError,
                      AppStrings.unableToReadErrorExplain, null, 300, 500))));
        }, builder: (context, state) {
          return DropdownSearchAbbreviationNameRoute(
            abbreviationName: context
                .read<GenericMedicineFormBloc>()
                .state
                .medicine
                .administrationRoute,
            searchFieldController: searchFieldController,
            onSelected: (nameAbbr) {
              context.read<GenericMedicineFormBloc>().add(
                  GenericMedicineFormEvent.administrationRouteChanged(
                      nameAbbr));
              setState(() {});
            },
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
            abbreviationNameList: administrationRouteList,
            hintText: AppStrings.administrationRoute,
            newFunction: () {
              context
                  .read<StateRendererBloc>()
                  .add(StateRendererEvent.popUpForm(
                      AppStrings.createAdminRoute,
                      AdministrationRouteForm(
                        nameAbbreviation: NameAbbreviation.empty(),
                        // onAbbreviationChanged: (newAbbr) {
                        //   context.read<AdministrationRouteFormBloc>().add(
                        //       AbbreviationNameFormEvent.abreviationChanged(
                        //           newAbbr));
                        // },
                        // onNameChanged: (newName) {
                        //   context.read<AdministrationRouteFormBloc>().add(
                        //       AbbreviationNameFormEvent.nameChanged(newName));
                        // },
                        // onSubmit: () {
                        //   context
                        //       .read<AdministrationRouteFormBloc>()
                        //       .add(const AbbreviationNameFormEvent.saved());
                        // },
                      ),
                      300,
                      500,
                      null));
            },
          );
        }));
  }
}
