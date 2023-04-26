import 'package:expedientes_clinicos/application/medicine/dose/dose_components/dose_amount/dose_amount_form/dose_amount_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/dose_amount.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/double_input.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/title_validated.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:expedientes_clinicos/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

class DoseAmountForm extends StatefulWidget {
  final DoseAmount doseAmount;
  final Function onNameChanged;
  final Function onAmountChanged;
  final Function? onCreated;
  final double currentDoseAmount;
  final Function onSubmit;
  final Function validLabel;

  const DoseAmountForm(
      {required this.doseAmount,
      required this.validLabel,
      required this.onNameChanged,
      required this.onCreated,
      required this.currentDoseAmount,
      required this.onSubmit,
      required this.onAmountChanged,
      super.key});

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
          child: BlocConsumer<DoseAmountFormBloc, DoseAmountFormState>(
            listener: (context, state) {
              state.saveFailureOrSuccessOption.fold(() {
                if (state.isSaving) {
                  context.read<StateRendererBloc>().add(
                      StateRendererEvent.popUpLoading(
                          AppStrings.saving,
                          AppStrings.actionInProgressExplain,
                          AppStrings.popUp,
                          300,
                          500));
                }
              },
                  (either) => either.fold(
                          (failure) => failure.maybeMap(
                                unexpected: (e) {
                                  context.read<StateRendererBloc>().add(
                                      StateRendererEvent.popUpError(
                                          AppStrings.couldNotSaveImage,
                                          AppStrings.somethingWentWrong,
                                          FullScreenState.name,
                                          300,
                                          500));
                                },
                                insufficientPermissions: (e) {
                                  context.read<StateRendererBloc>().add(
                                      StateRendererEvent.popUpError(
                                          AppStrings.insuficcientPermissions,
                                          AppStrings
                                              .insuficcientPermissionsExplain,
                                          FullScreenState.name,
                                          300,
                                          500));
                                },
                                unableToCreate: (e) {
                                  context.read<StateRendererBloc>().add(
                                      StateRendererEvent.popUpError(
                                          AppStrings.unableToCreate,
                                          AppStrings.unableToCreateExplain,
                                          FullScreenState.name,
                                          300,
                                          500));
                                },
                                orElse: () {
                                  context.read<StateRendererBloc>().add(
                                      StateRendererEvent.popUpError(
                                          AppStrings.genericError,
                                          AppStrings.genericErrorExplain,
                                          FullScreenState.name,
                                          300,
                                          500));
                                },
                              ), (r) {
                        widget.onCreated?.call(state.doseAmount);
                        context.read<StateRendererBloc>().add(
                            StateRendererEvent.popUpSuccess(
                                AppStrings.success,
                                AppStrings.successfullyCreated,
                                FullScreenState.name,
                                300,
                                500));
                      }));
            },
            builder: (context, state) {
              return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Expanded(
                        flex: 4,
                        child: LayoutBuilder(builder: (context, constraints) {
                          return SizedBox(
                              width: constraints.maxWidth / 1.5,
                              height: constraints.maxHeight,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: TitleValidated(
                                        title: AppStrings.labelDoseAmount,
                                        condition:
                                            ((labelController.text == '') &&
                                                (submitted))),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: TextFormField(
                                      maxLines: 2,
                                      controller: labelController,
                                      validator: (_) => widget.validLabel(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: AppStrings.labelDoseAmount,
                                          hintStyle: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  color: Theme.of(context)
                                                      .canvasColor)),
                                      keyboardType: TextInputType.text,
                                      textCapitalization:
                                          TextCapitalization.sentences,
                                      onChanged: (value) {
                                        labelController.value =
                                            TextEditingValue(
                                          text: value,
                                          selection: TextSelection.fromPosition(
                                            TextPosition(
                                                offset: labelController
                                                    .selection.extentOffset),
                                          ),
                                        );
                                        ;
                                        widget.onNameChanged(
                                            labelController.text);
                                      },
                                      textInputAction: TextInputAction.next,
                                    ),
                                  ),
                                ],
                              ));
                        })),
                    const Spacer(),
                    Expanded(
                        flex: 3,
                        child: LayoutBuilder(builder: (context, constraints) {
                          return SizedBox(
                              width: constraints.maxWidth / 1.5,
                              height: constraints.maxHeight,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: TitleValidated(
                                        title: AppStrings.dayDosesAmount,
                                        condition:
                                            ((widget.currentDoseAmount == 0) &&
                                                (submitted))),
                                  ),
                                  Expanded(
                                    child: DoubleInputBox(
                                        initialValue: 0,
                                        minValue: 0,
                                        onChanged: (double newInt) {
                                          widget.onAmountChanged(newInt);
                                          // listHours = List.generate(
                                          //     newInt,
                                          //     (index) => HourTime(TimeOfDay(
                                          //         hour: (((24 * index) ~/
                                          //                     newInt) +
                                          //                 7) %
                                          //             24,
                                          //         minute: 0)));
                                          // context
                                          //     .read<DoseAmountFormBloc>()
                                          //     .add(DoseAmountFormEvent
                                          //         .listHoursChanged(listHours));
                                        }),
                                  ),
                                ],
                              ));
                        })),
                    const Spacer(),
                    ElevatedButton(
                        onPressed: () {
                          if (_key.currentState!.validate()) {
                            widget.onSubmit();
                          }
                          setState(() {
                            submitted = true;
                          });
                        },
                        child: const Text(AppStrings.create))
                  ]);
            },
          ),
        ),
      );
    });
  }
}
