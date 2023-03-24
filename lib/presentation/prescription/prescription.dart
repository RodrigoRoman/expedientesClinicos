import 'package:expedientes_clinicos/presentation/medicine/branded_medicine/branded_medicine_watcher/drop_down_branded_medicine.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PrescriptionBody extends StatefulWidget {
  const PrescriptionBody({super.key});

  @override
  State<PrescriptionBody> createState() => _PrescriptionBodyState();
}

class _PrescriptionBodyState extends State<PrescriptionBody> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Center(
        child: Container(
          width: constraints.maxWidth * 0.8,
          height: constraints.maxHeight * 0.8,
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.tertiary,
              width: 3.0,
              style: BorderStyle.solid,
            ),
          ),
          child: Column(children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                    width: 3.0,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
            // Expanded(child: DropdownSearchBrandedMedicineForm())
          ]),
        ),
      );
    });
  }
}
