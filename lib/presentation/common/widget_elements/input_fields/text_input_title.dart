import 'dart:math';

import 'package:expedientes_clinicos/presentation/common/widget_components/text_input/text_input_field.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/title_validated.dart';
import 'package:flutter/widgets.dart';

class TextInputTitle extends StatefulWidget {
  final String title;
  final TextEditingController textEditingController;
  final Function? onChanged;
  final Function? onCancel;
  final Function? validator;
  final bool submitted;
  final int maxLines;
  final String hintText;

  const TextInputTitle({
    super.key,
    required this.title,
    required this.textEditingController,
    this.onChanged,
    this.onCancel,
    this.validator,
    this.maxLines = 1,
    this.submitted = false,
    this.hintText = '',
  });

  @override
  State<TextInputTitle> createState() => _TextInputTitleState();
}

class _TextInputTitleState extends State<TextInputTitle> {
  String? error;

  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    // Initialize error state
    _validateInput();

    // Add a listener to update error state when text changes
    widget.textEditingController.addListener(_validateInput);
  }

  @override
  void dispose() {
    // Remove the listener when disposing the widget
    widget.textEditingController.removeListener(_validateInput);
    _focusNode.dispose();
    super.dispose();
  }

  void _validateInput() {
    // Update error state dynamically
    setState(() {
      error = widget.validator != null ? widget.validator!() : null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Spacer(),
        Expanded(
          child: TitleValidated(
            title: widget.title,
            errorText: error,
            id: "13031996",
            //If true then the condition is meet
            condition: !(error != null && widget.submitted),
          ),
        ),
        Expanded(
          flex: 2,
          child: TextInputField(
            textFieldController: widget.textEditingController,
            onChange: widget.onChanged,
            onCancel: widget.onCancel,
            validator: widget.validator,
            hintText: widget.hintText,
            focusNode: _focusNode,
            maxLines: widget.maxLines,
          ),
        ),
      ],
    );
  }
}
