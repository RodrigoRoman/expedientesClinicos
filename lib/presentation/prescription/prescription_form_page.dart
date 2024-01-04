import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/prescription/prescription_form/prescription_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/prescription/prescription_form_body.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:expedientes_clinicos/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class PrescriptionFormPage extends StatefulWidget {
  PrescriptionFormPage({this.onCreated});
  Function? onCreated;
  @override
  State<PrescriptionFormPage> createState() => _PrescriptionFormPageState();
}

class _PrescriptionFormPageState extends State<PrescriptionFormPage> {
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
                  create: (context) => getIt<PrescriptionFormBloc>(),
                  child:
                      BlocConsumer<PrescriptionFormBloc, PrescriptionFormState>(
                          listener: (context, state) {
                    state.saveFailureOrSuccessOption.fold(() {
                      if (state.isSaving) {
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
                              widget.onCreated?.call(state.prescription);
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
                    return BlocConsumer<PrescriptionFormBloc,
                        PrescriptionFormState>(
                      listener: (context, state) {},
                      builder: (context, state) {
                        return PrescriptionFormBody(
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
