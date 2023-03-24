import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/abbreviation_name_form_abstract_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/pharmaceutical_form_form_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/pharmaceutical_form_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/abbreviation_name_component/drop_down_search_abbreviation_name.dart';
import 'package:expedientes_clinicos/presentation/pharmaceutical_form/pop_up_pharmaceutical_form.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownSearchPharmaceuticalForm extends StatefulWidget {
  //optional for the case of editing
  const DropdownSearchPharmaceuticalForm({
    super.key,
  });
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
              loadInProgress: ((value) => context.read<StateRendererBloc>().add(
                  StateRendererEvent.popUpLoading(AppStrings.saving,
                      AppStrings.actionInProgressExplain, null, 300, 500))),
              loadSuccess: ((value) {
                setState(() {
                  pharmaceuticalFormList = value.abbreviationName.asList();
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
                .pharmaceuticalForm,
            searchFieldController: searchFieldController,
            onSelected: (nameAbbr) {
              context.read<GenericMedicineFormBloc>().add(
                  GenericMedicineFormEvent.pharmaceuticalFormChanged(nameAbbr));
              setState(() {});
            },
            onSearchWithKey: (key) {
              context
                  .read<PharmaceuticalFormWatcherBloc>()
                  .add(AbbreviationNameWatcherEvent.watchFilteredStarted(key));
            },
            onSearchAll: () {
              context
                  .read<PharmaceuticalFormWatcherBloc>()
                  .add(const AbbreviationNameWatcherEvent.watchAllStarted());
            },
            abbreviationNameList: pharmaceuticalFormList,
            hintText: AppStrings.pharmaceuticalForm,
            newFunction: () {
              context
                  .read<StateRendererBloc>()
                  .add(StateRendererEvent.popUpForm(
                      'Crear ${AppStrings.pharmaceuticalForm}',
                      PharmaceuticalFormForm(
                        nameAbbreviation: NameAbbreviation.empty(),
                        onAbbreviationChanged: (newAbbr) {
                          context.read<PharmaceuticalFormFormBloc>().add(
                              AbbreviationNameFormEvent.abreviationChanged(
                                  newAbbr));
                        },
                        onNameChanged: (newName) {
                          context.read<PharmaceuticalFormFormBloc>().add(
                              AbbreviationNameFormEvent.nameChanged(newName));
                        },
                        onSubmit: () {
                          context
                              .read<PharmaceuticalFormFormBloc>()
                              .add(const AbbreviationNameFormEvent.saved());
                        },
                      ),
                      300,
                      300,
                      null));
            },
          );
        }));
  }
}
