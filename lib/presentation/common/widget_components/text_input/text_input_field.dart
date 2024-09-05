import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:expedientes_clinicos/presentation/resources/color_manager.dart';
import 'package:expedientes_clinicos/presentation/resources/const_style_widgets.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

class TextInputField extends StatefulWidget {
  final TextEditingController? textFieldController;
  Function? onCancel;
  Function? onChange;
  Function? validator;
  FocusNode focusNode;
  int maxLines;
  String hintText;
  bool inactive;

  TextInputField({
    super.key,
    this.textFieldController,
    this.onCancel,
    this.onChange,
    this.validator,
    this.maxLines = 1,
    this.inactive = false,
    FocusNode? focusNode,
    this.hintText = '',
  }) : focusNode = focusNode ?? FocusNode();

  @override
  State<TextInputField> createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    // If a controller is passed, use it; otherwise, create a new one
    _controller = widget.textFieldController ?? TextEditingController();
  }

  @override
  void dispose() {
    // If the controller was created internally, dispose of it
    if (widget.textFieldController == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double inputFontSize = MediaQuery.of(context).size.height /
        20; // Example scaling for font size
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
              color: widget.inactive
                  ? Colors.grey
                  : LightThemeColors.callout.withOpacity(0.3),
              width: widget.focusNode.hasFocus
                  ? AppSize.s4
                  : AppSize.s0, // Adjust border width
            ),
          ),
          child: TextInputFieldBody(
            inactive: widget.inactive,
            textFieldController: _controller,
            hintText: widget.hintText,
            onCancel: widget.onCancel,
            onChange: widget.onChange,
            focusNode: widget.focusNode,
            validator: widget.validator,
            maxLines: widget.maxLines,
            fontSize: inputFontSize,
          ),
        ),
      ),
    );
  }
}

class TextInputFieldBody extends StatefulWidget {
  final TextEditingController textFieldController;
  Function? onChange;
  Function? onCancel;
  Function? validator;
  final String hintText;
  final int maxLines;
  final FocusNode focusNode;
  final double fontSize;
  final bool inactive;

  TextInputFieldBody({
    super.key,
    required this.textFieldController,
    required this.hintText,
    required this.focusNode,
    required this.fontSize,
    required this.maxLines,
    this.inactive = false,
    this.onChange,
    this.onCancel,
    this.validator,
  });

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
        readOnly: widget.inactive,
        maxLines: widget.maxLines,
        // expands: flase,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          enabledBorder: widget.inactive
              ? OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey, // Inactive border color
                    width: AppSize.s2,
                  ),
                  borderRadius: BoderRadiusStyle.allCurve,
                )
              : Theme.of(context).inputDecorationTheme.enabledBorder,
          focusedBorder: widget.inactive
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
          contentPadding: const EdgeInsets.all(AppSize.s10),
          suffix: (widget.textFieldController.text.isNotEmpty)
              ? Material(
                  elevation: 3,
                  shape: const CircleBorder(),
                  clipBehavior: Clip.hardEdge,
                  child: GestureDetector(
                    onTap: widget.inactive
                        ? null
                        : () {
                            widget.textFieldController.clear();
                            widget.onCancel?.call();
                            widget.onChange?.call(AppStrings.empty);
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
          hintStyle: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontSize: widget.fontSize / 2,
                color: widget.inactive
                    ? Colors.grey
                    : Theme.of(context).textTheme.displayMedium!.color,
              ),
        ),
        style: TextStyle(fontSize: widget.fontSize / 2),
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        onChanged: widget.inactive
            ? null
            : (String value) {
                final oldText = widget.textFieldController.text;
                final oldSelection = widget.textFieldController.selection;

                // Calculate new cursor position by taking into account the difference in text length
                final newSelectionIndex =
                    oldSelection.baseOffset + (value.length - oldText.length);

                widget.textFieldController.value = TextEditingValue(
                  text: value,
                  selection: TextSelection.fromPosition(
                    TextPosition(
                        offset: newSelectionIndex.clamp(0, value.length)),
                  ),
                );
                widget.onChange?.call(value);
                setState(() {});
              },
      ),
    );
  }
}
