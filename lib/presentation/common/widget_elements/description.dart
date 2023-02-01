import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final TextEditingController textController;
  const Description({required this.textController, super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 6,
      controller: textController,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.text,
      textCapitalization: TextCapitalization.words,
      textInputAction: TextInputAction.next,
    );
  }
}
