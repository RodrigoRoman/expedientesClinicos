import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/label_double_amount/label_double_amount_form/dose_amount_form_bloc.dart';
import 'package:expedientes_clinicos/application/label_double_amount/label_double_amount_form/label_double_amount_form_bloc.dart';
import 'package:expedientes_clinicos/application/label_double_amount/label_double_amount_watcher/dose_amount_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/label_double_amount/label_double_amount_watcher/label_double_amount_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/dose/dose_core/dose_form/dose_form_bloc.dart';
import 'package:expedientes_clinicos/application/prescription/prescription_form/prescription_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/label_double_amount/label_double_amount.dart';
import 'package:expedientes_clinicos/domain/core/view_models/drop_down_view_model.dart';
import 'package:expedientes_clinicos/domain/core/view_models/label_dose_times_view_model.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/dose_amount.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_double_amount/label_double_amount_popup_form.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/drop_down_head.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/label_drop_down.dart';
import 'package:expedientes_clinicos/presentation/prescription/dose/dose_amount/dose_amount_form.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:expedientes_clinicos/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownSearchDoseAmount extends StatefulWidget {
  bool valid;
  //optional for the case of editing
  DropdownSearchDoseAmount({super.key, this.valid = true});
  @override
  _DropdownSearchDoseAmountState createState() =>
      _DropdownSearchDoseAmountState();
}

class _DropdownSearchDoseAmountState extends State<DropdownSearchDoseAmount> {
  GlobalKey globalKey = GlobalKey();
  List<LabelDoubleAmount> doseAmountList = [];
  TextEditingController searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<DoseAmountWatcherBloc>()
          ..add(const LabelDoubleAmountWatcherEvent.watchAllStarted()),
        child:
            BlocConsumer<DoseAmountWatcherBloc, LabelDoubleAmountWatcherState>(
                listener: (context, state) {
          state.map(
              initial: (value) {
                doseAmountList = [];
              },
              loadInProgress: ((value) {
                return context.read<StateRendererBloc>().add(
                    StateRendererEvent.popUpLoading(
                        title: AppStrings.saving,
                        message: AppStrings.actionInProgressExplain,
                        until: AppStrings.popUp));
              }),
              loadSuccess: ((value) {
                setState(() {
                  doseAmountList = value.labelDoubleAmount.asList();
                });
              }),
              loadFailure: ((value) => context.read<StateRendererBloc>().add(
                  StateRendererEvent.popUpError(
                      title: AppStrings.unableToReadError,
                      message: AppStrings.unableToReadErrorExplain))));
        }, builder: (context, state) {
          return DropDownSearchHead(
            valid: widget.valid,
            element: DropdownItemViewModel.fromLabelDoubleAmount(context
                .read<PrescriptionFormBloc>()
                .state
                .prescription
                .doseAmount),
            searchFieldController: searchFieldController,
            onSelected: (DropdownItemViewModel labelAmount) {
              context.read<PrescriptionFormBloc>().add(
                  PrescriptionFormEvent.onDoseAmountChanged(
                      labelAmount.labelDoubleAmount!));
              setState(() {});
            },
            onSearchWithKey: (key) {
              context
                  .read<DoseAmountWatcherBloc>()
                  .add(LabelDoubleAmountWatcherEvent.watchFilteredStarted(key));
            },
            onSearchAll: () {
              context
                  .read<DoseAmountWatcherBloc>()
                  .add(const LabelDoubleAmountWatcherEvent.watchAllStarted());
            },
            listElements: doseAmountList
                .map((dayHoursDose) =>
                    DropdownItemViewModel.fromLabelDoubleAmount(dayHoursDose))
                .toList(),
            hintText: AppStrings.doseAmount,
            newFunction: () {
              context
                  .read<StateRendererBloc>()
                  .add(StateRendererEvent.popUpForm(
                      title: 'Crear ${AppStrings.doseAmount}',
                      bodyWidget: DoseAmountForm(
                        submitted: false,
                      ),
                      until: FullScreenStatePageRoute.name));
            },
          );
        }));
  }
}
