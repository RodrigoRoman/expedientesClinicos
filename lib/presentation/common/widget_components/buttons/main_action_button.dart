import 'package:auto_size_text/auto_size_text.dart';
import 'package:expedientes_clinicos/presentation/resources/const_style_widgets.dart';
import 'package:flutter/material.dart';

class MainActionButton extends StatelessWidget {
  final Function() onPressed;
  final String text;

  const MainActionButton(
      {required this.onPressed, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
              borderRadius: BoderRadiusStyle.allCircular,
            )),
            onPressed: onPressed,
            child: AutoSizeText(
              text,
              textScaleFactor: 2,
            )));
  }
}
