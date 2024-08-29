import 'package:expedientes_clinicos/presentation/common/widget_components/buttons/plus_button.dart';
import 'package:expedientes_clinicos/presentation/resources/const_style_widgets.dart';
import 'package:flutter/material.dart';

class RowBox extends StatelessWidget {
  final Function? onAddTop;
  final Function? onAddBottom;
  final List<Widget> fields;
  const RowBox(
      {this.onAddTop, this.onAddBottom, required this.fields, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context)
                .colorScheme
                .surfaceContainer, // Set the border color
            width: 2.0, // Set the border width
          ),
          borderRadius:
              BoderRadiusStyle.allRound), // Optional: Add rounded corners

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Expanded(
              flex: 13,
              child: Row(
                children: [
                  Spacer(
                    flex: 3,
                  ),
                  Expanded(
                      child: PlusButton(
                    onPressed: onAddTop,
                  )),
                  Spacer(
                    flex: 3,
                  )
                ],
              )),
          Expanded(flex: 30, child: Row(children: fields)),
          Expanded(
              flex: 13,
              child: Row(
                children: [
                  Spacer(
                    flex: 3,
                  ),
                  Expanded(
                      child: PlusButton(
                    onPressed: onAddBottom,
                  )),
                  Spacer(
                    flex: 3,
                  )
                ],
              )),
          Spacer()
        ],
      ),
    );
  }
}
