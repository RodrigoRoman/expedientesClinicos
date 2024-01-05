import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/date_picker.dart';
import 'package:expedientes_clinicos/presentation/prescription/dose/day_hours_dose/day_hours_dose_form/widgets/digital_watch.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:flutter/material.dart';

class VisitInformationBody extends StatefulWidget {
  const VisitInformationBody({super.key});

  @override
  State<VisitInformationBody> createState() => _VisitInformationBodyState();
}

class _VisitInformationBodyState extends State<VisitInformationBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //DateTime
          SizedBox(
            height: InputFieldHeight.s,
            child: Row(
              children: [
                Expanded(
                  child: DatePickerButton(
                    selectedDate: DateTime.now(),
                    onChanged: () {},
                  ),
                ),
                Expanded(
                    child: DigitalWatch(
                  initialTime: HourTime.now(),
                  onDateSelected: () {},
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
