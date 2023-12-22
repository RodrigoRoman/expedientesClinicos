import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/measure_unit_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/view_models/drop_down_view_model.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/drop_down_head.dart';
import 'package:expedientes_clinicos/presentation/measure_unit/pop_up_measure_unit_form.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownSearchMeasureUnit extends StatefulWidget {
  bool requestedSubmition;
  //optional for the case of editing
  DropdownSearchMeasureUnit({super.key, this.requestedSubmition = false});
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
                  const StateRendererEvent.popUpLoading(
                      title: AppStrings.saving,
                      message: AppStrings.actionInProgressExplain))),
              loadSuccess: ((value) {
                setState(() {
                  measureUnitList = value.abbreviationName.asList();
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
                .measureUnit),
            searchFieldController: searchFieldController,
            onSelected: (DropdownItemViewModel dropdownItemViewModel) {
              context.read<GenericMedicineFormBloc>().add(
                  GenericMedicineFormEvent.measureUnitChanged(
                      dropdownItemViewModel.nameAbbreviation!));
            },
            valid: widget.requestedSubmition &&
                context
                        .read<GenericMedicineFormBloc>()
                        .state
                        .medicine
                        .measureUnit ==
                    NameAbbreviation.empty(),
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
            listElements: measureUnitList
                .map((e) => DropdownItemViewModel.fromNameAbbreviation(e))
                .toList(),
            hintText: AppStrings.measureUnit,
            newFunction: () {
              context
                  .read<StateRendererBloc>()
                  .add(StateRendererEvent.popUpForm(
                      title: AppStrings.createMeasureUnit,
                      bodyWidget: MeasureUnitForm(
                        onCreated: (NameAbbreviation nameAbbreviation) {
                          context.read<GenericMedicineFormBloc>().add(
                              GenericMedicineFormEvent.measureUnitChanged(
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
