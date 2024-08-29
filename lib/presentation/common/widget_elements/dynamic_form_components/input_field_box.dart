import 'package:expedientes_clinicos/presentation/common/widget_components/buttons/plus_button.dart';
import 'package:expedientes_clinicos/presentation/resources/const_style_widgets.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:flutter/material.dart';

class InputFieldBox extends StatelessWidget {
  final Widget child;
  final Function? onAddTop;
  final Function? onAddBottom;
  final Function? onAddLeft;
  final Function? onAddRight;

  const InputFieldBox({
    Key? key,
    required this.child,
    this.onAddTop,
    this.onAddBottom,
    this.onAddLeft,
    this.onAddRight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Expanded(
            flex: 5,
            child: PlusButton(
              onPressed: onAddLeft,
            )),
        Expanded(flex: 20, child: child),
        Expanded(
            flex: 5,
            child: PlusButton(
              onPressed: onAddRight,
            )),
        Spacer()
      ],
    );
  }
}
