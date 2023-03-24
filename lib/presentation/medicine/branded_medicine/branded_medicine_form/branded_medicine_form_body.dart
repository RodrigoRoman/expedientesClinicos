import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/administration_route_watcher_bloc_.dart';
import 'package:expedientes_clinicos/application/categories/category_watcher/category_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/categories/category_watcher/medicine_category_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/branded_medicine/branded_medicine_form/branded_medicine_form_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/administration_route/drop_down_search_administration_route.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/image_picker_display.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_full_name.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/title_validated.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BrandedMedicineFormBody extends StatefulWidget {
  const BrandedMedicineFormBody({
    super.key,
  });

  @override
  State<BrandedMedicineFormBody> createState() =>
      _BrandedMedicineFormBodyState();
}

class _BrandedMedicineFormBodyState extends State<BrandedMedicineFormBody> {
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
    return LayoutBuilder(builder: (context, constraints) {
      double unitHeight = constraints.maxHeight / 10;
      return Form(
        key: _key,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: unitHeight,
              ),
              ImagePickerDisplay(
                  heightUnit: unitHeight,
                  width: constraints.maxWidth / 1.3,
                  medicineComercialController: medicineComercialController,
                  onImageUrlChanged: (img) {
                    context
                        .read<BrandedMedicineFormBloc>()
                        .add(BrandedMedicineFormEvent.imageUrlChanged(img));
                  },
                  imageUrl: context
                      .read<BrandedMedicineFormBloc>()
                      .state
                      .medicine
                      .imageURL,
                  mounted: mounted),
              SizedBox(
                height: unitHeight,
              ),
              SizedBox(
                height: unitHeight * 1.5,
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
                                .read<BrandedMedicineFormBloc>()
                                .state
                                .medicine
                                .comercialName,
                            onChanged: (value) {
                              medicineComercialController.text = value;
                              medicineComercialController.selection =
                                  TextSelection.fromPosition(TextPosition(
                                      offset: medicineComercialController
                                          .text.length));

                              context.read<BrandedMedicineFormBloc>().add(
                                  BrandedMedicineFormEvent.comercialNameChanged(
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
                height: unitHeight / 2,
              ),
              SizedBox(
                height: unitHeight / 2,
              ),

              SizedBox(
                height: unitHeight / 2,
              ),
              //ADMINISTRATION ROUTE
              SizedBox(
                height: unitHeight / 2,
              ),
              SizedBox(
                  height: unitHeight,
                  width: constraints.maxWidth / 3,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_key.currentState!.validate()) {
                        context
                            .read<BrandedMedicineFormBloc>()
                            .add(const BrandedMedicineFormEvent.saved());
                      } else {
                        setState(() {
                          requestedSubmition = true;
                        });
                      }
                    },
                    child: const Text(AppStrings.create),
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
        ),
      );
    });
  }
}
