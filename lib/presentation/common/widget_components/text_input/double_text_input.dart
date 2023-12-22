import 'dart:math';

import 'package:expedientes_clinicos/presentation/resources/color_manager.dart';
import 'package:expedientes_clinicos/presentation/resources/const_style_widgets.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DoubleTextInput extends StatefulWidget {
  TextEditingController doubleTextController;
  Function onInputChanged;
  DoubleTextInput(
      {super.key,
      required this.doubleTextController,
      required this.onInputChanged,
      isValidInput});

  @override
  State<DoubleTextInput> createState() => _DoubleTextInputState();
}

class _DoubleTextInputState extends State<DoubleTextInput> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
              color: LightThemeColors.callout.withOpacity(0.3),
              width: _focusNode.hasFocus ? AppSize.s3 : AppSize.s0
              // Adjust the width for focused and unfocused states
              ),
        ),
        child: Material(
            borderRadius: BoderRadiusStyle.allRound,
            elevation: 3,
            child: TextField(
              focusNode: _focusNode,
              maxLines: null,
              expands: true,
              controller: widget.doubleTextController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
              ],
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: fontSize),
              onChanged: (value) {
                widget.onInputChanged(double.tryParse(value) ?? 0.0);
              },
            )),
      );
    });
  }
}
