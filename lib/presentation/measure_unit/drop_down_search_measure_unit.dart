import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/abbreviation_name_form_abstract_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/measure_unit_form_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/measure_unit_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/medicine_form/medicine_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/abbreviation_name_component/drop_down_search_administration_route.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/abbreviation_name_component/pop_up_administration_route_form.dart';
import 'package:expedientes_clinicos/presentation/measure_unit/pop_up_measure_unit_form.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/font_manager.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownSearchMeasureUnit extends StatefulWidget {
  //optional for the case of editing
  const DropdownSearchMeasureUnit({
    super.key,
  });
  @override
  _DropdownSearchMeasureUnitState createState() =>
      _DropdownSearchMeasureUnitState();
}

class _DropdownSearchMeasureUnitState extends State<DropdownSearchMeasureUnit> {
  GlobalKey globalKey = GlobalKey();
  List<NameAbbreviation> measureUnitList = [];
  TextEditingController searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<MeasureUnitWatcherBloc>()
          ..add(const AbbreviationNameWatcherEvent.watchAllStarted()),
        child:
            BlocConsumer<MeasureUnitWatcherBloc, AbbreviationNameWatcherState>(
                listener: (context, state) {
          state.map(
              initial: (value) {
                measureUnitList = [];
              },
              loadInProgress: ((value) => context.read<StateRendererBloc>().add(
                  const StateRendererEvent.popUpLoading(AppStrings.saving,
                      AppStrings.actionInProgressExplain, false))),
              loadSuccess: ((value) {
                setState(() {
                  measureUnitList = value.abbreviationName.asList();
                });
              }),
              loadFailure: ((value) => context.read<StateRendererBloc>().add(
                  const StateRendererEvent.popUpError(
                      AppStrings.unableToReadError,
                      AppStrings.unableToReadErrorExplain,
                      false))));
        }, builder: (context, state) {
          return DropdownSearchAbbreviationNameRoute(
            abbreviationName:
                context.read<MedicineFormBloc>().state.medicine.measureUnit,
            searchFieldController: searchFieldController,
            onSelected: (NameAbbreviation nameAbbr) {
              // searchFieldController.text =
              //     nameAbbr.name.value.fold((l) => '', (r) => r);
              context
                  .read<MedicineFormBloc>()
                  .add(MedicineFormEvent.measureUnitChanged(nameAbbr));
            },
            onSearchWithKey: (key) {
              context
                  .read<MeasureUnitWatcherBloc>()
                  .add(AbbreviationNameWatcherEvent.watchFilteredStarted(key));
            },
            onSearchAll: () {
              context
                  .read<MeasureUnitWatcherBloc>()
                  .add(const AbbreviationNameWatcherEvent.watchAllStarted());
            },
            abbreviationNameList: measureUnitList,
            hintText: AppStrings.measureUnit,
            newFunction: () {
              context
                  .read<StateRendererBloc>()
                  .add(StateRendererEvent.popUpForm(
                      'Crear Unidad de Medida',
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
