import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/administration_route_watcher_bloc_.dart';
import 'package:expedientes_clinicos/application/categories/category_watcher/category_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/categories/category_watcher/medicine_category_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/medicine_form/medicine_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/administration_route/drop_down_search_administration_route.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/category/drop_down_search_categories.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/image_picker_display.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_full_name.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/title_validated.dart';
import 'package:expedientes_clinicos/presentation/medicine/medicine_category/drop_down_medicine_category.dart';
import 'package:expedientes_clinicos/presentation/medicine/medicine_category/pop_up_medicine_category_form.dart';
import 'package:expedientes_clinicos/presentation/medicine/medicine_form/widgets/controlled_bool.dart';
import 'package:expedientes_clinicos/presentation/medicine/medicine_form/widgets/measure_unit_amount.dart';
import 'package:expedientes_clinicos/presentation/medicine/medicine_form/widgets/pharmaceutical_form_amount.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MedicineFormBody extends StatefulWidget {
  const MedicineFormBody({
    super.key,
    required this.heightUnit,
    required this.constraints,
  });

  final BoxConstraints constraints;
  final double heightUnit;

  @override
  State<MedicineFormBody> createState() => _MedicineFormBodyState();
}

class _MedicineFormBodyState extends State<MedicineFormBody> {
  final _key = GlobalKey<FormState>();

  final TextEditingController categoryText = TextEditingController();

  final TextEditingController medicineComercialController =
      TextEditingController();

  final TextEditingController medicineGenericController =
      TextEditingController();

  final TextEditingController measureUnitText = TextEditingController();

  final TextEditingController adminRouteText = TextEditingController();

  bool requestedSubmition = false;
  final List<Category> categoriesList = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: widget.heightUnit,
          ),
          ImagePickerDisplay(
              heightUnit: widget.heightUnit,
              width: widget.constraints.maxWidth / 1.3,
              medicineComercialController: medicineComercialController,
              onImageUrlChanged: (img) {
                context
                    .read<MedicineFormBloc>()
                    .add(MedicineFormEvent.imageUrlChanged(img));
              },
              imageUrl:
                  context.read<MedicineFormBloc>().state.medicine.imageURL,
              mounted: mounted),
          SizedBox(
            height: widget.heightUnit,
          ),
          SizedBox(
            height: widget.heightUnit * 1.5,
            child: Row(
              children: [
                const Spacer(
                  flex: 1,
                ),
                Expanded(
                    flex: 4,
                    child: InputFullName(
                        label: AppStrings.comercialName,
                        fullName: context
                            .read<MedicineFormBloc>()
                            .state
                            .medicine
                            .comercialName,
                        onChanged: (value) {
                          medicineComercialController.text = value;
                          medicineComercialController.selection =
                              TextSelection.fromPosition(TextPosition(
                                  offset:
                                      medicineComercialController.text.length));

                          context.read<MedicineFormBloc>().add(
                              MedicineFormEvent.genericNameChanged(
                                  medicineComercialController.text));
                        },
                        textController: medicineComercialController)),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
          SizedBox(
            height: widget.heightUnit / 2,
          ),
          SizedBox(
            height: widget.heightUnit * 1.5,
            child: Row(
              children: [
                const Spacer(
                  flex: 1,
                ),
                Expanded(
                  flex: 4,
                  child: InputFullName(
                      label: AppStrings.genericName,
                      fullName: context
                          .read<MedicineFormBloc>()
                          .state
                          .medicine
                          .genericName,
                      onChanged: (value) {
                        medicineGenericController.text = value;
                        medicineGenericController.selection =
                            TextSelection.fromPosition(TextPosition(
                                offset: medicineGenericController.text.length));

                        context.read<MedicineFormBloc>().add(
                            MedicineFormEvent.genericNameChanged(
                                medicineGenericController.text));
                      },
                      textController: medicineGenericController),
                ),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
          SizedBox(
            height: widget.heightUnit / 2,
          ),
          //CATEGORY
          SizedBox(
            height: widget.heightUnit * 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TitleValidated(
                            title: AppStrings.category,
                            condition: (requestedSubmition &
                                (context
                                        .read<MedicineFormBloc>()
                                        .state
                                        .medicine
                                        .category ==
                                    Category.empty()))),
                      ),
                      Expanded(
                        child: BlocProvider(
                            create: (context) =>
                                getIt<MedicineCategoryWatcherBloc>()
                                  ..add(CategoryWatcherEvent.watchAllStarted()),
                            child: DropdownSearchMedicineCategory()),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ControlledBool(),
                ),
                Spacer(
                  flex: 1,
                )
              ],
            ),
          ),
          SizedBox(
            height: widget.heightUnit / 2,
          ),
          //MEASURE UNIT
          SizedBox(
              height: widget.heightUnit * 1.5,
              child:
                  MeasureUnitAmountRow(requestedSubmition: requestedSubmition)),
          SizedBox(
            height: widget.heightUnit / 2,
          ),
          //PHARMACEUTICAL FORM
          SizedBox(
              height: widget.heightUnit * 1.5,
              child: PharmaceuticalFormAmount(
                  requestedSubmition: requestedSubmition)),
          SizedBox(
            height: widget.heightUnit / 2,
          ),
          //ADMINISTRATION ROUTE
          SizedBox(
              height: widget.heightUnit * 1.5,
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: TitleValidated(
                              title: AppStrings.adminRouteAbbreviation,
                              condition: (requestedSubmition &
                                  (context
                                          .read<MedicineFormBloc>()
                                          .state
                                          .medicine
                                          .administrationRoute ==
                                      NameAbbreviation.empty()))),
                        ),
                        Expanded(
                          child: BlocProvider(
                            create: (context) =>
                                getIt<AdministrationRouteWatcherBloc>()
                                  ..add(AbbreviationNameWatcherEvent
                                      .watchAllStarted()),
                            child: DropdownSearchAdministrationRoute(),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: widget.heightUnit / 2,
          ),
          SizedBox(
              height: widget.heightUnit,
              width: widget.constraints.maxWidth / 3,
              child: ElevatedButton(
                onPressed: () {
                  print('current state');
                  // print(_key.currentState.);

                  if (_key.currentState!.validate()) {
                    context
                        .read<MedicineFormBloc>()
                        .add(const MedicineFormEvent.saved());
                  } else {
                    setState(() {
                      requestedSubmition = true;
                    });
                  }
                },
                child: const Text(AppStrings.create),
              )),
          SizedBox(
            height: widget.heightUnit / 2,
          ),

          //FAKER BUTTON - TO BE COMMENTED
          // FakerMedicineButton(heightUnit: heightUnit),
          SizedBox(
            height: widget.heightUnit / 2,
          ),
        ],
      ),
    );
  }
}
