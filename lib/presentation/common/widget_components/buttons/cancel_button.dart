import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  Function? onPressed;
  CancelButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(
              Colors.grey), // Sets the text color
          side: MaterialStateProperty.all<BorderSide>(
              BorderSide(color: Colors.grey)), // Sets the border color
          shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8))), // Sets the border shape
        ),
        onPressed: () {
          onPressed != null ? onPressed!() : null;
        },
        child: FittedBox(child: const Text(AppStrings.cancel)));
  }
}
