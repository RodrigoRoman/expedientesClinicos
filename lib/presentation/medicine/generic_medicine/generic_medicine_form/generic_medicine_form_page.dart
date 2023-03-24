import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_bloc.dart';
import 'package:expedientes_clinicos/presentation/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';

class GenericMedicineFormPage extends StatefulWidget {
  const GenericMedicineFormPage({super.key});

  @override
  State<GenericMedicineFormPage> createState() =>
      _GenericMedicineFormPageState();
}

class _GenericMedicineFormPageState extends State<GenericMedicineFormPage> {
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
        return SizedBox(
          height: constraint.maxHeight,
          width: constraint.maxWidth,
          child: BlocProvider(
              create: (context) => getIt<GenericMedicineFormBloc>(),
              child: BlocConsumer<GenericMedicineFormBloc,
                  GenericMedicineFormState>(listener: (context, state) {
                state.saveFailureOrSuccessOption.fold(() {
                  if (state.isSaving) {
                    context.read<StateRendererBloc>().add(
                        StateRendererEvent.popUpLoading(
                            AppStrings.saving,
                            AppStrings.actionInProgressExplain,
                            null,
                            300,
                            500));
                  }
                },
                    (either) => either.fold(
                            (failure) => failure.maybeMap(
                                  unexpected: (e) {
                                    context.read<StateRendererBloc>().add(
                                        StateRendererEvent.popUpError(
                                            AppStrings.couldNotSaveImage,
                                            AppStrings.somethingWentWrong,
                                            null,
                                            300,
                                            500));
                                  },
                                  unableToUploadImage: (e) {
                                    context.read<StateRendererBloc>().add(
                                        StateRendererEvent.popUpError(
                                            AppStrings.couldNotSaveImage,
                                            AppStrings.somethingWentWrong,
                                            null,
                                            300,
                                            500));
                                  },
                                  insufficientPermissions: (e) {
                                    context.read<StateRendererBloc>().add(
                                        StateRendererEvent.popUpError(
                                            AppStrings.insuficcientPermissions,
                                            AppStrings
                                                .insuficcientPermissionsExplain,
                                            null,
                                            300,
                                            500));
                                  },
                                  unableToCreate: (e) {
                                    context.read<StateRendererBloc>().add(
                                        StateRendererEvent.popUpError(
                                            AppStrings.unableToCreate,
                                            AppStrings.unableToCreateExplain,
                                            null,
                                            300,
                                            500));
                                  },
                                  orElse: () {
                                    context.read<StateRendererBloc>().add(
                                        StateRendererEvent.popUpError(
                                            AppStrings.genericError,
                                            AppStrings.genericErrorExplain,
                                            null,
                                            300,
                                            500));
                                  },
                                ), (r) {
                          context.read<StateRendererBloc>().add(
                              StateRendererEvent.popUpSuccess(
                                  AppStrings.success,
                                  AppStrings.successfullyCreated,
                                  null,
                                  300,
                                  500));
                        }));
                // state.ingredientCore.imgUrl.value;
              }, builder: (context, state) {
                return BlocConsumer<GenericMedicineFormBloc,
                    GenericMedicineFormState>(
                  listener: (context, state) {
                    // TODO: implement listener
                  },
                  builder: (context, state) {
                    return GenericMedicineFormBody(
                      key: _key,
                    );
                  },
                );
              })),
        );
      },
    ));
  }
}
