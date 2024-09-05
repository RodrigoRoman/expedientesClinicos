import 'package:auto_route/annotations.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:expedientes_clinicos/application/categories/category_form/category_form_bloc.dart';
import 'package:expedientes_clinicos/application/categories/category_form/dynamic_category_form_bloc.dart';
import 'package:expedientes_clinicos/application/dynamic_form/dynamic_form_form/dynamic_form_form_bloc.dart';
import 'package:expedientes_clinicos/application/dynamic_form/dynamic_form_section_components/dynamic_form_section_components_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/core/view_models/drop_down_view_model.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/filed_types/field_types.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/form_element.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/form_row.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_section.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_components/buttons/main_action_button.dart';
import 'package:expedientes_clinicos/presentation/common/widget_components/buttons/plus_button.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/card_item_drop_down.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/title_validated.dart';
import 'package:expedientes_clinicos/presentation/patient_section/dynamic_form_structure/componenets/define_field.dart';
import 'package:expedientes_clinicos/presentation/patient_section/utils/functions.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:expedientes_clinicos/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

@RoutePage()
class DynamicFormFillablePage extends StatefulWidget {
  final FormSection incommingFormSection;
  const DynamicFormFillablePage(
      {required this.incommingFormSection, super.key});

  @override
  State<DynamicFormFillablePage> createState() =>
      _DynamicFormFillablePageState();
}

