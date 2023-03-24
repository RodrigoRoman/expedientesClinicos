import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/administration_route_watcher_bloc_.dart';
import 'package:expedientes_clinicos/application/categories/category_watcher/category_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/categories/category_watcher/medicine_category_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/administration_route/drop_down_search_administration_route.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_full_name.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/title_validated.dart';
import 'package:expedientes_clinicos/presentation/medicine/generic_medicine/generic_medicine_form/widgets/controlled_bool.dart';
import 'package:expedientes_clinicos/presentation/medicine/generic_medicine/generic_medicine_form/widgets/measure_unit_amount.dart';
import 'package:expedientes_clinicos/presentation/medicine/generic_medicine/generic_medicine_form/widgets/pharmaceutical_form_amount.dart';
import 'package:expedientes_clinicos/presentation/medicine/generic_medicine/medicine_category/drop_down_medicine_category.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenericMedicineFormBody extends StatefulWidget {
  const GenericMedicineFormBody({
    super.key,
  });

  @override
  State<GenericMedicineFormBody> createState() =>
      _GenericMedicineFormBodyState();
}

class _GenericMedicineFormBodyState extends State<GenericMedicineFormBody> {
  final _key = GlobalKey<FormState>();

  final ScrollController _scrollController = ScrollController();

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
    return LayoutBuilder(builder: (context, constraints) {
      double unitHeight = constraints.maxHeight / 12;
      return Form(
          key: _key,
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: unitHeight,
                  width: constraints.maxWidth,
                ),
                SizedBox(
                  height: unitHeight * 1.5,
                  width: constraints.maxWidth,
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
                                .read<GenericMedicineFormBloc>()
                                .state
                                .medicine
                                .genericName,
                            onChanged: (value) {
                              medicineGenericController.text = value;
                              medicineGenericController.selection =
                                  TextSelection.fromPosition(TextPosition(
                                      offset: medicineGenericController
                                          .text.length));

                              context.read<GenericMedicineFormBloc>().add(
                                  GenericMedicineFormEvent.genericNameChanged(
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
                  height: unitHeight / 2,
                  width: constraints.maxWidth,
                ),
                //CATEGORY
                SizedBox(
                  height: unitHeight * 1.5,
                  width: constraints.maxWidth,
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
                                              .read<GenericMedicineFormBloc>()
                                              .state
                                              .medicine
                                              .category ==
                                          Category.empty()))),
                            ),
                            Expanded(
                              child: BlocProvider(
                                  create: (context) => getIt<
                                      MedicineCategoryWatcherBloc>()
                                    ..add(
                                        CategoryWatcherEvent.watchAllStarted()),
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
                  height: unitHeight / 2,
                  width: constraints.maxWidth,
                ),
                //MEASURE UNIT
                SizedBox(
                    height: unitHeight * 1.5,
                    width: constraints.maxWidth,
                    child: MeasureUnitAmountRow(
                        requestedSubmition: requestedSubmition)),
                SizedBox(
                  height: unitHeight / 2,
                  width: constraints.maxWidth,
                ),
                //PHARMACEUTICAL FORM
                SizedBox(
                    height: unitHeight * 1.5,
                    width: constraints.maxWidth,
                    child: PharmaceuticalFormAmount(
                        requestedSubmition: requestedSubmition)),
                SizedBox(
                  height: unitHeight / 2,
                  width: constraints.maxWidth,
                ),
                //ADMINISTRATION ROUTE
                SizedBox(
                    height: unitHeight * 1.5,
                    width: constraints.maxWidth,
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
                                                .read<GenericMedicineFormBloc>()
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
                  height: unitHeight / 2,
                  width: constraints.maxWidth,
                ),
                SizedBox(
                    height: unitHeight,
                    width: constraints.maxWidth / 3,
                    child: ElevatedButton(
                      onPressed: () {
                        print('current state');
                        // print(_key.currentState.);

                        if (_key.currentState!.validate()) {
                          context
                              .read<GenericMedicineFormBloc>()
                              .add(const GenericMedicineFormEvent.saved());
                        } else {
                          setState(() {
                            requestedSubmition = true;
                          });
                        }
                      },
                      child: const Icon(FontAwesomeIcons.paperPlane),
                    )),
                SizedBox(
                  height: unitHeight / 2,
                ),

                //FAKER BUTTON - TO BE COMMENTED
                // FakerMedicineButton(heightUnit: heightUnit),
                SizedBox(
                  height: unitHeight / 2,
                ),
              ],
            ),
          ));
    });
  }
}
