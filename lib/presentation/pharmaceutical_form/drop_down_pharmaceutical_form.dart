import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/abbreviation_name_form_abstract_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/measure_unit_form_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/pharmaceutical_form_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/medicine_form/medicine_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/abbreviation_name_component/drop_down_search_administration_route.dart';
import 'package:expedientes_clinicos/presentation/measure_unit/pop_up_measure_unit_form.dart';
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
                  const StateRendererEvent.popUpLoading(AppStrings.saving,
                      AppStrings.actionInProgressExplain, false))),
              loadSuccess: ((value) {
                setState(() {
                  pharmaceuticalFormList = value.abbreviationName.asList();
                });
              }),
              loadFailure: ((value) => context.read<StateRendererBloc>().add(
                  const StateRendererEvent.popUpError(
                      AppStrings.unableToReadError,
                      AppStrings.unableToReadErrorExplain,
                      false))));
        }, builder: (context, state) {
          return DropdownSearchAbbreviationNameRoute(
            abbreviationName: context
                .read<MedicineFormBloc>()
                .state
                .medicine
                .pharmaceuticalForm,
            searchFieldController: searchFieldController,
            onSelected: (nameAbbr) {
              context
                  .read<MedicineFormBloc>()
                  .add(MedicineFormEvent.pharmaceuticalFormChanged(nameAbbr));
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
                      MeasureUnitForm(
                        nameAbbreviation: NameAbbreviation.empty(),
                        onAbbreviationChanged: (newAbbr) {
                          context.read<MeasureUnitFormBloc>().add(
                              AbbreviationNameFormEvent.abreviationChanged(
                                  newAbbr));
                        },
                        onNameChanged: (newName) {
                          context.read<MeasureUnitFormBloc>().add(
                              AbbreviationNameFormEvent.nameChanged(newName));
                        },
                        onSubmit: () {
                          context
                              .read<MeasureUnitFormBloc>()
                              .add(const AbbreviationNameFormEvent.saved());
                        },
                      ),
                      false));
            },
          );
        }));
  }
}