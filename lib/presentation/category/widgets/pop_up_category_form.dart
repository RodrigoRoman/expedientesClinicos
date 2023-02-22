import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/categories/category_form/category_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/presentation/category/widgets/category_form_body.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryForm extends StatefulWidget {
  CategoryForm({super.key});

  @override
  State<CategoryForm> createState() => _CategoryFormState();
}

class _CategoryFormState extends State<CategoryForm> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CategoryFormBloc, CategoryFormState>(
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
                                    AppStrings.insuficcientPermissionsExplain,
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
                      StateRendererEvent.popUpSuccess(AppStrings.success,
                          AppStrings.successfullyCreated, null, 300, 500));
                }));
      },
      builder: (context, state) {
        return CategoryFormBody(state: state);
      },
    );
  }
}
