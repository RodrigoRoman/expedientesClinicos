import 'package:auto_size_text/auto_size_text.dart';
import 'package:expedientes_clinicos/application/prescription/prescription_form/prescription_form_bloc.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication.dart';
import 'package:expedientes_clinicos/presentation/common/widget_components/buttons/main_action_button.dart';
import 'package:expedientes_clinicos/presentation/medicine/branded_medicine/branded_medicine_watcher/drop_down_branded_medicine.dart';
import 'package:expedientes_clinicos/presentation/prescription/dose/dose_amount/drop_down_dose_amount.dart';
import 'package:expedientes_clinicos/presentation/prescription/dose/drop_down_dose.dart';
import 'package:expedientes_clinicos/presentation/prescription/indications/drop_down_indication.dart';
import 'package:expedientes_clinicos/presentation/prescription/indications/drop_down_indications_list.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kt_dart/kt.dart';

class PrescriptionFormBody extends StatefulWidget {
  PrescriptionFormBody({super.key});

  @override
  State<PrescriptionFormBody> createState() => _PrescriptionFormBodyState();
}

class _PrescriptionFormBodyState extends State<PrescriptionFormBody> {
  bool submitted = false;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Center(
        child: Container(
          width: constraints.maxWidth * 1,
          height: constraints.maxHeight * 1,
          padding: const EdgeInsets.symmetric(horizontal: AppSize.s10),
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.tertiary,
              width: 3.0,
              style: BorderStyle.solid,
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSize.s12),
              child: Column(children: [
                //MEDICINE
                SizedBox(
                    height: InputFieldHeight.l + InputFieldHeight.s,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: InputFieldHeight.s,
                          width: constraints.maxWidth / 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Icon(
                                  FontAwesomeIcons.pills,
                                  color: Theme.of(context).colorScheme.primary,
                                  size: AppSize.s20,
                                ),
                              ),
                              Spacer(),
                              Expanded(
                                  flex: 4,
                                  child: FittedBox(child: Text('Medicamento'))),
                            ],
                          ),
                        ),
                        Container(
                          height: InputFieldHeight.l,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 5,
                                child: DropdownSearchBrandedMedicineForm(
                                  valid: !submitted ||
                                      !context
                                          .read<PrescriptionFormBloc>()
                                          .state
                                          .prescription
                                          .medicine
                                          .isEmpty,
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
                      ],
                    )),
                //DOSE SCHEME
                SizedBox(
                  height: InputFieldHeight.xl + InputFieldHeight.s,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: InputFieldHeight.s,
                        width: constraints.maxWidth / 3,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Icon(
                                FontAwesomeIcons.clock,
                                color: Theme.of(context).colorScheme.primary,
                                size: AppSize.s20,
                              ),
                            ),
                            Spacer(),
                            const Expanded(
                                flex: 4,
                                child: FittedBox(child: Text('Dosis'))),
                          ],
                        ),
                      ),
                      Container(
                        height: InputFieldHeight.xl,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 5,
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: Row(children: [
                                        Expanded(
                                          flex: 8,
                                          child: Column(
                                            children: [
                                              Expanded(
                                                  flex: 2,
                                                  child: DropdownSearchDoseAmount(
                                                      valid: !submitted ||
                                                          !context
                                                              .read<
                                                                  PrescriptionFormBloc>()
                                                              .state
                                                              .prescription
                                                              .doseAmount
                                                              .isEmpty)),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        Expanded(
                                            flex: 3,
                                            child: AutoSizeText(
                                              context
                                                  .read<PrescriptionFormBloc>()
                                                  .state
                                                  .prescription
                                                  .abbreviationUnit,
                                              wrapWords: false,
                                              minFontSize: 20,
                                            ))
                                      ])),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Expanded(
                                flex: 6,
                                child: DropdownSearchDose(
                                  valid: !submitted ||
                                      !context
                                          .read<PrescriptionFormBloc>()
                                          .state
                                          .prescription
                                          .dose
                                          .isEmpty,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //INDICATIONS
                SizedBox(
                  height: InputFieldHeight.xl + InputFieldHeight.s,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: InputFieldHeight.s,
                        width: constraints.maxWidth / 3,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Icon(
                                FontAwesomeIcons.clock,
                                color: Theme.of(context).colorScheme.primary,
                                size: AppSize.s20,
                              ),
                            ),
                            Spacer(),
                            const Expanded(
                                flex: 4,
                                child: FittedBox(child: Text('Indicaciones'))),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: InputFieldHeight.xl,
                        child: PrescriptionIndicationsListDropDown(
                          dropDownIndication:
                              DropdownSearchPrescriptionIndication(),
                          selectedIndications: context
                              .read<PrescriptionFormBloc>()
                              .state
                              .prescription
                              .indications
                              .value
                              .fold(
                                  (l) => [], (r) => r.toMutableList().asList()),
                          updateList: (List<Indication> newIndications) {
                            context.read<PrescriptionFormBloc>().add(
                                PrescriptionFormEvent.onIndicationsChanged(
                                    newIndications));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: InputFieldHeight.xs),
                SizedBox(
                    height: InputFieldHeight.s,
                    child: MainActionButton(
                        onPressed: () {
                          if (!context
                                  .read<PrescriptionFormBloc>()
                                  .state
                                  .prescription
                                  .dose
                                  .isEmpty &&
                              !context
                                  .read<PrescriptionFormBloc>()
                                  .state
                                  .prescription
                                  .doseAmount
                                  .isEmpty &&
                              !context
                                  .read<PrescriptionFormBloc>()
                                  .state
                                  .prescription
                                  .medicine
                                  .isEmpty) {
                            context
                                .read<PrescriptionFormBloc>()
                                .add(PrescriptionFormEvent.saved());
                          } else {
                            setState(() {
                              submitted = true;
                            });
                          }
                        },
                        text: AppStrings.create)),
                SizedBox(height: InputFieldHeight.s)
              ]),
            ),
          ),
        ),
      );
    });
  }
}
