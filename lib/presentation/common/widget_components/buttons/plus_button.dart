import 'package:expedientes_clinicos/presentation/resources/const_style_widgets.dart';
import 'package:flutter/material.dart';

class PlusButton extends StatelessWidget {
  Function? onPressed;
  PlusButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double buttonSize = constraints.maxWidth > constraints.maxHeight
            ? constraints.maxHeight / 1.5
            : constraints.maxWidth / 1.5;
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: Size(constraints.maxWidth, constraints.maxHeight),
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(2)),
          child: Icon(
            Icons.add,
            size: buttonSize,
          ),
          onPressed: onPressed != null ? () => onPressed!() : null,
        );
      },
    );
  }
}

class PlusButtonUp extends StatelessWidget {
  Function onPressed;
  PlusButtonUp({super.key, required this.onPressed});

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
                color: Theme.of(context).primaryColor,
                borderRadius: BoderRadiusStyle.plusButton,
              ),
              alignment: Alignment.topCenter,
              child: Icon(
                Icons.add,
                size: buttonSize,
                color: Theme.of(context).canvasColor,
              ),
            ),
          ),
        );
      },
    );
  }
}
