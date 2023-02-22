import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/presentation/medicine/medicine_form/medicine_form_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/application/medicine/medicine_form/medicine_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
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
                                                  AppStrings
                                                      .insuficcientPermissions,
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
                                                  AppStrings
                                                      .unableToCreateExplain,
                                                  null,
                                                  300,
                                                  500));
                                        },
                                        orElse: () {
                                          context.read<StateRendererBloc>().add(
                                              StateRendererEvent.popUpError(
                                                  AppStrings.genericError,
                                                  AppStrings
                                                      .genericErrorExplain,
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
                      return BlocConsumer<MedicineFormBloc, MedicineFormState>(
                        listener: (context, state) {
                          // TODO: implement listener
                        },
                        builder: (context, state) {
                          return MedicineFormBody(
                            key: _key,
                            heightUnit: heightUnit,
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
