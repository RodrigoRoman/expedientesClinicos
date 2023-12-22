import 'package:expedientes_clinicos/application/medicine/dose/dose_components/week_days_dose/week_days_dose_form/week_days_dose_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/week_days_dose.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/buttons_group/cancel_create_row.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/title_validated.dart';
import 'package:expedientes_clinicos/presentation/resources/const_style_widgets.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:expedientes_clinicos/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

class WeekDaysDoseForm extends StatefulWidget {
  final WeekDaysDose weekDaysDose;
  final Function onNameChanged;
  final Function onSubmit;
  final Function? onCreated;
  final Function validLabel;
  const WeekDaysDoseForm(
      {required this.weekDaysDose,
      required this.validLabel,
      required this.onCreated,
      required this.onNameChanged,
      required this.onSubmit,
      super.key});

  @override
  State<WeekDaysDoseForm> createState() => _WeekDaysDoseFormState();
}

class _WeekDaysDoseFormState extends State<WeekDaysDoseForm> {
  final _key = GlobalKey<FormState>();
  final TextEditingController labelController = TextEditingController();
  int doseAmount = 0;
  bool submitted = false;
  List<int> listWeekDays = List.generate(7, (index) => index);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        width: constraints.maxWidth,
        height: constraints.maxHeight,
        child: Form(
          key: _key,
          autovalidateMode: AutovalidateMode.disabled,
          child: BlocConsumer<WeekDaysDoseFormBloc, WeekDaysDoseFormState>(
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
                        widget.onCreated?.call(state.weekDays);
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
                                        title: AppStrings.labelWeekDays,
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
                          return Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: (submitted && listWeekDays.isEmpty)
                                      ? Border.all(width: 4, color: Colors.red)
                                      : null),
                              width: constraints.maxWidth / 1.5,
                              height: constraints.maxHeight / 2,
                              child: Center(
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 7,
                                  itemExtent: constraints.maxWidth / 5,
                                  // padding: EdgeInsets.all(AppSize.s8),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return AnimatedContainer(
                                      duration:
                                          const Duration(microseconds: 500),
                                      margin: const EdgeInsets.all(AppSize.s4),
                                      width: constraints.maxWidth / 4,
                                      child: TextButton(
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius: BoderRadiusStyle
                                                      .weekDayButton)),
                                          backgroundColor:
                                              MaterialStateColor.resolveWith(
                                                  (states) => states.contains(
                                                          MaterialState.pressed)
                                                      // darker green when pressed
                                                      ? Theme.of(context)
                                                          .colorScheme
                                                          .surface
                                                      : !(listWeekDays
                                                              .contains(index))
                                                          ? Theme.of(context)
                                                              .colorScheme
                                                              .surface
                                                          : Theme.of(context)
                                                              .colorScheme
                                                              .onBackground // regular green
                                                  ),
                                        ),
                                        onPressed: () {
                                          listWeekDays.contains(index)
                                              ? listWeekDays.remove(index)
                                              : listWeekDays.add(index);
                                          listWeekDays.sort();
                                          context
                                              .read<WeekDaysDoseFormBloc>()
                                              .add(WeekDaysDoseFormEvent
                                                  .weekDaysChanged(
                                                      listWeekDays));
                                        },
                                        child: FittedBox(
                                            child: Text(
                                                AppStrings.weekDays[index])),
                                      ),
                                    );
                                  },
                                ),
                              ));
                        })),
                    const Spacer(),
                    Expanded(
                      flex: 3,
                      child: SizedBox(
                        width: constraints.maxWidth / 1.2,
                        child: CancelCreateButtonsRow(onCreate: () {
                          if (widget.validLabel() == null &&
                              listWeekDays.isNotEmpty) {
                            widget.onSubmit();
                          }
                          setState(() {
                            submitted = true;
                          });
                        }),
                      ),
                    ),
                  ]);
            },
          ),
        ),
      );
    });
  }
}
