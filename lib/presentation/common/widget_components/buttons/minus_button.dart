import 'package:expedientes_clinicos/presentation/resources/const_style_widgets.dart';
import 'package:flutter/material.dart';

class MinusButtonDown extends StatelessWidget {
  Function onPressed;
  MinusButtonDown({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double buttonSize = constraints.maxWidth > constraints.maxHeight
            ? constraints.maxHeight
            : constraints.maxWidth;
        return Center(
          child: GestureDetector(
            onTap: () => onPressed(),
            child: Container(
              width: buttonSize,
              height: constraints.maxHeight,
              decoration: BoxDecoration(
                color: Theme.of(context).secondaryHeaderColor,
                borderRadius: BoderRadiusStyle.minusButton,
              ),
              alignment: Alignment.bottomCenter,
              child: Icon(
                Icons.remove,
                size: buttonSize,
                color: Theme.of(context).primaryColorDark,
              ),
            ),
          ),
        );
      },
    );
  }
}
