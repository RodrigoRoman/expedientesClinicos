import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/categories/category_form/category_form_bloc.dart';
import 'package:expedientes_clinicos/application/categories/category_form/dynamic_category_form_bloc.dart';
import 'package:expedientes_clinicos/application/dynamic_form/dynamic_form_form/dynamic_form_form_bloc.dart';
import 'package:expedientes_clinicos/application/dynamic_form/dynamic_form_section_components/dynamic_form_section_components_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/core/view_models/drop_down_view_model.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/filed_types/field_types.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/form_element.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/form_row.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/layout_percent.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/section_types.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_components/buttons/main_action_button.dart';
import 'package:expedientes_clinicos/presentation/common/widget_components/buttons/plus_button.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/buttons.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/buttons_group/cancel_create_row.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/dynamic_form_components/input_field_box.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/dynamic_form_components/row_box.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_fields/text_input_title.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/drop_down_fixed_values.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/drop_down_head.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/title_validated.dart';
import 'package:expedientes_clinicos/presentation/medicine/generic_medicine/medicine_category/drop_down_medicine_category.dart';
import 'package:expedientes_clinicos/presentation/patient_section/dynamic_form_fillable/dynamic_form_fillable_page.dart';
import 'package:expedientes_clinicos/presentation/patient_section/dynamic_form_structure/componenets/define_field.dart';
import 'package:expedientes_clinicos/presentation/patient_section/dynamic_form_structure/componenets/drop_down_search_dynamic_category.dart';
import 'package:expedientes_clinicos/presentation/patient_section/dynamic_form_structure/componenets/pop_up_dynamic_category_form.dart';
import 'package:expedientes_clinicos/presentation/patient_section/utils/functions.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:expedientes_clinicos/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

@RoutePage()
class DynamicSectionFormStructurePage extends StatefulWidget {
  const DynamicSectionFormStructurePage({super.key});

  @override
  State<DynamicSectionFormStructurePage> createState() =>
      _DynamicSectionFormStructurePageState();
}

