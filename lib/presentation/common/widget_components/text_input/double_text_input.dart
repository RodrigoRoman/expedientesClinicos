import 'dart:math';

import 'package:expedientes_clinicos/presentation/resources/color_manager.dart';
import 'package:expedientes_clinicos/presentation/resources/const_style_widgets.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DoubleTextInput extends StatefulWidget {
  TextEditingController doubleTextController;
  Function(double) onInputChanged;
  bool? inactive;
  DoubleTextInput(
      {super.key,
      required this.doubleTextController,
      required this.onInputChanged,
      this.inactive = false,
      isValidInput});

  @override
  State<DoubleTextInput> createState() => _DoubleTextInputState();
}

class _DoubleTextInputState extends State<DoubleTextInput> {
  late FocusNode _focusNode;
  bool inactive = false;

  @override
  void initState() {
    super.initState();
    if (widget.inactive != null) {
      inactive = widget.inactive!;
    }
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Inactive?");
    print(inactive);
    return LayoutBuilder(builder: (context, constraints) {
      double unitSize = max(constraints.maxHeight, constraints.maxWidth) / 5;
      double fontSize =
          unitSize / log(widget.doubleTextController.text.length + 2);
      return Container(
        height: constraints.maxHeight,
        // margin: EdgeInsets.all(AppSize.s2),
        decoration: BoxDecoration(
          borderRadius: BoderRadiusStyle.allRound,
          border: Border.all(
              color: inactive
                  ? Colors.grey // Change border color if inactive
                  : _focusNode.hasFocus
                      ? Theme.of(context).primaryColor // Focused border color
                      : LightThemeColors.callout.withOpacity(0.3),
              width: _focusNode.hasFocus ? AppSize.s3 : AppSize.s0
              // Adjust the width for focused and unfocused states
              ),
        ),
        child: Material(
            borderRadius: BoderRadiusStyle.allRound,
            elevation: inactive ? 0 : 3,
            child: TextField(
              readOnly: inactive,
              focusNode: _focusNode,
              maxLines: null,
              expands: true,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(AppSize.s3),
                enabledBorder: inactive
                    ? OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey, // Inactive border color
                          width: AppSize.s2,
                        ),
                        borderRadius: BoderRadiusStyle.allCurve,
                      )
                    : Theme.of(context).inputDecorationTheme.enabledBorder,
                focusedBorder: inactive
                    ? OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey, // Inactive focused border color
                          width: AppSize.s2,
                        ),
                        borderRadius: BoderRadiusStyle.allCurve,
                      )
                    : Theme.of(context).inputDecorationTheme.focusedBorder,
                errorBorder: Theme.of(context).inputDecorationTheme.errorBorder,
                focusedErrorBorder:
                    Theme.of(context).inputDecorationTheme.focusedErrorBorder,
              ),
              controller: widget.doubleTextController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
              ],
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: fontSize,
                    color: inactive
                        ? Colors.grey // Change text color if inactive
                        : Theme.of(context).textTheme.bodyMedium!.color,
                  ),
              onChanged: (value) {
                if (!inactive) {
                  widget.onInputChanged(double.tryParse(value) ?? 0.0);
                }
              },
            )),
      );
    });
  }
}
