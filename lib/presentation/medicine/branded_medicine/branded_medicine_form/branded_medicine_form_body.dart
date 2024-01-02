import 'package:expedientes_clinicos/application/medicine/branded_medicine/branded_medicine_form/branded_medicine_form_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/presentation/common/widget_components/buttons/main_action_button.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/image_picker_display.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_fields/text_input_title.dart';
import 'package:expedientes_clinicos/presentation/medicine/generic_medicine/generic_medicine_watcher/drop_down_generic_medicine.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
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

  final TextEditingController medicineComercialController =
      TextEditingController();
  // final TextEditingController medicineNameController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    // medicineNameController.dispose();
    medicineComercialController.dispose();
    super.dispose();
  }

  bool requestedSubmition = false;
  final List<Category> categoriesList = [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.s14),
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: InputFieldHeight.s,
              ),
              SizedBox(
                height: InputFieldHeight.l,
                child: ImagePickerDisplay(
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
              ),
              SizedBox(
                height: InputFieldHeight.xs,
              ),
              SizedBox(
                  height: InputFieldHeight.m,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppSize.s10),
                    child: TextInputTitle(
                      submitted: requestedSubmition,
                      validator: () {
                        return context
                            .read<BrandedMedicineFormBloc>()
                            .state
                            .medicine
                            .comercialName
                            .value
                            .fold(
                                (f) => f.maybeMap(
                                    exceedingLength: (value) =>
                                        AppStrings.tooLong,
                                    empty: (value) => AppStrings.isEmpty,
                                    orElse: () => AppStrings.empty),
                                (r) => null);
                      },
                      textEditingController: medicineComercialController,
                      title: AppStrings.fullName,
                      hintText: AppStrings.fullName,
                      onChanged: (value) {
                        medicineComercialController.text = value;
                        medicineComercialController.selection =
                            TextSelection.fromPosition(TextPosition(
                                offset:
                                    medicineComercialController.text.length));

                        context.read<BrandedMedicineFormBloc>().add(
                            BrandedMedicineFormEvent.comercialNameChanged(
                                medicineComercialController.text));
                      },
                    ),
                  )),
              SizedBox(
                height: InputFieldHeight.s,
              ),
              SizedBox(
                height: InputFieldHeight.m,
                child: DropdownSearchGenericMedicine(
                    requestedSubmition: requestedSubmition,
                    onSelected: (genericMedicine) {
                      context.read<BrandedMedicineFormBloc>().add(
                          BrandedMedicineFormEvent.genericMedicineChanged(
                              genericMedicine));
                    }),
              ),
              SizedBox(
                height: InputFieldHeight.s,
              ),
              SizedBox(
                  height: InputFieldHeight.s,
                  child: MainActionButton(
                    text: AppStrings.create,
                    onPressed: () {
                      if (context
                              .read<BrandedMedicineFormBloc>()
                              .state
                              .medicine
                              .comercialName
                              .value
                              .isRight() &&
                          !context
                              .read<BrandedMedicineFormBloc>()
                              .state
                              .medicine
                              .genericMedicine
                              .isEmpty) {
                        context
                            .read<BrandedMedicineFormBloc>()
                            .add(const BrandedMedicineFormEvent.saved());
                      } else {
                        setState(() {
                          requestedSubmition = true;
                        });
                      }
                    },
                  )),
              SizedBox(
                height: InputFieldHeight.s,
              ),

              //FAKER BUTTON - TO BE COMMENTED
              // FakerMedicineButton(heightUnit: heightUnit),
            ],
          ),
        ),
      ),
    );
  }
}
