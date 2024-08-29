import 'package:expedientes_clinicos/presentation/resources/const_style_widgets.dart';
import 'package:flutter/material.dart';

class MinusButtonDown extends StatelessWidget {
  Function onPressed;
  bool inactive;
  MinusButtonDown({super.key, required this.onPressed, this.inactive = false});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double buttonSize = constraints.maxWidth > constraints.maxHeight
            ? constraints.maxHeight
            : constraints.maxWidth;
        return Center(
          child: GestureDetector(
            onTap: inactive ? null : () => onPressed?.call(),
            child: Container(
              width: buttonSize,
              height: constraints.maxHeight,
              decoration: BoxDecoration(
                color: inactive
                    ? Colors.grey[300]
                    : Theme.of(context).secondaryHeaderColor,
                borderRadius: BoderRadiusStyle.minusButton,
              ),
              alignment: Alignment.bottomCenter,
              child: Icon(
                Icons.remove,
                size: buttonSize,
                color: inactive
                    ? Colors.grey.shade700
                    : Theme.of(context).primaryColorDark,
              ),
            ),
          ),
        );
      },
    );
  }
}
