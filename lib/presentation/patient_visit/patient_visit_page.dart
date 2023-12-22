import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/patient_visit/patient_visit_form/patient_visit_form_bloc.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/prescription/prescription.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class PatientVisitPage extends StatefulWidget {
  const PatientVisitPage({super.key});

  @override
  State<PatientVisitPage> createState() => _PatientVisitPageState();
}

class _PatientVisitPageState extends State<PatientVisitPage> {
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
        body: GestureDetector(
          onTap: () {
            // Create a FocusScopeNode object for the current context
            final currentFocus = FocusScope.of(context);

            // Call the unfocus method to remove focus from any child widgets
            currentFocus.unfocus();
          },
          child: LayoutBuilder(builder: (context, constraints) {
            double heightUnit = (constraints.maxHeight + keyboardHeight) / 8;
            return BlocProvider(
              create: (context) => getIt<PatientVisitFormBloc>(),
              child: SingleChildScrollView(
                // padding: EdgeInsets.only(bottom: keyboardHeight),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: heightUnit * 1,
                        child: const Text('Paciente X')),
                    SizedBox(
                        height: heightUnit * 10,
                        child: const PrescriptionBody()),
                    SizedBox(height: heightUnit * 1)
                  ],
                ),
              ),
            );
          }),
        ));
  }
}
