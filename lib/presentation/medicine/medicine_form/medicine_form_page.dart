import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class IngredientCoreFormPage extends StatefulWidget {
  IngredientCoreFormPage({super.key});

  @override
  State<IngredientCoreFormPage> createState() => _IngredientCoreFormPageState();
}

class _IngredientCoreFormPageState extends State<IngredientCoreFormPage> {
  final TextEditingController categoryText = TextEditingController();

  final TextEditingController ingredientNameText = TextEditingController();

  final TextEditingController measureUnitText = TextEditingController();

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
                    create: (context) => getIt<IngredientCoreFormBloc>(),
                    child: BlocConsumer<IngredientCoreFormBloc,
                        IngredientCoreFormState>(listener: (context, state) {
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
                                  duration: const Duration(milliseconds: 500),
                                  height: heightUnit * 4,
                                  width: constraint.maxWidth / 1.3,
                                  margin: const EdgeInsets.all(AppSize.s2),
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                      //if the user passes to the name field without filling the image part
                                      //then we want to notify to them with red border.
                                      border: (ingredientNameText.text.isEmpty)
                                          ? null
                                          : state.ingredientCore.imgUrl.value
                                              .fold(
                                                  (l) => Border.all(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .error,
                                                        width: 4,
                                                      ),
                                                  (r) => null),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(AppSize.s24))),
                                  child: (state.ingredientCore.imgUrl.value
                                      .fold(
                                          (l) => GestureDetector(
                                                onTap: () async {
                                                  final String img =
                                                      await pickImage();
                                                  if (!mounted) return;
                                                  print('image url changed');
                                                  context
                                                      .read<
                                                          IngredientCoreFormBloc>()
                                                      .add(
                                                          IngredientCoreFormEvent
                                                              .imageUrlChanged(
                                                                  img));
                                                },
                                                child: const AnimatedImage(
                                                  animationName: AppAssetNames
                                                      .imagePlaceholder,
                                                ),
                                              ),
                                          (r) => LayoutBuilder(builder:
                                                  (context, constraintStack) {
                                                return Stack(
                                                  children: [
                                                    Positioned(
                                                      height: constraintStack
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
                                                              Image.asset(r)),
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
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          context
                                                              .read<
                                                                  IngredientCoreFormBloc>()
                                                              .add(const IngredientCoreFormEvent
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
                                              AppStrings.name,
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
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .error),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    borderSide: BorderSide(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .error,
                                                      // width:
                                                      //     LayoutConstants.dimen_1,
                                                      style: BorderStyle.solid,
                                                    ),
                                                  )),
                                              controller: ingredientNameText,
                                              validator: (value) {
                                                return state
                                                    .ingredientCore.name.value
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
                                                ingredientNameText.text = value;
                                                ingredientNameText.selection =
                                                    TextSelection.fromPosition(
                                                        TextPosition(
                                                            offset:
                                                                ingredientNameText
                                                                    .text
                                                                    .length));

                                                context
                                                    .read<
                                                        IngredientCoreFormBloc>()
                                                    .add(IngredientCoreFormEvent
                                                        .nameChanged(
                                                            ingredientNameText
                                                                .text));
                                              },
                                            )),
                                      ],
                                    ),
                                  ),
                                  const Spacer(
                                    flex: 1,
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Text(AppStrings.optimum,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleSmall),
                                        ),
                                        Expanded(
                                          child: IntegerInputBox(
                                              initialValue: 0,
                                              minValue: 0,
                                              maxValue: 10,
                                              onChanged: (i) {
                                                context
                                                    .read<
                                                        IngredientCoreFormBloc>()
                                                    .add(IngredientCoreFormEvent
                                                        .optimum(i));
                                              }),
                                        ),
                                      ],
                                    ),
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
                            SizedBox(
                                height: heightUnit * 1.5,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                          create: (context) =>
                                              getIt<CategoryWatcherBloc>()
                                                ..add(const CategoryWatcherEvent
                                                    .watchAllStarted()),
                                          child: DropdownSearchCategories(
                                            textController: categoryText,
                                            listElements: categoriesList,
                                            hintText: AppStrings.chooseCategory,
                                            newFunction: () {
                                              context
                                                  .read<StateRendererBloc>()
                                                  .add(StateRendererEvent
                                                      .popUpForm(
                                                          'Crear categoria',
                                                          CategoryForm(),
                                                          false));
                                            },
                                          )),
                                    ),
                                  ],
                                )),
                            SizedBox(
                              height: heightUnit / 2,
                            ),
                            SizedBox(
                                height: heightUnit * 1.5,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                        create: (context) =>
                                            getIt<MeasureUnitWatcherBloc>()
                                              ..add(
                                                  const MeasureUnitWatcherEvent
                                                      .watchAllStarted()),
                                        child: DropdownSearchMeasureUnit(
                                          textController: measureUnitText,
                                          hintText: AppStrings.chooseUnit,
                                          newFunction: () {
                                            context
                                                .read<StateRendererBloc>()
                                                .add(const StateRendererEvent
                                                        .popUpForm(
                                                    'Crear Unidad de Medida',
                                                    MeasureUnitForm(),
                                                    false));
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                            SizedBox(
                              height: heightUnit / 2,
                            ),
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
                                      context
                                          .read<IngredientCoreFormBloc>()
                                          .add(const IngredientCoreFormEvent
                                              .saved());
                                    }
                                  },
                                  child: const Text(AppStrings.create),
                                )),
                          ],
                        ),
                      );
                    }))),
          ),
        );
      },
    ));
  }
}
