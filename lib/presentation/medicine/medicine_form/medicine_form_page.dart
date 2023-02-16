import 'dart:io';

import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/administration_route_watcher_bloc_.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/measure_unit_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/pharmaceutical_form_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/categories/category_watcher/category_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/medicine_form/medicine_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/administration_route/drop_down_search_administration_route.dart';
import 'package:expedientes_clinicos/presentation/administration_route/pop_up_administration_route_form.dart';
import 'package:expedientes_clinicos/presentation/category/widgets/drop_down_search_categories.dart';
import 'package:expedientes_clinicos/presentation/category/widgets/pop_up_category_form.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/description.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/double_input.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/image_container.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/integer_input.dart';
import 'package:expedientes_clinicos/presentation/measure_unit/drop_down_search_measure_unit.dart';
import 'package:expedientes_clinicos/presentation/measure_unit/pop_up_measure_unit_form.dart';
import 'package:expedientes_clinicos/presentation/pharmaceutical_form/drop_down_pharmaceutical_form.dart';
import 'package:expedientes_clinicos/presentation/resources/asset_names.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

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

  final _key = GlobalKey<FormState>();

  List<Category> categoriesList = [];

  Future pickImage() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxHeight: 700,
      maxWidth: 700,
    );
    if (image == null) {
      return '';
    } else {
      return image.path;
    }
  }

  Future takeImage() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxHeight: 700,
      maxWidth: 700,
    );
    if (image == null) {
      return '';
    } else {
      return image.path;
    }
  }

  @override
  Widget build(BuildContext context) {
    print('imagenes');
    print(AppAssetNames.controlledImage);
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
                          return Form(
                            key: _key,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  height: heightUnit,
                                ),
                                Material(
                                  color: Colors.transparent,
                                  elevation: 10,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(AppSize.s24)),
                                  child: AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      height: heightUnit * 4,
                                      width: constraint.maxWidth / 1.3,
                                      margin: const EdgeInsets.all(AppSize.s2),
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                          //if the user passes to the comercialName field without filling the image part
                                          //then we want to notify to them with red border.
                                          border: (medicineComercialController
                                                  .text.isEmpty)
                                              ? null
                                              : state.medicine.imageURL.value
                                                  .fold(
                                                      (l) => Border.all(
                                                            color: Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .error,
                                                            width: 4,
                                                          ),
                                                      (r) => null),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(AppSize.s24))),
                                      child: (state.medicine.imageURL.value
                                          .fold(
                                              (l) => GestureDetector(
                                                    onTap: () async {
                                                      final String img =
                                                          await pickImage();
                                                      if (!mounted) return;
                                                      print(
                                                          'image url changed');
                                                      context
                                                          .read<
                                                              MedicineFormBloc>()
                                                          .add(MedicineFormEvent
                                                              .imageUrlChanged(
                                                                  img));
                                                    },
                                                    child: const AnimatedImage(
                                                      animationName:
                                                          AppAssetNames
                                                              .imagePlaceholder,
                                                    ),
                                                  ),
                                              (r) => LayoutBuilder(builder:
                                                      (context,
                                                          constraintStack) {
                                                    return Stack(
                                                      children: [
                                                        Positioned(
                                                          height:
                                                              constraintStack
                                                                  .maxHeight,
                                                          width: constraintStack
                                                              .maxWidth,
                                                          child: ClipRRect(
                                                              clipBehavior:
                                                                  Clip.hardEdge,
                                                              // decoration: BoxDecoration(
                                                              borderRadius:
                                                                  const BorderRadius
                                                                          .all(
                                                                      Radius.circular(
                                                                          AppSize
                                                                              .s24)),
                                                              // ),
                                                              child:
                                                                  Image.asset(
                                                                      r)),
                                                        ),
                                                        Positioned(
                                                          top: (constraintStack
                                                                      .maxHeight /
                                                                  2) -
                                                              (constraintStack
                                                                      .maxWidth /
                                                                  6),
                                                          left: (constraintStack
                                                                      .maxWidth /
                                                                  2) -
                                                              (constraintStack
                                                                      .maxWidth /
                                                                  6),
                                                          width: constraintStack
                                                                  .maxWidth /
                                                              3,
                                                          height: constraintStack
                                                                  .maxWidth /
                                                              3,
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              context
                                                                  .read<
                                                                      MedicineFormBloc>()
                                                                  .add(const MedicineFormEvent
                                                                          .imageUrlChanged(
                                                                      ''));
                                                            },
                                                            child:
                                                                const AnimatedImage(
                                                              animationName:
                                                                  AppAssetNames
                                                                      .imagePlaceholder,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    );
                                                  })))),
                                ),
                                SizedBox(
                                  height: heightUnit,
                                ),
                                SizedBox(
                                  height: heightUnit * 1.5,
                                  child: Row(
                                    children: [
                                      const Spacer(
                                        flex: 1,
                                      ),
                                      Expanded(
                                        flex: 4,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                                flex: 1,
                                                child: Text(
                                                  AppStrings.comercialName,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall,
                                                )),
                                            Expanded(
                                                flex: 2,
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                      errorStyle: TextStyle(
                                                          fontSize: AppSize.s12,
                                                          color:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .error),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        borderSide: BorderSide(
                                                          color:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .error,
                                                          // width:
                                                          //     LayoutConstants.dimen_1,
                                                          style:
                                                              BorderStyle.solid,
                                                        ),
                                                      )),
                                                  controller:
                                                      medicineComercialController,
                                                  validator: (value) {
                                                    return state.medicine
                                                        .comercialName.value
                                                        .fold(
                                                            (l) => l.maybeMap(
                                                                exceedingLength:
                                                                    (_) => AppStrings
                                                                        .tooLong,
                                                                empty: (_) =>
                                                                    AppStrings
                                                                        .isEmpty,
                                                                orElse: () =>
                                                                    AppStrings
                                                                        .error),
                                                            (r) => null);
                                                  },
                                                  onChanged: (value) {
                                                    medicineComercialController
                                                        .text = value;
                                                    medicineComercialController
                                                            .selection =
                                                        TextSelection.fromPosition(
                                                            TextPosition(
                                                                offset:
                                                                    medicineComercialController
                                                                        .text
                                                                        .length));

                                                    context
                                                        .read<
                                                            MedicineFormBloc>()
                                                        .add(MedicineFormEvent
                                                            .comercialNameChanged(
                                                                medicineComercialController
                                                                    .text));
                                                  },
                                                )),
                                          ],
                                        ),
                                      ),
                                      const Spacer(
                                        flex: 1,
                                      ),
                                      //OPTIMUM
                                      // Expanded(
                                      //   flex: 3,
                                      //   child: Column(
                                      //     mainAxisAlignment:
                                      //         MainAxisAlignment.spaceAround,
                                      //     crossAxisAlignment:
                                      //         CrossAxisAlignment.center,
                                      //     children: [
                                      //       Expanded(
                                      //         flex: 1,
                                      //         child: Text(AppStrings.optimum,
                                      //             style: Theme.of(context)
                                      //                 .textTheme
                                      //                 .titleSmall),
                                      //       ),
                                      //       Expanded(
                                      //         child: IntegerInputBox(
                                      //             initialValue: 0,
                                      //             minValue: 0,
                                      //             maxValue: 10,
                                      //             onChanged: (i) {
                                      //               context
                                      //                   .read<
                                      //                       MedicineFormBloc>()
                                      //                   .add(MedicineFormEvent
                                      //                       .optimum(i));
                                      //             }),
                                      //       ),
                                      //     ],
                                      //   ),
                                      // ),
                                      const Spacer(
                                        flex: 1,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: heightUnit / 2,
                                ),
                                SizedBox(
                                  height: heightUnit * 1.5,
                                  child: Row(
                                    children: [
                                      const Spacer(
                                        flex: 1,
                                      ),
                                      Expanded(
                                        flex: 4,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                                flex: 1,
                                                child: Text(
                                                  AppStrings.genericName,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall,
                                                )),
                                            Expanded(
                                                flex: 2,
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                      errorStyle: TextStyle(
                                                          fontSize: AppSize.s12,
                                                          color:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .error),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        borderSide: BorderSide(
                                                          color:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .error,
                                                          // width:
                                                          //     LayoutConstants.dimen_1,
                                                          style:
                                                              BorderStyle.solid,
                                                        ),
                                                      )),
                                                  controller:
                                                      medicineGenericController,
                                                  validator: (value) {
                                                    return state.medicine
                                                        .comercialName.value
                                                        .fold(
                                                            (l) => l.maybeMap(
                                                                exceedingLength:
                                                                    (_) => AppStrings
                                                                        .tooLong,
                                                                empty: (_) =>
                                                                    AppStrings
                                                                        .isEmpty,
                                                                orElse: () =>
                                                                    AppStrings
                                                                        .error),
                                                            (r) => null);
                                                  },
                                                  onChanged: (value) {
                                                    medicineGenericController
                                                        .text = value;
                                                    medicineGenericController
                                                            .selection =
                                                        TextSelection.fromPosition(
                                                            TextPosition(
                                                                offset:
                                                                    medicineGenericController
                                                                        .text
                                                                        .length));

                                                    context
                                                        .read<
                                                            MedicineFormBloc>()
                                                        .add(MedicineFormEvent
                                                            .comercialNameChanged(
                                                                medicineGenericController
                                                                    .text));
                                                  },
                                                )),
                                          ],
                                        ),
                                      ),
                                      const Spacer(
                                        flex: 1,
                                      ),
                                      const Spacer(
                                        flex: 1,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: heightUnit / 2,
                                ),
                                //CATEGORY
                                SizedBox(
                                    height: heightUnit * 1.5,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Expanded(
                                          flex: 5,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  AppStrings.category,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall,
                                                ),
                                              ),
                                              Expanded(
                                                child: BlocProvider(
                                                    create: (context) => getIt<
                                                        CategoryWatcherBloc>()
                                                      ..add(const CategoryWatcherEvent
                                                          .watchAllStarted()),
                                                    child:
                                                        DropdownSearchCategories(
                                                      textController:
                                                          categoryText,
                                                      listElements:
                                                          categoriesList,
                                                      hintText: AppStrings
                                                          .chooseCategory,
                                                      newFunction: () {
                                                        context
                                                            .read<
                                                                StateRendererBloc>()
                                                            .add(StateRendererEvent
                                                                .popUpForm(
                                                                    'Crear categoria',
                                                                    CategoryForm(),
                                                                    false));
                                                      },
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Column(
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 2,
                                                      child: FittedBox(
                                                        child: Text(
                                                          AppStrings.controlled,
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyMedium,
                                                        ),
                                                      ),
                                                    ),
                                                    Spacer(flex: 1),
                                                    Expanded(
                                                      child: FittedBox(
                                                        child: Text(
                                                          AppStrings.freeSale,
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyMedium,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Switch.adaptive(
                                                    value: true,
                                                    activeThumbImage:
                                                        const AssetImage(
                                                            AppAssetNames
                                                                .controlledImage),
                                                    inactiveThumbImage:
                                                        const AssetImage(
                                                            AppAssetNames
                                                                .freeSaleImage),
                                                    onChanged: (_) {}),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Spacer(
                                          flex: 1,
                                        )
                                      ],
                                    )),
                                SizedBox(
                                  height: heightUnit / 2,
                                ),
                                //MEASURE UNIT
                                SizedBox(
                                    height: heightUnit * 1.5,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 6,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  AppStrings.measureUnit,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall,
                                                ),
                                              ),
                                              Expanded(
                                                child: BlocProvider(
                                                  create: (context) => getIt<
                                                      MeasureUnitWatcherBloc>()
                                                    ..add(
                                                        const AbbreviationNameWatcherEvent
                                                            .watchAllStarted()),
                                                  child:
                                                      DropdownSearchMeasureUnit(),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        context
                                                    .read<MedicineFormBloc>()
                                                    .state
                                                    .medicine
                                                    .measureUnit !=
                                                NameAbbreviation.empty()
                                            ? Expanded(
                                                flex: 3,
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 8,
                                                      child: Column(
                                                        children: [
                                                          Expanded(
                                                              child: FittedBox(
                                                            child: Text(
                                                              AppStrings
                                                                  .amountUnitMeasure,
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .bodyMedium,
                                                            ),
                                                          )),
                                                          Expanded(
                                                              flex: 2,
                                                              child:
                                                                  DoubleInputBox(
                                                                initialValue:
                                                                    0.0,
                                                                minValue: 1.0,
                                                                onChanged:
                                                                    () {},
                                                              )),
                                                        ],
                                                      ),
                                                    ),
                                                    Spacer(),
                                                    Expanded(
                                                      flex: 2,
                                                      child: Column(
                                                        children: [
                                                          Spacer(),
                                                          Expanded(
                                                            child: FittedBox(
                                                              child: Text(
                                                                context
                                                                    .read<
                                                                        MedicineFormBloc>()
                                                                    .state
                                                                    .medicine
                                                                    .measureUnit
                                                                    .abbr
                                                                    .value
                                                                    .fold(
                                                                        (l) =>
                                                                            '',
                                                                        (r) =>
                                                                            r),
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .titleSmall,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    const Spacer()
                                                  ],
                                                ))
                                            : const SizedBox.shrink()
                                      ],
                                    )),
                                SizedBox(
                                  height: heightUnit / 2,
                                ),
                                //ADMINISTRATION ROUTE
                                SizedBox(
                                    height: heightUnit * 1.5,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 6,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  AppStrings
                                                      .administrationRoute,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall,
                                                ),
                                              ),
                                              Expanded(
                                                child: BlocProvider(
                                                  create: (context) => getIt<
                                                      AdministrationRouteWatcherBloc>()
                                                    ..add(
                                                        const AbbreviationNameWatcherEvent
                                                            .watchAllStarted()),
                                                  child:
                                                      const DropdownSearchAdministrationRoute(),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    )),
                                SizedBox(
                                  height: heightUnit / 2,
                                ),
                                //PHARMACEUTICAL FORM
                                SizedBox(
                                    height: heightUnit * 1.5,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 6,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  AppStrings.pharmaceuticalForm,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall,
                                                ),
                                              ),
                                              Expanded(
                                                child: BlocProvider(
                                                  create: (context) => getIt<
                                                      PharmaceuticalFormWatcherBloc>()
                                                    ..add(
                                                        const AbbreviationNameWatcherEvent
                                                            .watchAllStarted()),
                                                  child:
                                                      const DropdownSearchPharmaceuticalForm(),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    )),

                                SizedBox(
                                    height: heightUnit * 3,
                                    width: constraint.maxWidth / 1.3,
                                    child: Column(
                                      children: [
                                        Expanded(
                                            child: Text(
                                          AppStrings.observations,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall,
                                        )),
                                        Expanded(
                                            flex: 3,
                                            child: Description(
                                                textController: description)),
                                      ],
                                    )),
                                SizedBox(
                                  height: heightUnit / 2,
                                ),
                                SizedBox(
                                    height: heightUnit,
                                    width: constraint.maxWidth / 3,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        if (_key.currentState!.validate()) {
                                          context.read<MedicineFormBloc>().add(
                                              const MedicineFormEvent.saved());
                                        }
                                      },
                                      child: const Text(AppStrings.create),
                                    )),
                              ],
                            ),
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
