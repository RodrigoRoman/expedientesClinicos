import 'dart:math';

import 'package:expedientes_clinicos/presentation/resources/color_manager.dart';
import 'package:expedientes_clinicos/presentation/resources/const_style_widgets.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IntegerTextInput extends StatefulWidget {
  TextEditingController intTextController;
  Function onInputChanged;
  IntegerTextInput(
      {super.key,
      required this.intTextController,
      required this.onInputChanged,
      isValidInput});

  @override
  State<IntegerTextInput> createState() => _IntegerTextInputState();
}

class _IntegerTextInputState extends State<IntegerTextInput> {
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
          unitSize / log(widget.intTextController.text.length + 2);
      return Container(
        // margin: EdgeInsets.all(AppSize.s2),
        height: constraints.maxHeight,
        decoration: BoxDecoration(
          borderRadius: BoderRadiusStyle.allCircular,
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
            controller: widget.intTextController,
            keyboardType: TextInputType.number,
            expands: true,
            maxLines: null,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontSize: fontSize),
            onChanged: (value) {
              widget.onInputChanged(int.tryParse(value) ?? 0);
            },
          ),
        ),
      );
    });
  }
}
