import 'package:expedientes_clinicos/application/categories/category_form/category_form_bloc.dart';
import 'package:expedientes_clinicos/application/categories/category_form/indication_category_form_bloc.dart';
import 'package:expedientes_clinicos/application/categories/category_form/medicine_category_form_bloc.dart';
import 'package:expedientes_clinicos/application/categories/category_form/patient_visit_category_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/category/pop_up_category_form.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:expedientes_clinicos/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PatientVisitCategoryForm extends StatefulWidget {
  final Category category;
  Function? onCreated;

  PatientVisitCategoryForm({required this.category, this.onCreated, super.key});
  @override
  State<PatientVisitCategoryForm> createState() =>
      _PatientVisitCategoryFormState();
}

class _PatientVisitCategoryFormState extends State<PatientVisitCategoryForm> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PatientVisitTypeCategoryFormBloc, CategoryFormState>(
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(() {
          if (state.isSaving) {
            context
                .read<StateRendererBloc>()
                .add(const StateRendererEvent.popUpLoading(
                  title: AppStrings.saving,
                  message: AppStrings.actionInProgressExplain,
                  until: AppStrings.popUp,
                ));
          }
        },
            (either) => either.fold(
                    (failure) => failure.maybeMap(
                          unexpected: (e) {
                            context.read<StateRendererBloc>().add(
                                    // ignore: prefer_const_constructors
                                    StateRendererEvent.popUpError(
                                  title: AppStrings.couldNotSaveImage,
                                  message: AppStrings.somethingWentWrong,
                                  until: AppStrings.popUp,
                                ));
                          },
                          unableToUploadImage: (e) {
                            context
                                .read<StateRendererBloc>()
                                .add(const StateRendererEvent.popUpError(
                                  title: AppStrings.couldNotSaveImage,
                                  message: AppStrings.somethingWentWrong,
                                  until: AppStrings.popUp,
                                ));
                          },
                          insufficientPermissions: (e) {
                            context
                                .read<StateRendererBloc>()
                                .add(const StateRendererEvent.popUpError(
                                  title: AppStrings.insuficcientPermissions,
                                  message:
                                      AppStrings.insuficcientPermissionsExplain,
                                  until: AppStrings.popUp,
                                ));
                          },
                          unableToCreate: (e) {
                            context
                                .read<StateRendererBloc>()
                                .add(const StateRendererEvent.popUpError(
                                  title: AppStrings.unableToCreate,
                                  message: AppStrings.unableToCreateExplain,
                                  until: AppStrings.popUp,
                                ));
                          },
                          orElse: () {
                            context
                                .read<StateRendererBloc>()
                                .add(const StateRendererEvent.popUpError(
                                  title: AppStrings.genericError,
                                  message: AppStrings.genericErrorExplain,
                                  until: AppStrings.popUp,
                                ));
                          },
                        ), (r) {
                  widget.onCreated?.call(state.category);
                  context
                      .read<StateRendererBloc>()
                      .add(const StateRendererEvent.popUpSuccess(
                        title: AppStrings.success,
                        message: AppStrings.successfullyCreated,
                        until: FullScreenStatePageRoute.name,
                      ));
                }));
      },
      builder: (context, state) {
        return CategoryForm(
          category:
              context.read<PatientVisitTypeCategoryFormBloc>().state.category,
          onNameChanged: (name) {
            context
                .read<PatientVisitTypeCategoryFormBloc>()
                .add(CategoryFormEvent.nameChanged(name));
          },
          onImageChanged: (img) {
            context
                .read<PatientVisitTypeCategoryFormBloc>()
                .add(CategoryFormEvent.imageUrlChanged(img));
          },
          validName: () {
            return context
                .read<PatientVisitTypeCategoryFormBloc>()
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
                .read<PatientVisitTypeCategoryFormBloc>()
                .add(const CategoryFormEvent.saved());
          },
        );
      },
    );
  }
}
