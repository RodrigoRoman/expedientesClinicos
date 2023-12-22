import 'package:expedientes_clinicos/presentation/common/widget_components/buttons/cancel_button.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

class CancelCreateButtonsRow extends StatelessWidget {
  final Function onCreate;
  final String createText;
  const CancelCreateButtonsRow(
      {super.key, required this.onCreate, this.createText = AppStrings.create});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Spacer(),
        Expanded(
            flex: 4,
            child: CancelButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
            )),
        const Spacer(),
        Expanded(
          flex: 6,
          child: ElevatedButton(
              onPressed: () {
                // if (_key.currentState!.validate()) {
                onCreate();
                // }
              },
              child: const Text(AppStrings.create)),
        ),
        const Spacer(),
      ],
    );
  }
}
