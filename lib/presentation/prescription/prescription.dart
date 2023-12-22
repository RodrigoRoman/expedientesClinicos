import 'package:expedientes_clinicos/application/prescription/prescription_form/prescription_form_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication.dart';
import 'package:expedientes_clinicos/domain/prescription/dose/dose_amount/dose_amount.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_fields/double_input.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/title_validated.dart';
import 'package:expedientes_clinicos/presentation/medicine/branded_medicine/branded_medicine_watcher/drop_down_branded_medicine.dart';
import 'package:expedientes_clinicos/presentation/prescription/dose/dose_amount/drop_down_dose_amount.dart';
import 'package:expedientes_clinicos/presentation/prescription/dose/drop_down_dose.dart';
import 'package:expedientes_clinicos/presentation/prescription/indications/drop_down_indication.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kt_dart/kt.dart';

class PrescriptionBody extends StatefulWidget {
  const PrescriptionBody({super.key});

  @override
  State<PrescriptionBody> createState() => _PrescriptionBodyState();
}

class _PrescriptionBodyState extends State<PrescriptionBody> {
  TextEditingController labelController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                    flex: 7,
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
                                flex: 5,
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
                    flex: 6,
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: AppSize.s35),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).colorScheme.primary,
                              width: 3.0,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: const Column(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 2,
                                        child: Column(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child:
                                                    DropdownSearchDoseAmount()),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                              Spacer(),
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
                Expanded(
                    flex: 9,
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
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      Spacer(),
                                      Expanded(
                                          child: TitleValidated(
                                              title: AppStrings.labelIndication,
                                              condition: context
                                                      .read<
                                                          PrescriptionFormBloc>()
                                                      .state
                                                      .prescription
                                                      .indications !=
                                                  [])),
                                      Expanded(
                                          flex: 3,
                                          child: DropdownSearchIndication(
                                            onSelected: () {},
                                          )),
                                    ],
                                  )),
                              (context
                                          .read<PrescriptionFormBloc>()
                                          .state
                                          .prescription
                                          .indications
                                          .length >
                                      0)
                                  ? Expanded(child: LayoutBuilder(
                                      builder: (context, constraints) {
                                      Category prevCategory = Category.empty();

                                      List<Indication> selectedIndications =
                                          context
                                              .read<PrescriptionFormBloc>()
                                              .state
                                              .prescription
                                              .indications
                                              .value
                                              .fold(
                                                  (l) => [],
                                                  (r) => r
                                                      .toMutableList()
                                                      .asList());
                                      selectedIndications.sort((a, b) => a
                                          .indicationCategory.name.value
                                          .fold((l) => '', (r) => r)
                                          .compareTo(b
                                              .indicationCategory.name.value
                                              .fold((l) => '', (r) => r)));
                                      return ListView.builder(
                                          itemCount: context
                                              .read<PrescriptionFormBloc>()
                                              .state
                                              .prescription
                                              .indications
                                              .length,
                                          itemBuilder: (context, index) {
                                            Indication e = context
                                                .read<PrescriptionFormBloc>()
                                                .state
                                                .prescription
                                                .indications
                                                .value
                                                .fold((l) => Indication.empty(),
                                                    (r) => r[index]);
                                            bool condition = (prevCategory !=
                                                e.indicationCategory);
                                            prevCategory = e.indicationCategory;
                                            return (condition)
                                                ? Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                          height: constraints
                                                                  .maxHeight /
                                                              3,
                                                          width: constraints
                                                                  .maxWidth /
                                                              1.4,
                                                          child: ListTile(
                                                            contentPadding:
                                                                EdgeInsets.zero,
                                                            isThreeLine: false,
                                                            leading: e
                                                                .indicationCategory
                                                                .imageUrl
                                                                .value
                                                                .fold(
                                                              (l) => null,
                                                              (r) => SizedBox(
                                                                width: constraints
                                                                        .maxWidth /
                                                                    3,
                                                                height: constraints
                                                                        .maxHeight /
                                                                    3,
                                                                child: Row(
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          shape:
                                                                              BoxShape.circle,
                                                                          image:
                                                                              DecorationImage(
                                                                            fit:
                                                                                BoxFit.cover,
                                                                            image:
                                                                                NetworkImage(
                                                                              r,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      flex: 1,
                                                                      child: FittedBox(
                                                                          child: Text(e
                                                                              .indicationCategory
                                                                              .name
                                                                              .value
                                                                              .fold((l) => '', (r) => r))),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          )),
                                                      SizedBox(
                                                        height: AppSize.s8,
                                                      ),
                                                      SizedBox(
                                                        height: constraints
                                                                .maxHeight /
                                                            3,
                                                        width: constraints
                                                                .maxWidth /
                                                            1.1,
                                                        child: ListTile(
                                                            trailing:
                                                                IconButton(
                                                              icon: Icon(
                                                                  Icons.cancel),
                                                              color: Colors.red,
                                                              onPressed: () {
                                                                selectedIndications
                                                                    .removeAt(
                                                                        index);
                                                                context
                                                                    .read<
                                                                        PrescriptionFormBloc>()
                                                                    .add(PrescriptionFormEvent
                                                                        .onIndicationsChanged(
                                                                            selectedIndications));
                                                                selectedIndications.sort((a, b) => a
                                                                    .indicationCategory
                                                                    .name
                                                                    .value
                                                                    .fold(
                                                                        (l) =>
                                                                            '',
                                                                        (r) =>
                                                                            r)
                                                                    .compareTo(b
                                                                        .indicationCategory
                                                                        .name
                                                                        .value
                                                                        .fold(
                                                                            (l) =>
                                                                                '',
                                                                            (r) =>
                                                                                r)));
                                                              },
                                                            ),
                                                            contentPadding:
                                                                EdgeInsets.zero,
                                                            isThreeLine: false,
                                                            // leading:
                                                            //     SizedBox.shrink(),
                                                            title: Row(
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets
                                                                        .only(
                                                                            right:
                                                                                8),
                                                                    child: Icon(
                                                                        Icons
                                                                            .fiber_manual_record,
                                                                        size:
                                                                            12),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  flex: 5,
                                                                  child:
                                                                      SingleChildScrollView(
                                                                    // direction: Axis.vertical,
                                                                    clipBehavior:
                                                                        Clip.antiAliasWithSaveLayer,
                                                                    child: Text(
                                                                        e.indicationName.value.fold(
                                                                            (l) => AppStrings
                                                                                .isEmpty,
                                                                            (r) =>
                                                                                r),
                                                                        style: Theme.of(context)
                                                                            .textTheme
                                                                            .titleLarge!
                                                                            .copyWith(
                                                                                fontSize: AppSize
                                                                                    .s18),
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        maxLines:
                                                                            4,
                                                                        overflow:
                                                                            TextOverflow.ellipsis),
                                                                  ),
                                                                ),
                                                              ],
                                                            )),
                                                      ),
                                                      SizedBox(
                                                        height: AppSize.s8,
                                                      ),
                                                    ],
                                                  )
                                                : Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        height: constraints
                                                                .maxHeight /
                                                            3,
                                                        width: constraints
                                                                .maxWidth /
                                                            1.1,
                                                        child: ListTile(
                                                            trailing:
                                                                IconButton(
                                                              icon: Icon(
                                                                  Icons.cancel),
                                                              color: Colors.red,
                                                              onPressed: () {
                                                                selectedIndications
                                                                    .removeAt(
                                                                        index);
                                                                context
                                                                    .read<
                                                                        PrescriptionFormBloc>()
                                                                    .add(PrescriptionFormEvent
                                                                        .onIndicationsChanged(
                                                                            selectedIndications));
                                                                selectedIndications.sort((a, b) => a
                                                                    .indicationCategory
                                                                    .name
                                                                    .value
                                                                    .fold(
                                                                        (l) =>
                                                                            '',
                                                                        (r) =>
                                                                            r)
                                                                    .compareTo(b
                                                                        .indicationCategory
                                                                        .name
                                                                        .value
                                                                        .fold(
                                                                            (l) =>
                                                                                '',
                                                                            (r) =>
                                                                                r)));
                                                              },
                                                            ),
                                                            contentPadding:
                                                                EdgeInsets.zero,
                                                            isThreeLine: false,
                                                            // leading: SizedBox.shrink(),
                                                            title: Row(
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets
                                                                        .only(
                                                                            right:
                                                                                8),
                                                                    child: Icon(
                                                                        Icons
                                                                            .fiber_manual_record,
                                                                        size:
                                                                            12),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  flex: 5,
                                                                  child:
                                                                      SingleChildScrollView(
                                                                    // direction: Axis.vertical,
                                                                    clipBehavior:
                                                                        Clip.antiAliasWithSaveLayer,
                                                                    child: Text(
                                                                        e.indicationName.value.fold(
                                                                            (l) => AppStrings
                                                                                .isEmpty,
                                                                            (r) =>
                                                                                r),
                                                                        style: Theme.of(context)
                                                                            .textTheme
                                                                            .titleLarge!
                                                                            .copyWith(
                                                                                fontSize: AppSize
                                                                                    .s18),
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        maxLines:
                                                                            4,
                                                                        overflow:
                                                                            TextOverflow.ellipsis),
                                                                  ),
                                                                ),
                                                              ],
                                                            )),
                                                      ),
                                                      SizedBox(
                                                        height: AppSize.s8,
                                                      ),
                                                    ],
                                                  );
                                          });
                                    }))
                                  : Expanded(
                                      child: Icon(FontAwesomeIcons.list)),
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
                                        FontAwesomeIcons.listCheck,
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
                                            child: Text('Indicaciones'))),
                                  ],
                                ),
                              ),
                            ))
                      ],
                    )),
                Spacer(flex: 1)
              ]),
            ),
          );
        });
      },
    );
  }
}