class _DynamicSectionFormStructurePageState
    extends State<DynamicSectionFormStructurePage> {
  TextEditingController formName = TextEditingController();
  TextEditingController sectionType = TextEditingController();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // final bloc = BlocProvider.of<DynamicFormFormBloc>(context);
      // print("Correctly getting bloc");
      // print(bloc);
      // Use the bloc
    });
  }

  @override
  Widget build(BuildContext context) {
    final double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    return LayoutBuilder(builder: (context, constraint) {
      double heightUnit = (constraint.maxHeight + keyboardHeight) / 16;
      return SizedBox(
          height: constraint.maxHeight,
          width: constraint.maxWidth,
          child: BlocProvider(
            create: (context) => DynamicFormSectionComponentsBloc(),
            child: BlocProvider(
              create: (context) => getIt<DynamicFormFormBloc>(),
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
                                      context.read<StateRendererBloc>().add(
                                              const StateRendererEvent
                                                  .popUpError(
                                            title: AppStrings.couldNotSaveImage,
                                            message:
                                                AppStrings.somethingWentWrong,
                                            until:
                                                FullScreenStatePageRoute.name,
                                          ));
                                    },
                                    unableToUploadImage: (e) {
                                      context.read<StateRendererBloc>().add(
                                              const StateRendererEvent
                                                  .popUpError(
                                            title: AppStrings.couldNotSaveImage,
                                            message:
                                                AppStrings.somethingWentWrong,
                                            until:
                                                FullScreenStatePageRoute.name,
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
                                            until:
                                                FullScreenStatePageRoute.name,
                                          ));
                                    },
                                    unableToCreate: (e) {
                                      context.read<StateRendererBloc>().add(
                                              const StateRendererEvent
                                                  .popUpError(
                                            title: AppStrings.unableToCreate,
                                            message: AppStrings
                                                .unableToCreateExplain,
                                            until:
                                                FullScreenStatePageRoute.name,
                                          ));
                                    },
                                    orElse: () {
                                      context.read<StateRendererBloc>().add(
                                              const StateRendererEvent
                                                  .popUpError(
                                            title: AppStrings.genericError,
                                            message:
                                                AppStrings.genericErrorExplain,
                                            until:
                                                FullScreenStatePageRoute.name,
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
                              padding:
                                  EdgeInsets.symmetric(horizontal: AppSize.s10),
                              child: Column(
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: TextInputTitle(
                                        title: AppStrings.formName,
                                        textEditingController: formName,
                                        onChanged: (String newName) {
                                          context
                                              .read<DynamicFormFormBloc>()
                                              .add(DynamicFormFormEvent
                                                  .sectionNameChanged(newName));
                                        },
                                      )),
                                  const Spacer(),
                                  Expanded(
                                      flex: 2,
                                      child: DropDownFixedValues(
                                        searchFieldController: sectionType,
                                        hintText: AppStrings.formSectionType,
                                        onSelected:
                                            (DropdownItemViewModel data) {
                                          context
                                              .read<DynamicFormFormBloc>()
                                              .add(DynamicFormFormEvent
                                                  .sectionTypeChanged(
                                                      data.sectionType!));
                                        },
                                        element: DropdownItemViewModel
                                            .fromSectionType(context
                                                .read<DynamicFormFormBloc>()
                                                .state
                                                .formSection
                                                .sectionType
                                                .value
                                                .fold(
                                                    (_) =>
                                                        SectionTypes.errorValue,
                                                    (ifSectionType) =>
                                                        ifSectionType)),
                                        listElements: SectionTypes.values
                                            .map((element) =>
                                                DropdownItemViewModel
                                                    .fromSectionType(element))
                                            .toList(),
                                      )),
                                  const Spacer(),
                                  Expanded(
                                      flex: 2,
                                      child: DropdownSearchDynamicCategory(
                                        currentCategory: context
                                            .read<DynamicFormFormBloc>()
                                            .state
                                            .formSection
                                            .category,
                                        onCreated: () {
                                          context
                                              .read<DynamicCategoryFormBloc>()
                                              .add(CategoryFormEvent.saved());
                                        },
                                        onSelected: (Category category) {
                                          context
                                              .read<DynamicFormFormBloc>()
                                              .add(DynamicFormFormEvent
                                                  .categoryChanged(category));
                                        },
                                      ))
                                ],
                              )),
                          SizedBox(
                            height: height / 10,
                          ),
                          Container(
                            height: height,
                            width: width / 1,
                            padding:
                                EdgeInsets.symmetric(horizontal: AppSize.s10),
                            child: BlocConsumer<
                                DynamicFormSectionComponentsBloc,
                                DynamicFormSectionComponentsState>(
                              listener: (context, state) {
                                // TODO: implement listener
                                context.read<DynamicFormFormBloc>().add(
                                    DynamicFormFormEvent.formRowsChanged(
                                        state.listRows.value.fold((_) => [],
                                            (ifList) => ifList.asList())));
                              },
                              builder: (context, state) {
                                return Column(
                                  children: [
                                    Expanded(
                                        child: TitleValidated(
                                      title: AppStrings.defineSectionElements,
                                      condition: true,
                                    )),
                                    Expanded(
                                      flex: 5,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.all(AppSize.s22),
                                        child: state.listRows.length == 0
                                            ? PlusButton(
                                                onPressed: () {
                                                  context
                                                      .read<StateRendererBloc>()
                                                      .add(StateRendererEvent
                                                          .popUpForm(
                                                        title: AppStrings
                                                            .createField,
                                                        bodyWidget:
                                                            DefineFieldForm(
                                                          definedFormElement:
                                                              FormElement
                                                                  .fromColumn(
                                                                      NonNegInt(
                                                                          0)),
                                                          onAdded: (FormElement
                                                              formElement) {
                                                            context
                                                                .read<
                                                                    DynamicFormSectionComponentsBloc>()
                                                                .add(DynamicFormSectionComponentsEvent
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
                                                children: state.listRows.value
                                                    .fold(
                                                        (ifLeft) => [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  color: Colors
                                                                      .red,
                                                                ),
                                                              )
                                                            ],
                                                        (ifRow) => ifRow
                                                            .map((FormRow
                                                                    formRow) =>
                                                                Expanded(
                                                                  child: RowBox(
                                                                      onAddTop:
                                                                          () {
                                                                        context
                                                                            .read<StateRendererBloc>()
                                                                            .add(StateRendererEvent.popUpForm(
                                                                              title: AppStrings.createField,
                                                                              bodyWidget: DefineFieldForm(
                                                                                definedFormElement: FormElement.fromColumn(NonNegInt(0)),
                                                                                onAdded: (FormElement formElement) {
                                                                                  context.read<DynamicFormSectionComponentsBloc>().add(DynamicFormSectionComponentsEvent.addFormRow(formElement, formRow.rowNum.value.fold((ifLeft) => 0, (ifRight) => ifRight - 1)));
                                                                                },
                                                                              ),
                                                                              until: AppStrings.popUp,
                                                                            ));
                                                                      },
                                                                      onAddBottom:
                                                                          () {
                                                                        context
                                                                            .read<StateRendererBloc>()
                                                                            .add(StateRendererEvent.popUpForm(
                                                                              title: AppStrings.createField,
                                                                              bodyWidget: DefineFieldForm(
                                                                                definedFormElement: FormElement.fromColumn(NonNegInt(0)),
                                                                                onAdded: (FormElement formElement) {
                                                                                  context.read<DynamicFormSectionComponentsBloc>().add(DynamicFormSectionComponentsEvent.addFormRow(formElement, formRow.rowNum.value.fold((ifLeft) => 0, (ifRight) => ifRight + 1)));
                                                                                },
                                                                              ),
                                                                              until: AppStrings.popUp,
                                                                            ));
                                                                      },
                                                                      fields: formRow.formElements.value.fold(
                                                                          (ifLeft) => [
                                                                                Expanded(
                                                                                  child: Container(
                                                                                    color: Colors.red,
                                                                                  ),
                                                                                )
                                                                              ],
                                                                          (ifForm) => ifForm
                                                                              .map((formElement) => Expanded(
                                                                                      child: InputFieldBox(
                                                                                    onAddLeft: () {
                                                                                      context.read<StateRendererBloc>().add(StateRendererEvent.popUpForm(
                                                                                            title: AppStrings.createField,
                                                                                            bodyWidget: DefineFieldForm(
                                                                                              definedFormElement: FormElement.fromColumn(NonNegInt(formElement.columnNum!.value.fold((ifLeft) => 0, (ifRight) => ifRight))),
                                                                                              onAdded: (FormElement formElement) {
                                                                                                context.read<DynamicFormSectionComponentsBloc>().add(DynamicFormSectionComponentsEvent.addFormElement(formRow.rowNum.value.fold((ifLeft) => 0, (ifRight) => ifRight), formElement.columnNum!.value.fold((ifLeft) => 0, (ifRight) => ifRight - 1), formElement));
                                                                                              },
                                                                                            ),
                                                                                            until: AppStrings.popUp,
                                                                                          ));
                                                                                    },
                                                                                    onAddRight: () {
                                                                                      context.read<StateRendererBloc>().add(StateRendererEvent.popUpForm(
                                                                                            title: AppStrings.createField,
                                                                                            bodyWidget: DefineFieldForm(
                                                                                              definedFormElement: FormElement.fromColumn(NonNegInt(formElement.columnNum!.value.fold((ifLeft) => 0, (ifRight) => ifRight))),
                                                                                              onAdded: (FormElement formElement) {
                                                                                                context.read<DynamicFormSectionComponentsBloc>().add(DynamicFormSectionComponentsEvent.addFormElement(formRow.rowNum.value.fold((ifLeft) => 0, (ifRight) => ifRight), formElement.columnNum!.value.fold((ifLeft) => 0, (ifRight) => ifRight + 1), formElement));
                                                                                              },
                                                                                            ),
                                                                                            until: AppStrings.popUp,
                                                                                          ));
                                                                                    },
                                                                                    child: Column(children: [
                                                                                      Expanded(
                                                                                          child: TitleValidated(
                                                                                        title: formElement.promptName.value.fold((ifLeft) => ifLeft.toString(), (ifRight) => ifRight),
                                                                                        condition: true,
                                                                                      )),
                                                                                      Expanded(flex: 3, child: selectWidgetVisualization(formElement.fieldType.value.fold((ifLeft) => FieldType.errorValue, (ifRight) => ifRight)))
                                                                                    ]),
                                                                                  )))
                                                                              .asList())),
                                                                ))
                                                            .asList()),
                                              ),
                                      ),
                                    ),
                                    Expanded(
                                        child: MainActionButton(
                                      onPressed: () {
                                        bool sectNameBool = context
                                            .read<DynamicFormFormBloc>()
                                            .state
                                            .formSection
                                            .sectionName
                                            .value
                                            .isRight();
                                        bool sectTypeBool = !context
                                            .read<DynamicFormFormBloc>()
                                            .state
                                            .formSection
                                            .category
                                            .isEmpty;

                                        print(
                                            "The values after being filled out");
                                        print("Name of form");
                                        print(context
                                            .read<DynamicFormFormBloc>()
                                            .state
                                            .formSection
                                            .sectionName);
                                        print("type of form");
                                        print(context
                                            .read<DynamicFormFormBloc>()
                                            .state
                                            .formSection
                                            .sectionType);
                                        print("listrows of form");
                                        print(context
                                            .read<DynamicFormFormBloc>()
                                            .state
                                            .formSection
                                            .formRows
                                            .length);
                                        print("category of form");
                                        print(context
                                            .read<DynamicFormFormBloc>()
                                            .state
                                            .formSection
                                            .category);
                                        context
                                            .read<DynamicFormFormBloc>()
                                            .add(DynamicFormFormEvent.saved());
                                      },
                                      text: AppStrings.create,
                                    )),
                                    Expanded(
                                        child: Column(children: [
                                      // DropDown
                                      Expanded(
                                        child: MainActionButton(
                                            text: "Fill Form",
                                            onPressed: () {
                                              context
                                                  .read<StateRendererBloc>()
                                                  .add(StateRendererEvent
                                                      .fullScreenForm(
                                                    title: AppStrings
                                                        .createGenericMedicine,
                                                    bodyWidget: Container(
                                                        color: Colors.amber),
                                                    message: AppStrings.empty,
                                                  ));
                                            }),
                                      ),
                                    ]))
                                  ],
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: height / 3,
                          )
                        ],
                      ),
                    );
                  });
                },
              ),
            ),
          ));
    });
  }
}
