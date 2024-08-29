import 'package:expedientes_clinicos/application/patient_visit/patient_visit_form/patient_visit_form_bloc.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/date_time_input/date_picker_button.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/date_time_input/digital_watch.dart';
import 'package:expedientes_clinicos/presentation/patient_visit/visit_information/patient_visit_category/drop_down_patient_visit_category.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                Spacer(),
                Expanded(
                  child: DatePickerButton(
                    selectedDate: DateTime.now(),
                    onChanged: (DateTime dateTime) {
                      context
                          .read<PatientVisitFormBloc>()
                          .add(PatientVisitFormEvent.onDateChanged(dateTime));
                    },
                  ),
                ),
                Spacer(),
                Expanded(
                    flex: 2,
                    child: DigitalWatch(
                      initialTime: HourTime(TimeOfDay.fromDateTime(context
                          .read<PatientVisitFormBloc>()
                          .state
                          .patientVisit
                          .dateTimeVisit)),
                      onTimeSelected: (TimeOfDay timeOfDay) {
                        context.read<PatientVisitFormBloc>().add(
                            PatientVisitFormEvent.onTimeChanged(timeOfDay));
                        setState(() {});
                      },
                    )),
                Spacer(),
              ],
            ),
          ),
          SizedBox(
            height: InputFieldHeight.xs,
          ),
          SizedBox(
            height: InputFieldHeight.m,
            child: DropdownSearchPatientVisitCategory(),
          )
        ],
      ),
    );
  }
}
