import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/patient_visit/patient_visit_form/patient_visit_form_bloc.dart';
import 'package:expedientes_clinicos/domain/core/view_models/drop_down_expanded_view_model.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/label_drop_down/expanded_card_item_drop_down.dart';
import 'package:expedientes_clinicos/presentation/prescription/drop_down_prescription.dart';
import 'package:expedientes_clinicos/presentation/prescription/prescription_list_select.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class PatientVisitPage extends StatefulWidget {
  const PatientVisitPage({super.key});

  @override
  State<PatientVisitPage> createState() => _PatientVisitPageState();
}

class _PatientVisitPageState extends State<PatientVisitPage> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    final double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   if (WidgetsBinding.instance.window.viewInsets.bottom > 0.0) {
    //     _scrollController.animateTo(_scrollController.offset * 5,
    //         duration: Duration(milliseconds: 100), curve: Curves.bounceIn);
    //     // Keyboard is visible.
    //   }
    // });

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the SplashPage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Visita Medica'),
      ),
      body: BlocProvider(
        create: (context) => getIt<PatientVisitFormBloc>(),
        child: Stepper(
          type: StepperType.horizontal,
          currentStep: _currentStep,
          onStepContinue: () {
            if (_currentStep < 2) {
              setState(() {
                _currentStep += 1;
              });
            }
          },
          onStepCancel: () {
            if (_currentStep > 0) {
              setState(() {
                _currentStep -= 1;
              });
            }
          },
          steps: [
            Step(
              title: Text('Tratamiento'),
              content: SizedBox(
                  height: 600, width: 500, child: PrescriptionListSelect()),
              isActive: _currentStep >= 0,
              state:
                  _currentStep >= 0 ? StepState.complete : StepState.disabled,
            ),
            Step(
              title: Text('Paso 2'),
              content: Text('Información del Paso 2'),
              isActive: _currentStep >= 1,
              state:
                  _currentStep >= 1 ? StepState.complete : StepState.disabled,
            ),
            Step(
              title: Text('Paso 3'),
              content: Text('Información del Paso 3'),
              isActive: _currentStep >= 2,
              state:
                  _currentStep >= 2 ? StepState.complete : StepState.disabled,
            ),
          ],
        ),
      ),
    );
  }
}
