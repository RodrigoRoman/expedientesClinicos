import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:expedientes_clinicos/presentation/resources/color_manager.dart';
import 'package:expedientes_clinicos/presentation/resources/const_style_widgets.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

class TextInputField extends StatefulWidget {
  final TextEditingController textFieldController;
  Function? onCancel;
  Function? onChange;
  Function? validator;
  FocusNode focusNode;
  int maxLines;
  String hintText;

  TextInputField(
      {super.key,
      required this.textFieldController,
      this.onCancel,
      this.onChange,
      this.validator,
      this.maxLines = 1,
      FocusNode? focusNode,
      this.hintText = ''})
      : focusNode = focusNode ?? FocusNode();

  @override
  State<TextInputField> createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double inputFontSize = constraints.maxHeight / 1.8;
      return Center(
        child: Material(
            elevation: AppSize.s4,
            shape: const RoundedRectangleBorder(
              borderRadius: BoderRadiusStyle.allRound,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BoderRadiusStyle.allRound,
                border: Border.all(
                    color: LightThemeColors.callout.withOpacity(0.3),
                    width: widget.focusNode.hasFocus
                        ? AppSize.s4
                        : AppSize
                            .s0 // Adjust the width for focused and unfocused states
                    ),
              ),
              child: TextInputFieldBody(
                  textFieldController: widget.textFieldController,
                  hintText: widget.hintText,
                  onCancel: widget.onCancel,
                  onChange: widget.onChange,
                  focusNode: widget.focusNode,
                  validator: widget.validator,
                  maxLines: widget.maxLines,
                  fontSize: inputFontSize),
            )),
      );
    });
  }
}

class TextInputFieldBody extends StatefulWidget {
  TextEditingController textFieldController;
  Function? onChange;
  Function? onCancel;
  Function? validator;
  String hintText;
  int maxLines;
  FocusNode focusNode;
  double fontSize;

  TextInputFieldBody(
      {super.key,
      required this.textFieldController,
      required this.hintText,
      required this.focusNode,
      required this.fontSize,
      required this.maxLines,
      this.onChange,
      this.onCancel,
      this.validator});

  @override
  State<TextInputFieldBody> createState() => _TextInputFieldBodyState();
}

class _TextInputFieldBodyState extends State<TextInputFieldBody> {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: TextFormField(
        clipBehavior: Clip.hardEdge,
        focusNode: widget.focusNode,
        controller: widget.textFieldController,
        textAlign: TextAlign.center,
        maxLines: null,
        expands: true,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
            // errorText: null,
            contentPadding: const EdgeInsets.all(AppSize.s10),
            suffix: (widget.textFieldController.text.isNotEmpty)
                ? Material(
                    elevation: 3,
                    shape: const CircleBorder(),
                    clipBehavior: Clip.hardEdge,
                    child: GestureDetector(
                      onTap: () {
                        widget.textFieldController.text = AppStrings.empty;
                        widget.onCancel == null ? null : widget.onCancel!();
                        widget.onChange == null
                            ? null
                            : widget.onChange!(AppStrings.empty);
                      },
                      child: const Icon(
                        Icons.cancel_rounded,
                        size: AppSize.s18,
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
            border: InputBorder.none,
            hintText: widget.hintText,
            hintStyle: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontSize: widget.fontSize / 2)),
        style: TextStyle(
          fontSize: widget.fontSize / 2,
        ),
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        onChanged: (value) {
          widget.textFieldController.value = TextEditingValue(
              text: value,
              selection: TextSelection.fromPosition(
                TextPosition(
                    offset: widget.textFieldController.selection.extentOffset),
              ));
          widget.onChange == null ? null : widget.onChange!(value);
          //Set state here is needed for updating wether the cancel button shows up or not
          setState(() {});
        },
      ),
    );
  }
}
