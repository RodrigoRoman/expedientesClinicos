import 'dart:io';
import 'package:expedientes_clinicos/presentation/medicine/medicine_form/medicine_form_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:expedientes_clinicos/injection.dart';

import 'widgets/measure_unit_amount.dart';
import 'widgets/pharmaceutical_form_amount.dart';

import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/administration_route_watcher_bloc_.dart';
import 'package:expedientes_clinicos/application/categories/category_watcher/category_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/medicine_form/medicine_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/presentation/administration_route/drop_down_search_administration_route.dart';
import 'package:expedientes_clinicos/presentation/category/widgets/drop_down_search_categories.dart';
import 'package:expedientes_clinicos/presentation/category/widgets/pop_up_category_form.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/image_picker_display.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_full_name.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/title_validated.dart';
import 'package:expedientes_clinicos/presentation/medicine/medicine_form/widgets/controlled_bool.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';

class MedicineFormPage extends StatefulWidget {
  const MedicineFormPage({super.key});

  @override
  State<MedicineFormPage> createState() => _MedicineFormPageState();
}

class _MedicineFormPageState extends State<MedicineFormPage> {
  final TextEditingController categoryText = TextEditingController();

  final TextEditingController medicineComercialController =
      TextEditingController();

  final TextEditingController medicineGenericController =
      TextEditingController();

  final TextEditingController measureUnitText = TextEditingController();

  final TextEditingController adminRouteText = TextEditingController();

  final TextEditingController description = TextEditingController();

  final ScrollController scrollController = ScrollController();

  bool requestedSubmition = false;

  final _key = GlobalKey<FormState>();

  List<Category> categoriesList = [];

  @override
  Widget build(BuildContext context) {
    final double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    WidgetsBinding.instance.addPostFrameCallback((_) async =>
        scrollController.animateTo(keyboardHeight / 2,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut));
    return Scaffold(body: LayoutBuilder(
      builder: (context, constraint) {
        double heightUnit = (constraint.maxHeight + keyboardHeight) / 16;
        return SingleChildScrollView(
          controller: scrollController,
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: IntrinsicHeight(
                child: BlocProvider(
                    create: (context) => getIt<MedicineFormBloc>(),
                    child: BlocConsumer<MedicineFormBloc, MedicineFormState>(
                        listener: (context, state) {
                      state.saveFailureOrSuccessOption.fold(() {
                        if (state.isSaving) {
                          context.read<StateRendererBloc>().add(
                              const StateRendererEvent.popUpLoading(
                                  AppStrings.saving,
                                  AppStrings.actionInProgressExplain,
                                  false));
                        }
                      },
                          (either) => either.fold(
                                  (failure) => failure.maybeMap(
                                        unexpected: (e) {
                                          context.read<StateRendererBloc>().add(
                                              const StateRendererEvent
                                                      .popUpError(
                                                  AppStrings.couldNotSaveImage,
                                                  AppStrings.somethingWentWrong,
                                                  true));
                                        },
                                        unableToUploadImage: (e) {
                                          context.read<StateRendererBloc>().add(
                                              const StateRendererEvent
                                                      .popUpError(
                                                  AppStrings.couldNotSaveImage,
                                                  AppStrings.somethingWentWrong,
                                                  true));
                                        },
                                        insufficientPermissions: (e) {
                                          context.read<StateRendererBloc>().add(
                                              const StateRendererEvent
                                                      .popUpError(
                                                  AppStrings
                                                      .insuficcientPermissions,
                                                  AppStrings
                                                      .insuficcientPermissionsExplain,
                                                  true));
                                        },
                                        unableToCreate: (e) {
                                          context.read<StateRendererBloc>().add(
                                              const StateRendererEvent
                                                      .popUpError(
                                                  AppStrings.unableToCreate,
                                                  AppStrings
                                                      .unableToCreateExplain,
                                                  true));
                                        },
                                        orElse: () {
                                          context.read<StateRendererBloc>().add(
                                              const StateRendererEvent
                                                      .popUpError(
                                                  AppStrings.genericError,
                                                  AppStrings
                                                      .genericErrorExplain,
                                                  true));
                                        },
                                      ), (r) {
                                context.read<StateRendererBloc>().add(
                                    const StateRendererEvent.popUpSuccess(
                                        AppStrings.success,
                                        AppStrings.successfullyCreated,
                                        true));
                              }));
                      // state.ingredientCore.imgUrl.value;
                    }, builder: (context, state) {
                      return BlocConsumer<MedicineFormBloc, MedicineFormState>(
                        listener: (context, state) {
                          // TODO: implement listener
                        },
                        builder: (context, state) {
                          return MedicineFormBody(
                            key: _key,
                            heightUnit: heightUnit,
                            mounted: mounted,
                            constraints: constraint,
                          );
                        },
                      );
                    }))),
          ),
        );
      },
    ));
  }
}
