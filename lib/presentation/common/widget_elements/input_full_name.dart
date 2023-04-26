import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

class InputFullName extends StatelessWidget {
  const InputFullName({
    super.key,
    required this.label,
    required this.fullName,
    required this.onChanged,
    required this.textController,
  });

  final String label;
  final Function onChanged;
  final FullName fullName;
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 2,
            child: TextFormField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                  hintText: label,
                  errorStyle: TextStyle(
                      fontSize: AppSize.s8,
                      color: Theme.of(context).colorScheme.error),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.error,
                      // width:
                      //     LayoutConstants.dimen_1,
                      style: BorderStyle.solid,
                    ),
                  )),
              controller: textController,
              validator: (value) {
                return fullName.value.fold(
                    (l) => l.maybeMap(
                        exceedingLength: (_) => AppStrings.tooLong,
                        empty: (s) => value != '' ? null : AppStrings.isEmpty,
                        orElse: () => AppStrings.error),
                    (r) => value != '' ? null : AppStrings.isEmpty);
              },
              onChanged: (value) {
                textController.value = TextEditingValue(
                  text: value,
                  selection: TextSelection.fromPosition(
                    TextPosition(offset: textController.selection.extentOffset),
                  ),
                );
                onChanged(value);

                // textController.text = value;
                // textController.selection = TextSelection.fromPosition(
                //     TextPosition(offset: textController.text.length));

                // context.read<MedicineFormBloc>().add(
                //     MedicineFormEvent.genericNameChanged(textController.text));
              },
            )),
      ],
    );
  }
}
