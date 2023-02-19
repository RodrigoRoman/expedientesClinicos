import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final TextEditingController textController;
  final Function onChanged;
  const Description(
      {required this.onChanged, required this.textController, super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 6,
      controller: textController,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.text,
      textCapitalization: TextCapitalization.words,
      textInputAction: TextInputAction.next,
      onChanged: (value) => onChanged(value),
    );
  }
}
