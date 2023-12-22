import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_bloc.dart';
import 'package:expedientes_clinicos/presentation/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_body.dart';
import 'package:expedientes_clinicos/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';

@RoutePage()
class GenericMedicineFormPage extends StatefulWidget {
  GenericMedicineFormPage({this.onCreated});
  Function? onCreated;
  @override
  State<GenericMedicineFormPage> createState() =>
      _GenericMedicineFormPageState();
}

class _GenericMedicineFormPageState extends State<GenericMedicineFormPage> {
  bool requestedSubmition = false;

  final _key = GlobalKey<FormState>();

  List<Category> categoriesList = [];

  @override
  Widget build(BuildContext context) {
    final double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
        backgroundColor: Colors.white,
        body: LayoutBuilder(
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
                        print("the full screen state");
                        print(FullScreenStatePageRoute.name);
                        context
                            .read<StateRendererBloc>()
                            .add(const StateRendererEvent.popUpLoading(
                              title: AppStrings.saving,
                              message: AppStrings.actionInProgressExplain,
                              until: FullScreenStatePageRoute.name,
                            ));
                      }
                    },
                        (either) => either.fold(
                                (failure) => failure.maybeMap(
                                      unexpected: (e) {
                                        context.read<StateRendererBloc>().add(
                                                const StateRendererEvent
                                                    .popUpError(
                                              title:
                                                  AppStrings.couldNotSaveImage,
                                              message:
                                                  AppStrings.somethingWentWrong,
                                              until:
                                                  FullScreenStatePageRoute.name,
                                            ));
                                      },
                                      unableToUploadImage: (e) {
                                        context.read<StateRendererBloc>().add(
                                                const StateRendererEvent
                                                    .popUpError(
                                              title:
                                                  AppStrings.couldNotSaveImage,
                                              message:
                                                  AppStrings.somethingWentWrong,
                                              until:
                                                  FullScreenStatePageRoute.name,
                                            ));
                                      },
                                      insufficientPermissions: (e) {
                                        context.read<StateRendererBloc>().add(
                                                const StateRendererEvent
                                                    .popUpError(
                                              title: AppStrings
                                                  .insuficcientPermissions,
                                              message: AppStrings
                                                  .insuficcientPermissionsExplain,
                                              until:
                                                  FullScreenStatePageRoute.name,
                                            ));
                                      },
                                      unableToCreate: (e) {
                                        context.read<StateRendererBloc>().add(
                                                const StateRendererEvent
                                                    .popUpError(
                                              title: AppStrings.unableToCreate,
                                              message: AppStrings
                                                  .unableToCreateExplain,
                                              until:
                                                  FullScreenStatePageRoute.name,
                                            ));
                                      },
                                      orElse: () {
                                        context.read<StateRendererBloc>().add(
                                                const StateRendererEvent
                                                    .popUpError(
                                              title: AppStrings.genericError,
                                              message: AppStrings
                                                  .genericErrorExplain,
                                              until:
                                                  FullScreenStatePageRoute.name,
                                            ));
                                      },
                                    ), (r) {
                              widget.onCreated?.call(state.medicine);
                              context
                                  .read<StateRendererBloc>()
                                  .add(const StateRendererEvent.popUpSuccess(
                                    title: AppStrings.success,
                                    message: AppStrings.successfullyCreated,
                                    // until: FullScreenStatePageRoute.name,
                                  ));
                            }));
                    // state.ingredientCore.imgUrl.value;
                  }, builder: (context, state) {
                    return BlocConsumer<GenericMedicineFormBloc,
                        GenericMedicineFormState>(
                      listener: (context, state) {},
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
