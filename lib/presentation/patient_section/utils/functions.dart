import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_components/filed_types/field_types.dart';
import 'package:expedientes_clinicos/presentation/common/widget_components/text_input/text_input_field.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/date_time_input/date_picker_button.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/date_time_input/digital_watch.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/image_picker_display.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_fields/double_input.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_fields/range_input.dart';
import 'package:expedientes_clinicos/presentation/resources/asset_names.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

Widget selectWidgetVisualization(FieldType fieldType) {
  switch (fieldType) {
    case FieldType.number:
      return DoubleInputBox(
        inactive: true,
        onChanged: (_) {},
        initialValue: 0.0,
      );
    case FieldType.date:
      return DatePickerButton(
        selectedDate: DateTime.now(),
        onChanged: () {},
        inactive: true,
      );
    case FieldType.range:
      return const RangeNumberInput(inactive: true);
    case FieldType.time:
      return DigitalWatch(
        inactive: true,
        initialTime: HourTime.now(),
        onTimeSelected: () {},
      );
    case FieldType.text:
      return TextInputField(
        inactive: true,
        hintText: AppStrings.textFieldDynamic,
        textFieldController: TextEditingController(),
      );
    case FieldType.image:
      return ImagePickerDisplay(
        inactive: true,
        imageUrl: ImageURL(AppAssetNames.imagePlaceholder),
        onImageUrlChanged: () {},
        mounted: true,
      );
    default:
      return Spacer(); // Return an empty Container or another default widget
  }
}

Widget selectFieldWidget(
  FieldType fieldType,
  Function(Object) onChanged,
) {
  // TextEditingController controller = textController ?? TextEditingController();
  switch (fieldType) {
    case FieldType.number:
      return DoubleInputBox(
        onChanged: onChanged,
        initialValue: 0.0,
      );
    case FieldType.date:
      return DatePickerButton(
        selectedDate: DateTime.now(),
        onChanged: onChanged,
      );
    case FieldType.range:
      return const RangeNumberInput(inactive: true);
    case FieldType.time:
      return DigitalWatch(
        initialTime: HourTime.now(),
        onTimeSelected: onChanged,
      );
    case FieldType.text:
      return TextInputField(
        hintText: AppStrings.textFieldDynamic,
        // textFieldController: controller,
        onChange: (String newText) {
          // controller.text = newText;
          // controller.selection = TextSelection.fromPosition(
          //     TextPosition(offset: controller.text.length));
          onChanged(newText);
        },
      );
    case FieldType.image:
      return ImagePickerDisplay(
        imageUrl: ImageURL(AppAssetNames.imagePlaceholder),
        onImageUrlChanged: onChanged,
        mounted: true,
      );
    default:
      return Spacer(); // Return an empty Container or another default widget
  }
}
