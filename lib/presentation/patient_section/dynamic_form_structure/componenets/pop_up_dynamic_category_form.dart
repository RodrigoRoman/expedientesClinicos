import 'package:expedientes_clinicos/application/categories/category_form/category_form_bloc.dart';
import 'package:expedientes_clinicos/application/categories/category_form/dynamic_category_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/category/pop_up_category_form.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:expedientes_clinicos/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DynamicCategoryForm extends StatefulWidget {
  final Category category;
  Function? onCreated;

  DynamicCategoryForm({required this.category, this.onCreated, super.key});
  @override
  State<DynamicCategoryForm> createState() => _DynamicCategoryFormState();
}

class _DynamicCategoryFormState extends State<DynamicCategoryForm> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DynamicCategoryFormBloc, CategoryFormState>(
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(() {
          if (state.isSaving) {
            context.read<StateRendererBloc>().add(
                const StateRendererEvent.popUpLoading(
                    until: AppStrings.popUp,
                    title: AppStrings.saving,
                    message: AppStrings.actionInProgressExplain));
          }
        },
            (either) => either.fold(
                    (failure) => failure.maybeMap(
                          unexpected: (e) {
                            context.read<StateRendererBloc>().add(
                                StateRendererEvent.popUpError(
                                    title: AppStrings.couldNotSaveImage,
                                    message: AppStrings.somethingWentWrong,
                                    until: FullScreenStatePageRoute.name));
                          },
                          unableToUploadImage: (e) {
                            context.read<StateRendererBloc>().add(
                                const StateRendererEvent.popUpError(
                                    title: AppStrings.couldNotSaveImage,
                                    message: AppStrings.somethingWentWrong,
                                    until: FullScreenStatePageRoute.name));
                          },
                          insufficientPermissions: (e) {
                            context.read<StateRendererBloc>().add(
                                const StateRendererEvent.popUpError(
                                    title: AppStrings.insuficcientPermissions,
                                    message: AppStrings
                                        .insuficcientPermissionsExplain,
                                    until: FullScreenStatePageRoute.name));
                          },
                          unableToCreate: (e) {
                            context.read<StateRendererBloc>().add(
                                const StateRendererEvent.popUpError(
                                    title: AppStrings.unableToCreate,
                                    message: AppStrings.unableToCreateExplain,
                                    until: FullScreenStatePageRoute.name));
                          },
                          orElse: () {
                            context.read<StateRendererBloc>().add(
                                const StateRendererEvent.popUpError(
                                    title: AppStrings.genericError,
                                    message: AppStrings.genericErrorExplain,
                                    until: FullScreenStatePageRoute.name));
                          },
                        ), (r) {
                  widget.onCreated?.call(state.category);
                  context.read<StateRendererBloc>().add(
                      const StateRendererEvent.popUpSuccess(
                          title: AppStrings.success,
                          message: AppStrings.successfullyCreated,
                          until: FullScreenStatePageRoute.name));
                }));
      },
      builder: (context, state) {
        return CategoryForm(
          category: context.read<DynamicCategoryFormBloc>().state.category,
          onNameChanged: (name) {
            context
                .read<DynamicCategoryFormBloc>()
                .add(CategoryFormEvent.nameChanged(name));
          },
          onImageChanged: (img) {
            context
                .read<DynamicCategoryFormBloc>()
                .add(CategoryFormEvent.imageUrlChanged(img));
          },
          validName: () {
            return context
                .read<DynamicCategoryFormBloc>()
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
                .read<DynamicCategoryFormBloc>()
                .add(const CategoryFormEvent.saved());
          },
        );
      },
    );
  }
}
