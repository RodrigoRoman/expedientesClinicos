import 'dart:io';

import 'package:expedientes_clinicos/application/indication/indication_form/indication_form_bloc.dart';
import 'package:expedientes_clinicos/application/indication/indication_form/medicine_indication_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/title_validated.dart';
import 'package:expedientes_clinicos/presentation/medicine/generic_medicine/medicine_category/drop_down_medicine_category.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
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

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MedicineIndicationFormBloc, IndicationFormState>(
        listener: (context, state) {
      state.saveFailureOrSuccessOption.fold(() {
        if (state.isSaving) {
          context.read<StateRendererBloc>().add(StateRendererEvent.popUpLoading(
              AppStrings.saving,
              AppStrings.actionInProgressExplain,
              null,
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
                                  null,
                                  300,
                                  500));
                        },
                        insufficientPermissions: (e) {
                          context.read<StateRendererBloc>().add(
                              StateRendererEvent.popUpError(
                                  AppStrings.insuficcientPermissions,
                                  AppStrings.insuficcientPermissionsExplain,
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
                context.read<StateRendererBloc>().add(
                    StateRendererEvent.popUpSuccess(AppStrings.success,
                        AppStrings.successfullyCreated, null, 300, 500));
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
                        flex: 2,
                        child: Column(
                          children: [
                            Expanded(
                                child: TitleValidated(
                                    title: AppStrings.categoryIndication,
                                    condition: indicationNameController.text ==
                                        AppStrings.empty)),
                            Expanded(child: DropdownSearchMedicineCategory()),
                          ],
                        )),
                    const Spacer(),
                    Expanded(
                        flex: 2,
                        child: LayoutBuilder(builder: (context, constraints) {
                          return SizedBox(
                              width: constraints.maxWidth / 1.5,
                              height: constraints.maxHeight,
                              child: Column(
                                children: [
                                  Expanded(
                                      child: TitleValidated(
                                          title: AppStrings.labelIndication,
                                          condition:
                                              indicationNameController.text ==
                                                  AppStrings.empty)),
                                  Expanded(
                                    child: TextFormField(
                                      controller: indicationNameController,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!,
                                      textAlign: TextAlign.center,
                                      textCapitalization:
                                          TextCapitalization.sentences,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: AppStrings.labelIndication,
                                          hintStyle: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  color: Theme.of(context)
                                                      .canvasColor)),
                                      keyboardType: TextInputType.text,
                                      onChanged: (value) {
                                        indicationNameController.value =
                                            TextEditingValue(
                                                text: value,
                                                selection:
                                                    TextSelection.fromPosition(
                                                  TextPosition(
                                                      offset:
                                                          indicationNameController
                                                              .selection
                                                              .extentOffset),
                                                ));
                                        context
                                            .read<MedicineIndicationFormBloc>()
                                            .add(IndicationFormEvent
                                                .onIndicationNameChanged(
                                                    value));
                                      },
                                      textInputAction: TextInputAction.next,
                                    ),
                                  ),
                                ],
                              ));
                        })),
                    Spacer(),
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(200,
                                50), // set the width and height of the button
                          ),
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
                                    Category.empty())) {}
                          },
                          child: const Text(AppStrings.create)),
                    ),
                    Spacer(
                      flex: 2,
                    )
                  ]),
            ),
          );
        },
      );
    });
  }
}
