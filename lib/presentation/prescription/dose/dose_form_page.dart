import 'package:expedientes_clinicos/application/medicine/dose/dose_core/dose_form/dose_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/time_interval.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/day_hours_doses.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/week_days_dose.dart';
import 'package:expedientes_clinicos/injection.dart';
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
    final double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
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
                                      print('error');
                                      print(failure);
                                      context.read<StateRendererBloc>().add(
                                          StateRendererEvent.popUpError(
                                              AppStrings.couldNotSaveImage,
                                              AppStrings.somethingWentWrong,
                                              null,
                                              300,
                                              500));
                                    },
                                    insufficientPermissions: (e) {
                                      context.read<StateRendererBloc>().add(
                                          StateRendererEvent.popUpError(
                                              AppStrings
                                                  .insuficcientPermissions,
                                              AppStrings
                                                  .insuficcientPermissionsExplain,
                                              null,
                                              300,
                                              500));
                                    },
                                    unableToCreate: (e) {
                                      context.read<StateRendererBloc>().add(
                                          StateRendererEvent.popUpError(
                                              AppStrings.unableToCreate,
                                              AppStrings.unableToCreateExplain,
                                              null,
                                              300,
                                              500));
                                    },
                                    orElse: () {
                                      context.read<StateRendererBloc>().add(
                                          StateRendererEvent.popUpError(
                                              AppStrings.genericError,
                                              AppStrings.genericErrorExplain,
                                              null,
                                              300,
                                              500));
                                    },
                                  ), (r) {
                            widget.onCreated?.call(state.dose);
                            context.read<StateRendererBloc>().add(
                                StateRendererEvent.popUpSuccess(
                                    AppStrings.success,
                                    AppStrings.successfullyCreated,
                                    null,
                                    300,
                                    500));
                          }));
                },
                builder: (context, state) {
                  // WidgetsBinding.instance.addPostFrameCallback((_) {
                  //   if (WidgetsBinding.instance.window.viewInsets.bottom >
                  //       0.0) {
                  //     scrollController.animateTo(
                  //         WidgetsBinding.instance.window.viewInsets.bottom / 6,
                  //         duration: Duration(milliseconds: 100),
                  //         curve: Curves.bounceIn);
                  //     // Keyboard is visible.
                  //   }
                  // });
                  double unitHeight = (constraints.maxWidth) / 10;
                  return SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      children: [
                        SizedBox(height: unitHeight),
                        SizedBox(
                          height: unitHeight * 14,
                          child: BlocProvider(
                            create: (context) => getIt<DoseFormBloc>(),
                            child: BlocConsumer<DoseFormBloc, DoseFormState>(
                              listener: (context, state) {},
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
                                  WidgetsBinding.instance
                                      .addPostFrameCallback((_) {
                                    context.read<DoseFormBloc>().add(
                                        DoseFormEvent.labelChanged(
                                            labelController.text));

                                    labelController.value = TextEditingValue(
                                        text:
                                            "$dayDose $weekDays $totalDuration",
                                        selection: TextSelection.fromPosition(
                                          TextPosition(
                                              offset: labelController
                                                  .selection.extentOffset),
                                        ));
                                  });
                                }

                                return Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Spacer(flex: 1),
                                      Expanded(
                                        flex: 2,
                                        child: Column(
                                          children: [
                                            Expanded(
                                                child: TitleValidated(
                                                    title: AppStrings
                                                        .labelDayHours,
                                                    condition: context
                                                            .read<
                                                                DoseFormBloc>()
                                                            .state
                                                            .dose
                                                            .dayHoursDose ==
                                                        DayHoursDose.empty())),
                                            Expanded(
                                              flex: 2,
                                              child:
                                                  DropdownSearchDayHoursDose(),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Spacer(flex: 1),
                                      Expanded(
                                          flex: 2,
                                          child: Column(
                                            children: [
                                              Expanded(
                                                  child: TitleValidated(
                                                      title: AppStrings
                                                          .labelWeekDays,
                                                      condition: context
                                                              .read<
                                                                  DoseFormBloc>()
                                                              .state
                                                              .dose
                                                              .weekDays ==
                                                          WeekDaysDose
                                                              .empty())),
                                              Expanded(
                                                flex: 2,
                                                child: DropdownSearchWeekDays(),
                                              ),
                                            ],
                                          )),
                                      Spacer(flex: 1),
                                      Expanded(
                                          flex: 2,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  flex: 2,
                                                  child: Column(
                                                    children: [
                                                      Expanded(
                                                          child: TitleValidated(
                                                              title: AppStrings
                                                                  .labelDuration,
                                                              condition: context
                                                                      .read<
                                                                          DoseFormBloc>()
                                                                      .state
                                                                      .dose
                                                                      .duration ==
                                                                  TimeInterval
                                                                      .empty())),
                                                      Expanded(
                                                          flex: 2,
                                                          child:
                                                              DropdownSearchDoseDuration()),
                                                    ],
                                                  ))
                                            ],
                                          )),
                                      Spacer(flex: 1),
                                      Expanded(
                                          flex: 2,
                                          child: Column(
                                            children: [
                                              Expanded(
                                                  child: TitleValidated(
                                                      title: AppStrings
                                                          .labelShowUp,
                                                      condition: context
                                                              .read<
                                                                  DoseFormBloc>()
                                                              .state
                                                              .dose
                                                              .label
                                                              .value
                                                              .fold(
                                                                  (l) =>
                                                                      AppStrings
                                                                          .empty,
                                                                  (r) => r) ==
                                                          AppStrings.empty)),
                                              Expanded(
                                                  flex: 2,
                                                  child: TextFormField(
                                                    maxLines: 2,
                                                    controller: labelController,
                                                    textAlign: TextAlign.center,
                                                    textCapitalization:
                                                        TextCapitalization
                                                            .sentences,
                                                    decoration: InputDecoration(
                                                        suffix: (labelController
                                                                    .text !=
                                                                '')
                                                            ? Material(
                                                                elevation: 3,
                                                                shape:
                                                                    CircleBorder(),
                                                                clipBehavior:
                                                                    Clip.hardEdge,
                                                                child:
                                                                    GestureDetector(
                                                                  onTap: () {
                                                                    labelController
                                                                        .text = '';
                                                                    context
                                                                        .read<
                                                                            DoseFormBloc>()
                                                                        .add(DoseFormEvent.labelChanged(
                                                                            labelController.text));
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .cancel_rounded,
                                                                    size: AppSize
                                                                        .s18,
                                                                  ),
                                                                ),
                                                              )
                                                            : SizedBox.shrink(),
                                                        border:
                                                            InputBorder.none,
                                                        hintText: AppStrings
                                                            .labelShowUp),
                                                    style: TextStyle(
                                                      fontSize: AppSize.s12,
                                                    ),
                                                    keyboardType:
                                                        TextInputType.text,
                                                    textInputAction:
                                                        TextInputAction.next,
                                                    onChanged: (value) {
                                                      labelController.value =
                                                          TextEditingValue(
                                                              text: value,
                                                              selection:
                                                                  TextSelection
                                                                      .fromPosition(
                                                                TextPosition(
                                                                    offset: labelController
                                                                        .selection
                                                                        .extentOffset),
                                                              ));
                                                      context
                                                          .read<DoseFormBloc>()
                                                          .add(DoseFormEvent
                                                              .labelChanged(
                                                                  value));
                                                    },
                                                  )

                                                  // InputFullName(
                                                  //     label:
                                                  //         AppStrings.labelShowUp,
                                                  //     fullName: context
                                                  //         .read<DoseFormBloc>()
                                                  //         .state
                                                  //         .dose
                                                  //         .label,
                                                  //     onChanged: (value) {
                                                  //       labelController.text =
                                                  //           value;
                                                  //       labelController
                                                  //               .selection =
                                                  //           TextSelection.fromPosition(
                                                  //               TextPosition(
                                                  //                   offset: labelController
                                                  //                       .text
                                                  //                       .length));

                                                  //       context
                                                  //           .read<DoseFormBloc>()
                                                  //           .add(DoseFormEvent
                                                  //               .labelChanged(
                                                  //                   labelController
                                                  //                       .text));
                                                  //     },
                                                  //     textController:
                                                  //         labelController),
                                                  ),
                                            ],
                                          ))
                                    ]);
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: unitHeight,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              // if (_key.currentState!.validate()) {
                              print('dayDose!');
                              print(context
                                  .read<DoseFormBloc>()
                                  .state
                                  .dose
                                  .dayHoursDose);
                              print('weekDays!');
                              print(context
                                  .read<DoseFormBloc>()
                                  .state
                                  .dose
                                  .weekDays);
                              print('duration');
                              print(context
                                  .read<DoseFormBloc>()
                                  .state
                                  .dose
                                  .duration);
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
                                      TimeInterval.empty()) print('VALIDATED');
                              print(context.read<DoseFormBloc>().state.dose);
                              widget.onSubmit();
                              // }
                              setState(() {
                                submitted = true;
                              });
                            },
                            child: const Text(AppStrings.create))
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
