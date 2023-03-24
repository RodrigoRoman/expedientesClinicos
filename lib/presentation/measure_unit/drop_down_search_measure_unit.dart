import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/measure_unit_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/abbreviation_name_component/drop_down_search_abbreviation_name.dart';
import 'package:expedientes_clinicos/presentation/measure_unit/pop_up_measure_unit_form.dart';
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
                  StateRendererEvent.popUpLoading(AppStrings.saving,
                      AppStrings.actionInProgressExplain, null, 300, 500))),
              loadSuccess: ((value) {
                setState(() {
                  measureUnitList = value.abbreviationName.asList();
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
                .measureUnit,
            searchFieldController: searchFieldController,
            onSelected: (nameAbbr) {
              context
                  .read<GenericMedicineFormBloc>()
                  .add(GenericMedicineFormEvent.measureUnitChanged(nameAbbr));
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
                      ),
                      300,
                      300,
                      null));
            },
          );
        }));
  }
}
