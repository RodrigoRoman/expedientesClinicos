import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/core/view_models/drop_down_view_model.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/filed_types/field_types.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/form_element.dart';
import 'package:expedientes_clinicos/presentation/common/widget_components/text_input/text_input_field.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/buttons_group/cancel_create_row.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/date_time_input/date_picker_button.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/date_time_input/digital_watch.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/image_container.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/image_picker_display.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_fields/double_input.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_fields/range_input.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_fields/text_input_title.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/drop_down_fixed_values.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/title_validated.dart';
import 'package:expedientes_clinicos/presentation/patient_section/utils/functions.dart';
import 'package:expedientes_clinicos/presentation/resources/asset_names.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

class DefineFieldForm extends StatefulWidget {
  final Function onAdded;
  FormElement? definedFormElement;
  DefineFieldForm({required this.onAdded, this.definedFormElement, super.key});

  @override
  State<DefineFieldForm> createState() => _DefineFieldFormState();
}

class _DefineFieldFormState extends State<DefineFieldForm> {
  final _key = GlobalKey<FormState>();
  TextEditingController formName = TextEditingController();
  TextEditingController searchFieldType = TextEditingController();
  FieldType selectedFieldType = FieldType.empty;
  FormElement definedFormElement = FormElement.empty();
  bool submitted = false;
  @override
  void initState() {
    // TODO: implement initState
    if (widget.definedFormElement != null) {
      definedFormElement = widget.definedFormElement!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          child: Form(
              key: _key,
              autovalidateMode: AutovalidateMode.disabled,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Expanded(
                        flex: 3,
                        child: TextInputTitle(
                          title: AppStrings.fieldName,
                          textEditingController: formName,
                          submitted: submitted,
                          onChanged: (String newValue) {
                            setState(() {
                              definedFormElement.promptName =
                                  NonEmptyString(newValue);
                            });
                          },
                          validator: () {
                            // if (definedFormElement.promptName.us == AppStrings.empty) {
                            //   return AppStrings.isEmpty;
                            // } else {
                            //   return null;
                            // }
                          },
                        )),
                    const Spacer(),
                    Expanded(
                        flex: 2,
                        child: DropDownFixedValues(
                          searchFieldController: searchFieldType,
                          hintText: AppStrings.formFieldType,
                          valid: !submitted &
                              !definedFormElement.fieldType.value.fold(
                                  (ifLeft) => false,
                                  (ifRight) => FieldType.errorValue != ifRight),
                          onSelected: (DropdownItemViewModel data) {
                            setState(() {
                              definedFormElement.fieldType =
                                  NonEmptyFieldType(data.fieldType!);
                            });
                          },
                          element: DropdownItemViewModel.empty(),
                          listElements: FieldType.values
                              .map((element) =>
                                  DropdownItemViewModel.fromFieldType(element))
                              .toList(),
                        )),
                    const Spacer(),
                    Expanded(
                      flex: 3,
                      child: Column(children: [
                        Expanded(
                          child: TitleValidated(
                              title: AppStrings.fieldVisualizationTitle,
                              condition: true),
                        ),
                        Expanded(
                            flex: 3,
                            child: selectWidgetVisualization(
                                FieldType.fromString(searchFieldType.text))),
                      ]),
                    ),
                    const Spacer(),
                    Expanded(
                      child: CancelCreateButtonsRow(
                        onCreate: () {
                          if (validateFormField(definedFormElement)) {
                            widget.onAdded(definedFormElement);
                          }
                          submitted = true;
                          setState(() {});
                        },
                        createText: AppStrings.add,
                      ),
                    ),
                  ],
                ),
              )));
    });
  }
}

bool validateFormField(FormElement formElement) {
  bool validForm = formElement.promptName.value
          .fold((ifLeft) => false, (ifRight) => ifRight != AppStrings.empty) &
      formElement.fieldType.value.fold(
          (ifLeft) => false, (ifRight) => FieldType.errorValue != ifRight);

  return validForm;
}
