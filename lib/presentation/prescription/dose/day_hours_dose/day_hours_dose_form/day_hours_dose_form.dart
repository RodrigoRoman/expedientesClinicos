import 'package:expedientes_clinicos/application/medicine/dose/dose_components/day_hours_dose/day_hours_dose_form/day_hours_dose_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/day_hours_doses.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/integer_input.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/title_validated.dart';
import 'package:expedientes_clinicos/presentation/prescription/dose/day_hours_dose/day_hours_dose_form/widgets/digital_watch.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:expedientes_clinicos/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

class DayHoursDoseForm extends StatefulWidget {
  final DayHoursDose dayHoursDose;
  final Function onNameChanged;
  final Function? onCreated;
  final Function onSubmit;
  final Function validLabel;
  const DayHoursDoseForm(
      {required this.dayHoursDose,
      required this.validLabel,
      required this.onCreated,
      required this.onNameChanged,
      required this.onSubmit,
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
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        width: constraints.maxWidth,
        height: constraints.maxHeight,
        child: Form(
          key: _key,
          autovalidateMode: AutovalidateMode.disabled,
          child: BlocConsumer<DayHoursDoseFormBloc, DayHoursDoseFormState>(
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
                        widget.onCreated?.call(state.dayHoursDose);
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
                        flex: 5,
                        child: LayoutBuilder(builder: (context, constraints) {
                          return SizedBox(
                              width: constraints.maxWidth / 1.5,
                              height: constraints.maxHeight,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: TitleValidated(
                                        title: AppStrings.labelDayHours,
                                        condition:
                                            ((labelController.text == '') &&
                                                (submitted))),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: TextFormField(
                                      maxLines: 3,
                                      controller: labelController,
                                      validator: (_) => widget.validLabel(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                      textAlign: TextAlign.center,
                                      textCapitalization:
                                          TextCapitalization.sentences,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: AppStrings.labelDayHours,
                                          hintStyle: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  color: Theme.of(context)
                                                      .canvasColor)),
                                      keyboardType: TextInputType.text,
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
                                        maxValue: null,
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
                                                  .listHoursChanged(listHours));
                                        }),
                                  ),
                                ],
                              ));
                        })),
                    Spacer(),
                    (context
                                .read<DayHoursDoseFormBloc>()
                                .state
                                .dayHoursDose
                                .doseHours
                                .length >
                            0)
                        ? Expanded(
                            flex: 3,
                            child:
                                LayoutBuilder(builder: (context, constraints) {
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
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        List currentList = context
                                            .read<DayHoursDoseFormBloc>()
                                            .state
                                            .dayHoursDose
                                            .doseHours
                                            .value
                                            .fold((l) {
                                          print('badddd');
                                          context.read<StateRendererBloc>().add(
                                              StateRendererEvent.popUpError(
                                                  AppStrings.unableToReadError,
                                                  AppStrings
                                                      .unableToReadErrorExplain,
                                                  null,
                                                  300,
                                                  500));
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
                        : Spacer(),
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
