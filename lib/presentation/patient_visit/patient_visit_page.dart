import 'package:expedientes_clinicos/application/patient_visit/patient_visit_form/patient_visit_form_bloc.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/prescription/prescription.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PatientVisitPage extends StatefulWidget {
  const PatientVisitPage({super.key});

  @override
  State<PatientVisitPage> createState() => _PatientVisitPageState();
}

class _PatientVisitPageState extends State<PatientVisitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the SplashPage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Visita Medica'),
        ),
        body: BlocProvider(
          create: (context) => getIt<PatientVisitFormBloc>(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Text('Paciente X')),
              // Expanded(child: PrescriptionBody())
            ],
          ),
        ));
  }
}
