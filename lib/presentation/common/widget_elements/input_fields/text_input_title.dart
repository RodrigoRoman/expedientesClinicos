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

  const TextInputTitle(
      {super.key,
      required this.title,
      required this.textEditingController,
      this.onChanged,
      this.onCancel,
      this.validator,
      this.maxLines = 1,
      this.submitted = false,
      this.hintText = ''});

  @override
  State<TextInputTitle> createState() => _TextInputTitleState();
}

class _TextInputTitleState extends State<TextInputTitle> {
  final FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    String? error = widget.validator != null ? widget.validator!() : null;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Spacer(),
        Expanded(
            child: TitleValidated(
          title: widget.title,
          errorText: error,
          condition: error != null && widget.submitted,
        )),
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
            ))
      ],
    );
  }
}
