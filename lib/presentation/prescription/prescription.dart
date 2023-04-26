import 'package:expedientes_clinicos/application/medicine/dose/dose_core/dose_form/dose_form_bloc.dart';
import 'package:expedientes_clinicos/application/prescription/prescription_form/prescription_form_bloc.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/time_interval.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/day_hours_doses/day_hours_doses.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/dose_amount.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/week_doses/week_days_dose.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_full_name.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/title_validated.dart';
import 'package:expedientes_clinicos/presentation/medicine/branded_medicine/branded_medicine_watcher/drop_down_branded_medicine.dart';
import 'package:expedientes_clinicos/presentation/prescription/dose/day_hours_dose/drop_down_day_hours_dose.dart';
import 'package:expedientes_clinicos/presentation/prescription/dose/dose_amount/drop_down_dose_amount.dart';
import 'package:expedientes_clinicos/presentation/prescription/dose/dose_duration/drop_down_dose_duration.dart';
import 'package:expedientes_clinicos/presentation/prescription/dose/drop_down_dose.dart';
import 'package:expedientes_clinicos/presentation/prescription/dose/week_days_dose/drop_down_week_days.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrescriptionBody extends StatefulWidget {
  const PrescriptionBody({super.key});

  @override
  State<PrescriptionBody> createState() => _PrescriptionBodyState();
}

class _PrescriptionBodyState extends State<PrescriptionBody> {
  TextEditingController labelController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   labelController.text =
    // });

    return BlocConsumer<PrescriptionFormBloc, PrescriptionFormState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return LayoutBuilder(builder: (context, constraints) {
          return Center(
            child: Container(
              width: constraints.maxWidth * 1,
              height: constraints.maxHeight * 1,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.tertiary,
                  width: 3.0,
                  style: BorderStyle.solid,
                ),
              ),
              child: Column(children: [
                Expanded(
                    flex: 4,
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).colorScheme.primary,
                              width: 3.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            children: [
                              Spacer(),
                              Expanded(
                                flex: 3,
                                child: DropdownSearchBrandedMedicineForm(
                                  onSelected: (medicine) {
                                    context.read<PrescriptionFormBloc>().add(
                                        PrescriptionFormEvent.onMedicineChanged(
                                            medicine));
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            // top: AppSize.s10,
                            left: AppSize.s10,
                            child: SizedBox(
                              child: SizedBox(
                                height: AppSize.s20 * 2,
                                width: AppSize.s20 * 6,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Icon(
                                        FontAwesomeIcons.pills,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        size: AppSize.s20,
                                      ),
                                    ),
                                    Spacer(),
                                    Expanded(
                                        flex: 4,
                                        child: FittedBox(
                                            child: Text('Medicamento'))),
                                  ],
                                ),
                              ),
                            ))
                      ],
                    )),
                Expanded(
                    flex: 8,
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).colorScheme.primary,
                              width: 3.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 2,
                                        child: Column(
                                          children: [
                                            Expanded(
                                                child: TitleValidated(
                                                    title:
                                                        AppStrings.doseAmount,
                                                    condition: context
                                                            .read<
                                                                PrescriptionFormBloc>()
                                                            .state
                                                            .prescription
                                                            .doseAmount ==
                                                        DoseAmount.empty())),
                                            Expanded(
                                                flex: 2,
                                                child:
                                                    DropdownSearchDoseAmount()),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                              Expanded(flex: 3, child: DropdownSearchDose()),
                            ],
                          ),
                        ),
                        Positioned(
                            // top: AppSize.s10,
                            left: AppSize.s10,
                            child: SizedBox(
                              child: SizedBox(
                                height: AppSize.s20 * 2,
                                width: AppSize.s20 * 6,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Icon(
                                        FontAwesomeIcons.clock,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        size: AppSize.s20,
                                      ),
                                    ),
                                    Spacer(),
                                    Expanded(
                                        flex: 4,
                                        child: FittedBox(child: Text('Dosis'))),
                                  ],
                                ),
                              ),
                            ))
                      ],
                    )),
              ]),
            ),
          );
        });
      },
    );
  }
}
