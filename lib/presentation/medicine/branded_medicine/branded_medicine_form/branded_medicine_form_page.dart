import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/medicine/branded_medicine/branded_medicine_form/branded_medicine_form_bloc.dart';
import 'package:expedientes_clinicos/presentation/medicine/branded_medicine/branded_medicine_form/branded_medicine_form_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';

class BrandedMedicineFormPage extends StatefulWidget {
  BrandedMedicineFormPage({this.onCreated, super.key});
  Function? onCreated;

  @override
  State<BrandedMedicineFormPage> createState() =>
      _BrandedMedicineFormPageState();
}

class _BrandedMedicineFormPageState extends State<BrandedMedicineFormPage> {
  bool requestedSubmition = false;

  final _key = GlobalKey<FormState>();

  List<Category> categoriesList = [];
  
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    // WidgetsBinding.instance.addPostFrameCallback((_) async =>
    //     scrollController.animateTo(keyboardHeight / 2,
    //         duration: const Duration(milliseconds: 300),
    //         curve: Curves.easeInOut));
    return LayoutBuilder(builder: (context, constraint) {
      double heightUnit = (constraint.maxHeight + keyboardHeight) / 16;
      return SizedBox(
        height: constraint.maxHeight,
        width: constraint.maxWidth,
        child: BlocProvider(
            create: (context) => getIt<BrandedMedicineFormBloc>(),
            child:
                BlocConsumer<BrandedMedicineFormBloc, BrandedMedicineFormState>(
                    listener: (context, state) {
              state.saveFailureOrSuccessOption.fold(() {
                if (state.isSaving) {
                  context.read<StateRendererBloc>().add(
                      StateRendererEvent.popUpLoading(AppStrings.saving,
                          AppStrings.actionInProgressExplain, null, 300, 500));
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
                        widget.onCreated?.call(state.medicine);
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
              return BlocConsumer<BrandedMedicineFormBloc,
                  BrandedMedicineFormState>(
                listener: (context, state) {
                  // TODO: implement listener
                },
                builder: (context, state) {
                  return BrandedMedicineFormBody(
                    key: _key,
                  );
                },
              );
            })),
      );
    });
  }
}