class _DynamicFormFillablePageState extends State<DynamicFormFillablePage> {
  TextEditingController formName = TextEditingController();
  TextEditingController sectionType = TextEditingController();
  // final Map<String, TextEditingController> _controllers = {};

  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     context.read<DynamicFormFormBloc>().add(
  //         DynamicFormFormEvent.intial(optionOf(widget.incommingFormSection)));
  //     print("===============================");
  //     print("FORM PASSED");
  //     print(widget.incommingFormSection);
  //   });
  // }

  @override
  void initState() {
    super.initState();

    // Initialize controllers for each form element in the incoming form section
    // widget.incommingFormSection.formRows.value.fold((ifLeft) => null, (rows) {
    //   for (final row in rows.asList()) {
    //     row.formElements.value.fold((ifLeft) => null, (elements) {
    //       for (final element in elements.asList()) {
    //         // Initialize a controller if not already done
    //         _controllers[
    //                 element.fieldId?.getOrCrash() ?? UniqueKey().toString()] =
    //             TextEditingController(text: element.value?.toString() ?? '');
    //       }
    //     });
    //   }
    // });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<DynamicFormFormBloc>().add(
          DynamicFormFormEvent.intial(optionOf(widget.incommingFormSection)));
    });
  }

  @override
  void dispose() {
    // Dispose of all controllers to avoid memory leaks
    // _controllers.forEach((key, controller) {
    //   controller.dispose();
    // });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DynamicFormFormBloc>()
        ..add(DynamicFormFormEvent.intial(some(widget.incommingFormSection))),
      child: BlocConsumer<DynamicFormFormBloc, DynamicFormFormState>(
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
                            unableToUploadImage: (e) {
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
                    // widget.onCreated?.call(state.medicine);
                    context
                        .read<StateRendererBloc>()
                        .add(const StateRendererEvent.popUpSuccess(
                          title: AppStrings.success,
                          message: AppStrings.successfullyCreated,
                          // until: FullScreenStatePageRoute.name,
                        ));
                  }));
          // state.ingredientCore.imgUrl.value;
        },
        builder: (context, state) {
          return LayoutBuilder(builder: (contex, constraints) {
            double height = constraints.maxHeight;
            double width = constraints.maxWidth;
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      height: height / 2,
                      width: width / 1,
                      padding: EdgeInsets.symmetric(horizontal: AppSize.s10),
                      child: Column(
                        children: [
                          Expanded(
                              flex: 3,
                              child: CardViewIItem(
                                  cardData:
                                      DropdownItemViewModel.fromFormSection(
                                          context
                                              .read<DynamicFormFormBloc>()
                                              .state
                                              .formSection),
                                  context: context,
                                  focusNode: FocusNode())),
                          const Spacer(),
                          Expanded(
                              flex: 3,
                              child: CardViewIItem(
                                  cardData: DropdownItemViewModel.fromCategory(
                                      context
                                          .read<DynamicFormFormBloc>()
                                          .state
                                          .formSection
                                          .category),
                                  context: context,
                                  focusNode: FocusNode())),
                          const Spacer(),
                        ],
                      )),
                  SizedBox(
                    height: height / 10,
                  ),
                  Container(
                      height: height,
                      width: width / 1,
                      padding: EdgeInsets.symmetric(horizontal: AppSize.s10),
                      child: Column(
                        children: [
                          Expanded(
                              child: TitleValidated(
                            title: AppStrings.defineSectionElements,
                            condition: true,
                          )),
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(AppSize.s22),
                              child: context
                                          .read<DynamicFormFormBloc>()
                                          .state
                                          .formSection
                                          .formRows
                                          .length ==
                                      0
                                  ? PlusButton(
                                      onPressed: () {
                                        context
                                            .read<StateRendererBloc>()
                                            .add(StateRendererEvent.popUpForm(
                                              title: AppStrings.createField,
                                              bodyWidget: DefineFieldForm(
                                                definedFormElement:
                                                    FormElement.fromColumn(
                                                        NonNegInt(0)),
                                                onAdded:
                                                    (FormElement formElement) {
                                                  context
                                                      .read<
                                                          DynamicFormSectionComponentsBloc>()
                                                      .add(
                                                          DynamicFormSectionComponentsEvent
                                                              .addFormRow(
                                                                  formElement,
                                                                  0));
                                                },
                                              ),
                                              until: AppStrings.popUp,
                                            ));
                                      },
                                    )
                                  : Column(
                                      children:
                                          context
                                              .read<DynamicFormFormBloc>()
                                              .state
                                              .formSection
                                              .formRows
                                              .value
                                              .fold(
                                                  (ifLeft) => [
                                                        Expanded(
                                                          child: Container(
                                                            color: Colors.red,
                                                          ),
                                                        )
                                                      ],
                                                  (ifRow) => ifRow
                                                      .map(
                                                          (FormRow formRow) =>
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: const EdgeInsets
                                                                      .symmetric(
                                                                      vertical:
                                                                          8.0),
                                                                  child: Row(
                                                                      children: formRow
                                                                          .formElements
                                                                          .value
                                                                          .fold(
                                                                              (ifLeft) => [
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        color: Colors.red,
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                              (ifForm) => ifForm.map((formElement) {
                                                                                    // final controller = _controllers[formElement.fieldId?.getOrCrash() ?? UniqueKey().toString()];

                                                                                    return Expanded(
                                                                                      child: Padding(
                                                                                        padding: EdgeInsets.symmetric(horizontal: AppSize.s10),
                                                                                        child: Column(children: [
                                                                                          Expanded(
                                                                                              child: TitleValidated(
                                                                                            title: formElement.promptName.value.fold((ifLeft) => ifLeft.toString(), (ifRight) => ifRight),
                                                                                            condition: true,
                                                                                          )),
                                                                                          Expanded(
                                                                                              flex: 3,
                                                                                              child: selectFieldWidget(
                                                                                                  formElement.fieldType.value.fold(
                                                                                                    (ifLeft) => FieldType.errorValue,
                                                                                                    (ifRight) => ifRight,
                                                                                                  ), (dynamic value) {
                                                                                                context.read<DynamicFormFormBloc>().add(DynamicFormFormEvent.changeFormElementValue(formElement, value, formRow.rowNum.getOrCrash()));
                                                                                              }))
                                                                                        ]),
                                                                                      ),
                                                                                    );
                                                                                  }).asList())),
                                                                ),
                                                              ))
                                                      .asList()),
                                    ),
                            ),
                          ),
                          Expanded(
                              child: MainActionButton(
                            onPressed: () {
                              context
                                  .read<DynamicFormFormBloc>()
                                  .state
                                  .formSection
                                  .formRows
                                  .getOrCrash()
                                  .map((formRow) => formRow.formElements
                                      .getOrCrash()
                                      .map((elment) => print(
                                          elment.value.toString() +
                                              "__" +
                                              elment.value.runtimeType
                                                  .toString())));
                            },
                            text: AppStrings.create,
                          )),
                        ],
                      )),
                  SizedBox(
                    height: height / 3,
                  )
                ],
              ),
            );
          });
        },
      ),
    );
  }
}
