import 'package:expedientes_clinicos/application/categories/category_form/category_form_bloc.dart';
import 'package:expedientes_clinicos/application/categories/category_form/medicine_category_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/category/pop_up_category_form.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MedicineCategoryForm extends StatefulWidget {
  final Category category;
  Function? onCreated;

  MedicineCategoryForm({required this.category, this.onCreated, super.key});
  @override
  State<MedicineCategoryForm> createState() => _MedicineCategoryFormState();
}

class _MedicineCategoryFormState extends State<MedicineCategoryForm> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MedicineCategoryFormBloc, CategoryFormState>(
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(() {
          if (state.isSaving) {
            context.read<StateRendererBloc>().add(
                const StateRendererEvent.popUpLoading(AppStrings.saving,
                    AppStrings.actionInProgressExplain, null, 300, 500));
          }
        },
            (either) => either.fold(
                    (failure) => failure.maybeMap(
                          unexpected: (e) {
                            context.read<StateRendererBloc>().add(
                                // ignore: prefer_const_constructors
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
                  widget.onCreated?.call(state.category);
                  context.read<StateRendererBloc>().add(
                      StateRendererEvent.popUpSuccess(AppStrings.success,
                          AppStrings.successfullyCreated, null, 300, 500));
                }));
      },
      builder: (context, state) {
        return CategoryForm(
          category: context.read<MedicineCategoryFormBloc>().state.category,
          onNameChanged: (name) {
            context
                .read<MedicineCategoryFormBloc>()
                .add(CategoryFormEvent.nameChanged(name));
            // setState(() {});
            // context
            //     .read<MedicineCategoryFormBloc>()
            //     .state
            //     .category
            //     .name
            //     .value
            //     .fold(
            //         (f) => f.maybeMap(
            //             exceedingLength: (value) => AppStrings.tooLong,
            //             empty: (value) => AppStrings.isEmpty,
            //             orElse: () => AppStrings.empty),
            //         (_) => null);
          },
          onImageChanged: (img) {
            context
                .read<MedicineCategoryFormBloc>()
                .add(CategoryFormEvent.imageUrlChanged(img));
            // setState(() {});

            // context
            //     .read<MedicineCategoryFormBloc>()
            //     .state
            //     .category
            //     .imageUrl
            //     .value
            //     .fold(
            //         (f) => f.maybeMap(
            //             urlMustBeValid: (value) => AppStrings.unableToReadError,
            //             empty: (value) => AppStrings.isEmpty,
            //             orElse: () => AppStrings.empty),
            //         (_) => null);
          },
          validName: () {
            return context
                .read<MedicineCategoryFormBloc>()
                .state
                .category
                .name
                .value
                .fold(
                    (f) => f.maybeMap(
                        exceedingLength: (value) => AppStrings.tooLong,
                        empty: (value) => AppStrings.isEmpty,
                        orElse: () => AppStrings.empty),
                    (_) => null);
          },
          onSubmit: () {
            context
                .read<MedicineCategoryFormBloc>()
                .add(const CategoryFormEvent.saved());
          },
        );
      },
    );
  }
}
