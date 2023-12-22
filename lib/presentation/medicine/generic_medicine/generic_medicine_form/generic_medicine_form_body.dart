import 'dart:ui';

import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/administration_route_watcher_bloc_.dart';
import 'package:expedientes_clinicos/application/categories/category_watcher/category_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/categories/category_watcher/medicine_category_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/branded_medicine/branded_medicine_form/branded_medicine_form_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/administration_route/drop_down_search_administration_route.dart';
import 'package:expedientes_clinicos/presentation/common/widget_components/buttons/main_action_button.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_fields/text_input_title.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_full_name.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/title_validated.dart';
import 'package:expedientes_clinicos/presentation/medicine/generic_medicine/generic_medicine_form/widgets/controlled_bool.dart';
import 'package:expedientes_clinicos/presentation/medicine/generic_medicine/generic_medicine_form/widgets/measure_unit_amount.dart';
import 'package:expedientes_clinicos/presentation/medicine/generic_medicine/generic_medicine_form/widgets/pharmaceutical_form_amount.dart';
import 'package:expedientes_clinicos/presentation/medicine/generic_medicine/medicine_category/drop_down_medicine_category.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
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
  final ScrollController _scrollController = ScrollController();

  final TextEditingController categoryText = TextEditingController();

  final TextEditingController medicineComercialController =
      TextEditingController();

  final TextEditingController medicineGenericController =
      TextEditingController();

  final TextEditingController measureUnitText = TextEditingController();

  final TextEditingController adminRouteText = TextEditingController();
  bool requestedSubmition = false;
  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();
    categoryText.dispose();
    medicineGenericController.dispose();
    measureUnitText.dispose();
    adminRouteText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.s10),
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: SingleChildScrollView(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: InputFieldHeight.xs,
            ),
            SizedBox(
                height: InputFieldHeight.m,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSize.s10),
                  child: TextInputTitle(
                    submitted: requestedSubmition,
                    validator: () {
                      return context
                          .read<GenericMedicineFormBloc>()
                          .state
                          .medicine
                          .genericName
                          .value
                          .fold(
                              (f) => f.maybeMap(
                                  exceedingLength: (value) =>
                                      AppStrings.tooLong,
                                  empty: (value) => AppStrings.isEmpty,
                                  orElse: () => AppStrings.empty),
                              (r) => null);
                    },
                    textEditingController: medicineGenericController,
                    title: AppStrings.fullName,
                    hintText: AppStrings.fullName,
                    onChanged: (value) {
                      medicineGenericController.text = value;
                      medicineGenericController.selection =
                          TextSelection.fromPosition(TextPosition(
                              offset: medicineGenericController.text.length));

                      context.read<GenericMedicineFormBloc>().add(
                          GenericMedicineFormEvent.genericNameChanged(
                              medicineGenericController.text));
                    },
                  ),
                )),
            const SizedBox(height: InputFieldHeight.s),
            //CATEGORY - CONTROLLED
            SizedBox(
              height: InputFieldHeight.m,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 8,
                    child: BlocProvider(
                        create: (context) =>
                            getIt<MedicineCategoryWatcherBloc>()
                              ..add(
                                  const CategoryWatcherEvent.watchAllStarted()),
                        child: DropdownSearchMedicineCategory(
                          requestedSubmition: requestedSubmition,
                        )),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  const Expanded(
                    flex: 4,
                    child: ControlledBool(),
                  ),
                  const Spacer(
                    flex: 1,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: InputFieldHeight.s,
            ),
            //MEASURE UNIT
            SizedBox(
                height: InputFieldHeight.m,
                child: MeasureUnitAmountRow(
                    requestedSubmition: requestedSubmition)),
            const SizedBox(
              height: InputFieldHeight.s,
            ),
            //PHARMACEUTICAL FORM
            SizedBox(
                height: InputFieldHeight.m,
                child: PharmaceuticalFormAmount(
                    requestedSubmition: requestedSubmition)),
            const SizedBox(
              height: InputFieldHeight.s,
            ),
            //ADMINISTRATION ROUTE
            SizedBox(
                height: InputFieldHeight.m,
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: BlocProvider(
                        create: (context) =>
                            getIt<AdministrationRouteWatcherBloc>()
                              ..add(const AbbreviationNameWatcherEvent
                                  .watchAllStarted()),
                        child: DropdownSearchAdministrationRoute(
                            requestedSubmition: requestedSubmition),
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: InputFieldHeight.xs,
            ),
            SizedBox(
                height: InputFieldHeight.s,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSize.s10),
                  child: MainActionButton(
                    text: AppStrings.create,
                    onPressed: () {
                      if (context
                          .read<GenericMedicineFormBloc>()
                          .state
                          .isValid) {
                        context
                            .read<GenericMedicineFormBloc>()
                            .add(const GenericMedicineFormEvent.saved());
                        context.read<BrandedMedicineFormBloc>().add(
                            BrandedMedicineFormEvent.genericMedicineChanged(
                                context
                                    .read<GenericMedicineFormBloc>()
                                    .state
                                    .medicine));
                      } else {
                        setState(() {
                          requestedSubmition = true;
                        });
                      }
                    },
                  ),
                )),
            const SizedBox(
              height: InputFieldHeight.l,
            ),
          ],
        )),
      ),
    );
  }
}
