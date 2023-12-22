import 'package:expedientes_clinicos/application/label_double_amount/label_double_amount_form/dose_amount_form_bloc.dart';
import 'package:expedientes_clinicos/application/label_double_amount/label_double_amount_form/label_double_amount_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_double_amount/label_double_amount_popup_form.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:expedientes_clinicos/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

class DoseAmountForm extends StatefulWidget {
  final bool submitted;
  final Function? onCreated;

  const DoseAmountForm({required this.submitted, this.onCreated, super.key});

  @override
  State<DoseAmountForm> createState() => _DoseAmountFormState();
}

class _DoseAmountFormState extends State<DoseAmountForm> {
  final _key = GlobalKey<FormState>();
  final TextEditingController labelController = TextEditingController();
  bool submitted = false;
  List<HourTime> listHours = [];

  @override
  Widget build(BuildContext context) {
    print('Rebuilt');
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        width: constraints.maxWidth,
        height: constraints.maxHeight,
        child: Form(
          key: _key,
          autovalidateMode: AutovalidateMode.disabled,
          child: BlocConsumer<DoseAmountFormBloc, LabelDoubleAmountFormState>(
            listener: (context, state) {
              state.saveFailureOrSuccessOption.fold(() {
                if (state.isSaving) {
                  context
                      .read<StateRendererBloc>()
                      .add(const StateRendererEvent.popUpLoading(
                        title: AppStrings.saving,
                        message: AppStrings.actionInProgressExplain,
                        until: AppStrings.popUp,
                      ));
                }
              },
                  (either) => either.fold(
                          (failure) => failure.maybeMap(
                                unexpected: (e) {
                                  context
                                      .read<StateRendererBloc>()
                                      .add(const StateRendererEvent.popUpError(
                                        title: AppStrings.couldNotSaveImage,
                                        message: AppStrings.somethingWentWrong,
                                        until: FullScreenStatePageRoute.name,
                                      ));
                                },
                                insufficientPermissions: (e) {
                                  context
                                      .read<StateRendererBloc>()
                                      .add(const StateRendererEvent.popUpError(
                                        title:
                                            AppStrings.insuficcientPermissions,
                                        message: AppStrings
                                            .insuficcientPermissionsExplain,
                                        until: FullScreenStatePageRoute.name,
                                      ));
                                },
                                unableToCreate: (e) {
                                  context
                                      .read<StateRendererBloc>()
                                      .add(const StateRendererEvent.popUpError(
                                        title: AppStrings.unableToCreate,
                                        message:
                                            AppStrings.unableToCreateExplain,
                                        until: FullScreenStatePageRoute.name,
                                      ));
                                },
                                orElse: () {
                                  context
                                      .read<StateRendererBloc>()
                                      .add(const StateRendererEvent.popUpError(
                                        title: AppStrings.genericError,
                                        message: AppStrings.genericErrorExplain,
                                        until: FullScreenStatePageRoute.name,
                                      ));
                                },
                              ), (r) {
                        widget.onCreated?.call(state.labelDoubleAmount);
                        context
                            .read<StateRendererBloc>()
                            .add(const StateRendererEvent.popUpSuccess(
                              title: AppStrings.success,
                              message: AppStrings.successfullyCreated,
                            ));
                      }));
            },
            builder: (context, state) {
              return LabelAmountDoublePopUpForm(
                titleName: AppStrings.doseAmountName,
                validAbbreviation: () => context
                    .read<DoseAmountFormBloc>()
                    .state
                    .labelDoubleAmount
                    .label
                    .value
                    .fold((l) => AppStrings.genericError, (r) => null),
                onAmountChanged: (double newAmount) {
                  context
                      .read<DoseAmountFormBloc>()
                      .add(LabelDoubleAmountFormEvent.amountChanged(newAmount));
                },
                onNameChanged: (label) {
                  context
                      .read<DoseAmountFormBloc>()
                      .add(LabelDoubleAmountFormEvent.labelChanged(label));
                },
                validAmount: () => context
                    .read<DoseAmountFormBloc>()
                    .state
                    .labelDoubleAmount
                    .amount
                    .value
                    .fold((l) => AppStrings.genericError, (r) => null),
                onSubmit: () {
                  print(context
                      .read<DoseAmountFormBloc>()
                      .state
                      .labelDoubleAmount);
                  context
                      .read<DoseAmountFormBloc>()
                      .add(LabelDoubleAmountFormEvent.saved());
                },
              );
            },
          ),
        ),
      );
    });
  }
}
