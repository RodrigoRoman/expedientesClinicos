import 'package:expedientes_clinicos/application/medicine/dose/dose_components/day_hours_dose/day_hours_dose_form/day_hours_dose_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/day_hours_doses.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/buttons_group/cancel_create_row.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_fields/integer_input.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_fields/text_input_title.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/title_validated.dart';
import 'package:expedientes_clinicos/presentation/prescription/dose/day_hours_dose/day_hours_dose_form/widgets/digital_watch.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:expedientes_clinicos/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

class DayHoursDoseForm extends StatefulWidget {
  final DayHoursDose dayHoursDose;
  final Function onNameChanged;
  final Function? onCreated;
  final Function onSubmit;
  final Function validLabel;
  final Function validHours;

  const DayHoursDoseForm(
      {required this.dayHoursDose,
      required this.validLabel,
      required this.onCreated,
      required this.onNameChanged,
      required this.onSubmit,
      required this.validHours,
      super.key});

  @override
  State<DayHoursDoseForm> createState() => _DayHoursDoseFormState();
}

class _DayHoursDoseFormState extends State<DayHoursDoseForm> {
  final _key = GlobalKey<FormState>();
  final TextEditingController labelController = TextEditingController();
  int doseAmount = 0;
  bool submitted = false;
  List<HourTime> listHours = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DayHoursDoseFormBloc, DayHoursDoseFormState>(
        listener: (context, state) {
      state.saveFailureOrSuccessOption.fold(() {
        if (state.isSaving) {
          context.read<StateRendererBloc>().add(
              const StateRendererEvent.popUpLoading(
                  title: AppStrings.saving,
                  message: AppStrings.actionInProgressExplain,
                  until: AppStrings.popUp));
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
                                title: AppStrings.insuficcientPermissions,
                                message:
                                    AppStrings.insuficcientPermissionsExplain,
                                until: FullScreenStatePageRoute.name,
                              ));
                        },
                        unableToCreate: (e) {
                          context
                              .read<StateRendererBloc>()
                              .add(const StateRendererEvent.popUpError(
                                title: AppStrings.unableToCreate,
                                message: AppStrings.unableToCreateExplain,
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
                widget.onCreated?.call(state.dayHoursDose);
                context
                    .read<StateRendererBloc>()
                    .add(const StateRendererEvent.popUpSuccess(
                      title: AppStrings.success,
                      message: AppStrings.successfullyCreated,
                      until: FullScreenStatePageRoute.name,
                    ));
              }));
    }, builder: (context, state) {
      return LayoutBuilder(
        builder: (context, constraints) {
          return SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: Form(
                  key: _key,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Spacer(),
                        Expanded(
                            flex: 5,
                            child:
                                LayoutBuilder(builder: (context, constraints) {
                              return SizedBox(
                                  width: constraints.maxWidth / 1.5,
                                  height: constraints.maxHeight,
                                  child: Column(
                                    children: [
                                      // Expanded(
                                      //   child: TitleValidated(
                                      //       title: AppStrings.labelDayHours,
                                      //       condition:
                                      //           ((labelController.text == '') &&
                                      //               (submitted))),
                                      // ),
                                      // Expanded(
                                      //   flex: 2,
                                      //   child: TextFormField(
                                      //     maxLines: 3,
                                      //     controller: labelController,
                                      //     validator: (_) => widget.validLabel(),
                                      //     style: Theme.of(context)
                                      //         .textTheme
                                      //         .bodyMedium,
                                      //     textAlign: TextAlign.center,
                                      //     textCapitalization:
                                      //         TextCapitalization.sentences,
                                      //     decoration: InputDecoration(
                                      //         border: InputBorder.none,
                                      //         hintText:
                                      //             AppStrings.labelDayHours,
                                      //         hintStyle: Theme.of(context)
                                      //             .textTheme
                                      //             .bodySmall!
                                      //             .copyWith(
                                      //                 color: Theme.of(context)
                                      //                     .canvasColor)),
                                      //     keyboardType: TextInputType.text,
                                      //     onChanged: (value) {
                                      //       labelController.value =
                                      //           TextEditingValue(
                                      //         text: value,
                                      //         selection:
                                      //             TextSelection.fromPosition(
                                      //           TextPosition(
                                      //               offset: labelController
                                      //                   .selection
                                      //                   .extentOffset),
                                      //         ),
                                      //       );
                                      //       widget.onNameChanged(
                                      //           labelController.text);
                                      //     },
                                      //     textInputAction: TextInputAction.next,
                                      //   ),
                                      // ),
                                      Expanded(
                                          flex: 5,
                                          child: TextInputTitle(
                                            title: AppStrings.labelDayHours,
                                            textEditingController:
                                                labelController,
                                            validator: widget.validLabel,
                                            onChanged: widget.onNameChanged,
                                            hintText:
                                                AppStrings.abbreviationName,
                                            submitted: submitted,
                                          ))
                                    ],
                                  ));
                            })),
                        const Spacer(),
                        Expanded(
                            flex: 3,
                            child:
                                LayoutBuilder(builder: (context, constraints) {
                              return SizedBox(
                                  width: constraints.maxWidth / 1.5,
                                  height: constraints.maxHeight,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: TitleValidated(
                                            title: AppStrings.dayDosesAmount,
                                            condition: ((context
                                                        .read<
                                                            DayHoursDoseFormBloc>()
                                                        .state
                                                        .dayHoursDose
                                                        .doseHours
                                                        .length ==
                                                    0) &&
                                                (submitted))),
                                      ),
                                      Expanded(
                                        child: IntegerInputBox(
                                            initialValue: 0,
                                            minValue: 0,
                                            maxValue: 99,
                                            onChanged: (int newInt) {
                                              listHours = List.generate(
                                                  newInt,
                                                  (index) => HourTime(TimeOfDay(
                                                      hour: (((24 * index) ~/
                                                                  newInt) +
                                                              7) %
                                                          24,
                                                      minute: 0)));
                                              context
                                                  .read<DayHoursDoseFormBloc>()
                                                  .add(DayHoursDoseFormEvent
                                                      .listHoursChanged(
                                                          listHours));
                                            }),
                                      ),
                                    ],
                                  ));
                            })),
                        const Spacer(),
                        (context
                                    .read<DayHoursDoseFormBloc>()
                                    .state
                                    .dayHoursDose
                                    .doseHours
                                    .length >
                                0)
                            ? Expanded(
                                flex: 3,
                                child: LayoutBuilder(
                                    builder: (context, constraints) {
                                  return SizedBox(
                                      width: constraints.maxWidth / 1.5,
                                      height: constraints.maxHeight,
                                      child: Center(
                                        child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: context
                                              .read<DayHoursDoseFormBloc>()
                                              .state
                                              .dayHoursDose
                                              .doseHours
                                              .length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            List currentList = context
                                                .read<DayHoursDoseFormBloc>()
                                                .state
                                                .dayHoursDose
                                                .doseHours
                                                .value
                                                .fold((l) {
                                              context
                                                  .read<StateRendererBloc>()
                                                  .add(const StateRendererEvent
                                                      .popUpError(
                                                    title: AppStrings
                                                        .unableToReadError,
                                                    message: AppStrings
                                                        .unableToReadErrorExplain,
                                                  ));
                                              return [];
                                            }, (r) {
                                              return r.asList();
                                            });
                                            return DigitalWatch(
                                              constraints: constraints,
                                              time: currentList[index],
                                              index: index,
                                            );
                                          },
                                        ),
                                      ));
                                }))
                            : const Spacer(),
                        Expanded(
                          flex: 5,
                          child: CancelCreateButtonsRow(onCreate: () {
                            if (widget.validLabel() == null &&
                                widget.validHours() == null) {
                              widget.onSubmit();
                            }
                            setState(() {
                              submitted = true;
                            });
                          }),
                        ),
                        // ElevatedButton(
                        //     onPressed: () {
                        //       if (_key.currentState!.validate()) {
                        //         widget.onSubmit();
                        //       }
                        //       setState(() {
                        //         submitted = true;
                        //       });
                        //     },
                        //     child: const Text(AppStrings.create))
                      ])));
        },
      );
    });
  }
}
