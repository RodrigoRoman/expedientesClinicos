import 'dart:io';

import 'package:expedientes_clinicos/application/indication/indication_form/indication_form_bloc.dart';
import 'package:expedientes_clinicos/application/indication/indication_form/medicine_indication_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/presentation/common/widget_components/buttons/main_action_button.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_fields/text_input_title.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/title_validated.dart';
import 'package:expedientes_clinicos/presentation/prescription/indications/indicationCategory/drop_down_indication.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:expedientes_clinicos/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IndicationForm extends StatefulWidget {
  final Indication indication;
  final Function onCreated;
  // final Function onSubmit;
  // final Function validName;
  IndicationForm(
      {required this.indication,
      // required this.onSubmit,
      required this.onCreated,
      // required this.validName,
      super.key});

  @override
  State<IndicationForm> createState() => _IndicationFormState();
}

class _IndicationFormState extends State<IndicationForm> {
  final _key = GlobalKey<FormState>();
  final TextEditingController indicationNameController =
      TextEditingController();
  final bool submitted = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MedicineIndicationFormBloc, IndicationFormState>(
        listener: (context, state) {
      state.saveFailureOrSuccessOption.fold(() {
        if (state.isSaving) {
          context
              .read<StateRendererBloc>()
              .add(const StateRendererEvent.popUpLoading(
                title: AppStrings.saving,
                message: AppStrings.actionInProgressExplain,
                until: FullScreenStatePageRoute.name,
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
                context.read<StateRendererBloc>().add(
                    const StateRendererEvent.popUpSuccess(
                        title: AppStrings.success,
                        message: AppStrings.successfullyCreated));
              }));
    }, builder: (context, state) {
      return Form(
          key: _key,
          autovalidateMode: AutovalidateMode.disabled,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(AppSize.s10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: InputFieldHeight.xs),
                    SizedBox(
                        height: InputFieldHeight.l,
                        child: TextInputTitle(
                          title: AppStrings.labelIndication,
                          textEditingController: indicationNameController,
                          submitted: submitted,
                          onChanged: (value) {
                            indicationNameController.value = TextEditingValue(
                                text: value,
                                selection: TextSelection.fromPosition(
                                  TextPosition(
                                      offset: indicationNameController
                                          .selection.extentOffset),
                                ));
                            context.read<MedicineIndicationFormBloc>().add(
                                IndicationFormEvent.onIndicationNameChanged(
                                    value));
                          },
                        )),
                    const SizedBox(
                      height: InputFieldHeight.s,
                    ),
                    const SizedBox(
                      height: InputFieldHeight.m,
                      child: DropdownSearchIndicationCategory(),
                    ),
                    const SizedBox(
                      height: InputFieldHeight.m,
                    ),
                    SizedBox(
                        height: InputFieldHeight.s,
                        child: MainActionButton(
                          onPressed: () {
                            if ((context
                                        .read<MedicineIndicationFormBloc>()
                                        .state
                                        .indication
                                        .indicationName !=
                                    FullName('')) &&
                                (context
                                        .read<MedicineIndicationFormBloc>()
                                        .state
                                        .indication
                                        .indicationCategory !=
                                    Category.empty())) {
                              context
                                  .read<MedicineIndicationFormBloc>()
                                  .add(IndicationFormEvent.saved());
                            }
                          },
                          text: AppStrings.create,
                        )

                        // ElevatedButton(
                        //     style: ElevatedButton.styleFrom(
                        //       fixedSize: Size(
                        //           constraints.maxWidth / 2,
                        //           constraints.maxHeight /
                        //               13), // set the width and height of the button
                        //     ),
                        // onPressed: () {
                        //   if ((context
                        //               .read<MedicineIndicationFormBloc>()
                        //               .state
                        //               .indication
                        //               .indicationName !=
                        //           FullName('')) &&
                        //       (context
                        //               .read<MedicineIndicationFormBloc>()
                        //               .state
                        //               .indication
                        //               .indicationCategory !=
                        //           Category.empty())) {
                        //     context
                        //         .read<MedicineIndicationFormBloc>()
                        //         .add(IndicationFormEvent.saved());
                        //   }
                        // },
                        //     child: const Text(AppStrings.create)),
                        ),
                    SizedBox(
                      height: InputFieldHeight.xs,
                    )
                  ]),
            ),
          ));
    });
  }
}
