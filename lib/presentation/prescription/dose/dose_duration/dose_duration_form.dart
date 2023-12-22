import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/application/time_interval/time_interval_form/duration_interval_form_bloc.dart';
import 'package:expedientes_clinicos/application/time_interval/time_interval_form/time_interval_form_bloc.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/dose_amount.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/buttons_group/cancel_create_row.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_fields/integer_input.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_fields/text_input_title.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/title_validated.dart';
import 'package:expedientes_clinicos/presentation/resources/const_values.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:expedientes_clinicos/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

class DoseDurationForm extends StatefulWidget {
  final DoseAmount doseAmount;
  final Function onNameChanged;
  final Function onMonthsChanged;
  final Function onWeeksChanged;
  final Function onDaysChanged;
  final Function onAmountChanged;
  final Function? onCreated;
  final bool durationAmountEmpty;
  final Function onSubmit;
  final Function validLabel;

  const DoseDurationForm(
      {required this.doseAmount,
      required this.validLabel,
      required this.onNameChanged,
      required this.onWeeksChanged,
      required this.onAmountChanged,
      required this.onCreated,
      required this.onDaysChanged,
      required this.durationAmountEmpty,
      required this.onSubmit,
      required this.onMonthsChanged,
      super.key});

  @override
  State<DoseDurationForm> createState() => _DoseDurationFormState();
}

class _DoseDurationFormState extends State<DoseDurationForm> {
  final _key = GlobalKey<FormState>();
  final TextEditingController labelController = TextEditingController();
  bool submitted = false;
  List<HourTime> listHours = [];

  bool undefined = false;
  @override
  void dispose() {
    // TODO: implement dispose
    labelController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        width: constraints.maxWidth,
        height: constraints.maxHeight * 1.5,
        child: Form(
          autovalidateMode: AutovalidateMode.disabled,
          child: BlocConsumer<DurationIntervalFormBloc, TimeIntervalFormState>(
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
                        widget.onCreated?.call(state.timeInterval);
                        context
                            .read<StateRendererBloc>()
                            .add(const StateRendererEvent.popUpSuccess(
                              title: AppStrings.success,
                              message: AppStrings.successfullyCreated,
                              until: FullScreenStatePageRoute.name,
                            ));
                      }));
            },
            builder: (context, state) {
              return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 4,
                        child: LayoutBuilder(builder: (context, constraints) {
                          return SizedBox(
                              width: constraints.maxWidth / 1.2,
                              height: constraints.maxHeight,
                              child: Column(
                                children: [
                                  Expanded(
                                      flex: 5,
                                      child: TextInputTitle(
                                        title: AppStrings.labelDoseAmount,
                                        maxLines: 3,
                                        textEditingController: labelController,
                                        submitted: submitted,
                                        validator: widget.validLabel,
                                        onChanged: widget.onNameChanged,
                                      )),
                                ],
                              ));
                        })),
                    const Spacer(),
                    Expanded(
                        flex: 8,
                        child: LayoutBuilder(builder: (context, constraints) {
                          return SizedBox(
                              width: constraints.maxWidth / 1.2,
                              height: constraints.maxHeight,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: TitleValidated(
                                        title: AppStrings.labelDuration,
                                        condition:
                                            (widget.durationAmountEmpty &&
                                                (submitted))),
                                  ),
                                  !undefined
                                      ? Expanded(
                                          flex: 8,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 10,
                                                child: Column(
                                                  children: [
                                                    Expanded(
                                                        flex: 2,
                                                        child: TitleValidated(
                                                            title: AppStrings
                                                                .monthsAmount,
                                                            condition: widget
                                                                .durationAmountEmpty)),
                                                    Spacer(),
                                                    Expanded(
                                                      flex: 5,
                                                      child: IntegerInputBox(
                                                          initialValue: 0,
                                                          minValue: 0,
                                                          onChanged:
                                                              (int newInt) {
                                                            widget
                                                                .onMonthsChanged(
                                                                    newInt);
                                                          }),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Spacer(),
                                              Expanded(
                                                flex: 10,
                                                child: Column(
                                                  children: [
                                                    Expanded(
                                                        flex: 2,
                                                        child: TitleValidated(
                                                            title: AppStrings
                                                                .weeksAmount,
                                                            condition: widget
                                                                .durationAmountEmpty)),
                                                    Spacer(),
                                                    Expanded(
                                                      flex: 5,
                                                      child: IntegerInputBox(
                                                          initialValue: 0,
                                                          minValue: 0,
                                                          onChanged:
                                                              (int newInt) {
                                                            widget
                                                                .onWeeksChanged(
                                                                    newInt);
                                                          }),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Spacer(),
                                              Expanded(
                                                flex: 10,
                                                child: Column(
                                                  children: [
                                                    Expanded(
                                                        flex: 2,
                                                        child: TitleValidated(
                                                            title: AppStrings
                                                                .daysAmount,
                                                            condition: widget
                                                                .durationAmountEmpty)),
                                                    Spacer(),
                                                    Expanded(
                                                      flex: 5,
                                                      child: IntegerInputBox(
                                                          initialValue: 0,
                                                          minValue: 0,
                                                          onChanged:
                                                              (int newInt) {
                                                            widget
                                                                .onDaysChanged(
                                                                    newInt);
                                                          }),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      : SizedBox.shrink(),
                                  !undefined
                                      ? Spacer(
                                          flex: 2,
                                        )
                                      : SizedBox.shrink(),
                                  Expanded(
                                    flex: 5,
                                    child: Column(
                                      children: [
                                        Expanded(
                                            flex: 2,
                                            child: TitleValidated(
                                                title: AppStrings.undefinedTime,
                                                condition: false)),
                                        Spacer(),
                                        Expanded(
                                          flex: 3,
                                          child: Transform.scale(
                                            scale: 2,
                                            child: Switch(
                                              // This bool value toggles the switch.
                                              value: undefined,
                                              onChanged: (bool value) {
                                                // This is called when the user toggles the switch.
                                                setState(() {
                                                  if (value) {
                                                    widget.onAmountChanged(
                                                        integerInfinity);
                                                  } else {
                                                    widget.onAmountChanged(0);
                                                  }
                                                  undefined = value;
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ));
                        })),
                    const Spacer(),
                    Expanded(
                      flex: 2,
                      child: CancelCreateButtonsRow(onCreate: () {
                        if (widget.validLabel() == null) {
                          widget.onSubmit();
                        }
                        setState(() {
                          submitted = true;
                        });
                      }),
                    ),
                  ]);
            },
          ),
        ),
      );
    });
  }
}
