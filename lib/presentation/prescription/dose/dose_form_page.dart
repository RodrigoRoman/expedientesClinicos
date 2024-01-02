import 'package:expedientes_clinicos/application/medicine/dose/dose_core/dose_form/dose_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/time_interval.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/day_hours_doses.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/week_days_dose.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_components/buttons/main_action_button.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_fields/text_input_title.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_full_name.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/title_validated.dart';
import 'package:expedientes_clinicos/presentation/prescription/dose/day_hours_dose/drop_down_day_hours_dose.dart';
import 'package:expedientes_clinicos/presentation/prescription/dose/dose_duration/drop_down_dose_duration.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'week_days_dose/drop_down_week_days.dart';

class DoseTimeForm extends StatefulWidget {
  final Dose dose;
  final Function onCreated;
  final Function onSubmit;
  const DoseTimeForm({
    required this.onCreated,
    required this.dose,
    required this.onSubmit,
    super.key,
  });

  @override
  State<DoseTimeForm> createState() => _DoseTimeFormState();
}

class _DoseTimeFormState extends State<DoseTimeForm> {
  final _key = GlobalKey<FormState>();
  final TextEditingController labelController = TextEditingController();
  bool submitted = false;
  ScrollController scrollController = ScrollController();
  bool comingFromKeyboard = true;
  String totalDuration = '';
  String dayDose = '';
  String weekDays = '';
  List<String> listWord = ['', '', ''];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Center(
        child: GestureDetector(
          onTap: () {
            // Create a FocusScopeNode object for the current context
            final currentFocus = FocusScope.of(context);

            // Call the unfocus method to remove focus from any child widgets
            currentFocus.unfocus();
          },
          child: SizedBox(
            width: constraints.maxWidth / 1.2,
            height: constraints.maxHeight,
            child: Form(
              key: _key,
              autovalidateMode: AutovalidateMode.disabled,
              child: BlocConsumer<DoseFormBloc, DoseFormState>(
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
                                      context.read<StateRendererBloc>().add(
                                              const StateRendererEvent
                                                  .popUpError(
                                            title: AppStrings.couldNotSaveImage,
                                            message:
                                                AppStrings.somethingWentWrong,
                                          ));
                                    },
                                    insufficientPermissions: (e) {
                                      context.read<StateRendererBloc>().add(
                                              const StateRendererEvent
                                                  .popUpError(
                                            title: AppStrings
                                                .insuficcientPermissions,
                                            message: AppStrings
                                                .insuficcientPermissionsExplain,
                                          ));
                                    },
                                    unableToCreate: (e) {
                                      context.read<StateRendererBloc>().add(
                                              const StateRendererEvent
                                                  .popUpError(
                                            title: AppStrings.unableToCreate,
                                            message: AppStrings
                                                .unableToCreateExplain,
                                          ));
                                    },
                                    orElse: () {
                                      context.read<StateRendererBloc>().add(
                                              const StateRendererEvent
                                                  .popUpError(
                                            title: AppStrings.genericError,
                                            message:
                                                AppStrings.genericErrorExplain,
                                          ));
                                    },
                                  ), (r) {
                            widget.onCreated?.call(state.dose);
                            context
                                .read<StateRendererBloc>()
                                .add(const StateRendererEvent.popUpSuccess(
                                  title: AppStrings.success,
                                  message: AppStrings.successfullyCreated,
                                ));
                          }));
                },
                builder: (context, state) {
                  dayDose = context
                      .read<DoseFormBloc>()
                      .state
                      .dose
                      .dayHoursDose
                      .label
                      .value
                      .fold((l) => '', (r) => r);
                  weekDays = context
                      .read<DoseFormBloc>()
                      .state
                      .dose
                      .weekDays
                      .label
                      .value
                      .fold((l) => '', (r) => r);
                  totalDuration = context
                      .read<DoseFormBloc>()
                      .state
                      .dose
                      .duration
                      .label
                      .value
                      .fold((l) => '', (r) => r);
                  //Define the label of the timeDose with the previously selected labels for dayHours,weekDay,totalDuration
                  bool equals = listEquals(listWord, [
                    dayDose,
                    weekDays,
                    totalDuration,
                  ]);

                  if (!equals) {
                    listWord = [
                      dayDose,
                      weekDays,
                      totalDuration,
                    ];
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      context.read<DoseFormBloc>().add(
                          DoseFormEvent.labelChanged(labelController.text));

                      labelController.value = TextEditingValue(
                          text: "$dayDose, $weekDays durante $totalDuration",
                          selection: TextSelection.fromPosition(
                            TextPosition(
                                offset: labelController.selection.extentOffset),
                          ));
                    });
                  }
                  double unitHeight = (constraints.maxWidth) / 10;
                  return SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      children: [
                        SizedBox(height: unitHeight),
                        SizedBox(
                            height: unitHeight * 14,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Spacer(flex: 1),
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      children: [
                                        const Expanded(
                                          flex: 2,
                                          child: DropdownSearchDayHoursDose(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(flex: 1),
                                  Expanded(
                                      flex: 2,
                                      child: Column(
                                        children: [
                                          const Expanded(
                                            flex: 2,
                                            child: DropdownSearchWeekDays(),
                                          ),
                                        ],
                                      )),
                                  const Spacer(flex: 1),
                                  Expanded(
                                      flex: 2,
                                      child: Row(
                                        children: [
                                          Expanded(
                                              flex: 2,
                                              child:
                                                  DropdownSearchDoseDuration()),
                                        ],
                                      )),
                                  const Spacer(flex: 1),
                                  Expanded(
                                      flex: 4,
                                      child: TextInputTitle(
                                        title: AppStrings.labelShowUp,
                                        maxLines: 3,
                                        textEditingController: labelController,
                                        submitted: submitted,
                                        validator: () => context
                                            .read<DoseFormBloc>()
                                            .state
                                            .dose
                                            .label
                                            .value
                                            .fold((l) => AppStrings.empty,
                                                (r) => r),
                                        onChanged: (value) {
                                          labelController.value =
                                              TextEditingValue(
                                                  text: value,
                                                  selection: TextSelection
                                                      .fromPosition(
                                                    TextPosition(
                                                        offset: labelController
                                                            .selection
                                                            .extentOffset),
                                                  ));
                                          context.read<DoseFormBloc>().add(
                                              DoseFormEvent.labelChanged(
                                                  value));
                                        },
                                      )),

                                  // Column(
                                  //   children: [

                                  //     Expanded(
                                  //         child: TitleValidated(
                                  //             title: AppStrings.labelShowUp,
                                  //             condition: context
                                  //                     .read<DoseFormBloc>()
                                  //                     .state
                                  //                     .dose
                                  //                     .label
                                  //                     .value
                                  //                     .fold(
                                  //                         (l) => AppStrings
                                  //                             .empty,
                                  //                         (r) => r) ==
                                  //                 AppStrings.empty)),
                                  //     Expanded(
                                  //         flex: 2,
                                  //         child: TextFormField(
                                  //           maxLines: 2,
                                  //           controller: labelController,
                                  //           textAlign: TextAlign.center,
                                  //           textCapitalization:
                                  //               TextCapitalization
                                  //                   .sentences,
                                  //           decoration: InputDecoration(
                                  //               suffix: (labelController
                                  //                           .text !=
                                  //                       '')
                                  //                   ? Material(
                                  //                       elevation: 3,
                                  //                       shape:
                                  //                           const CircleBorder(),
                                  //                       clipBehavior:
                                  //                           Clip.hardEdge,
                                  //                       child:
                                  //                           GestureDetector(
                                  //                         onTap: () {
                                  //                           labelController
                                  //                               .text = '';
                                  //                           context
                                  //                               .read<
                                  //                                   DoseFormBloc>()
                                  //                               .add(DoseFormEvent.labelChanged(
                                  //                                   labelController
                                  //                                       .text));
                                  //                         },
                                  //                         child: const Icon(
                                  //                           Icons
                                  //                               .cancel_rounded,
                                  //                           size:
                                  //                               AppSize.s18,
                                  //                         ),
                                  //                       ),
                                  //                     )
                                  //                   : const SizedBox
                                  //                       .shrink(),
                                  //               border: InputBorder.none,
                                  //               hintText:
                                  //                   AppStrings.labelShowUp),
                                  //           style: const TextStyle(
                                  //             fontSize: AppSize.s12,
                                  //           ),
                                  //           keyboardType:
                                  //               TextInputType.text,
                                  //           textInputAction:
                                  //               TextInputAction.next,
                                  //           onChanged: (value) {
                                  //             labelController.value =
                                  //                 TextEditingValue(
                                  //                     text: value,
                                  //                     selection:
                                  //                         TextSelection
                                  //                             .fromPosition(
                                  //                       TextPosition(
                                  //                           offset: labelController
                                  //                               .selection
                                  //                               .extentOffset),
                                  //                     ));
                                  //             context
                                  //                 .read<DoseFormBloc>()
                                  //                 .add(DoseFormEvent
                                  //                     .labelChanged(value));
                                  //           },
                                  //         )),
                                  //   ],
                                  // ))
                                ])),
                        SizedBox(
                          height: unitHeight,
                        ),
                        SizedBox(
                          height: unitHeight * 2,
                          child: MainActionButton(
                            onPressed: () {
                              if ((context
                                          .read<DoseFormBloc>()
                                          .state
                                          .dose
                                          .dayHoursDose !=
                                      DayHoursDose.empty()) &&
                                  context
                                          .read<DoseFormBloc>()
                                          .state
                                          .dose
                                          .weekDays !=
                                      WeekDaysDose.empty() &&
                                  context
                                          .read<DoseFormBloc>()
                                          .state
                                          .dose
                                          .duration !=
                                      TimeInterval.empty()) {
                                widget.onSubmit();
                              }
                              setState(() {
                                submitted = true;
                              });
                            },
                            text: AppStrings.create,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      );
    });
  }
}
