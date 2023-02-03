import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MeasureUnitForm extends StatefulWidget {
  const MeasureUnitForm({super.key});

  @override
  State<MeasureUnitForm> createState() => _MeasureUnitFormState();
}

class _MeasureUnitFormState extends State<MeasureUnitForm> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MeasureUnitFormBloc, MeasureUnitFormState>(
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(() {
          if (state.isSaving) {
            context.read<StateRendererBloc>().add(
                const StateRendererEvent.popUpLoading(AppStrings.saving,
                    AppStrings.actionInProgressExplain, false));
          }
        },
            (either) => either.fold(
                    (failure) => failure.maybeMap(
                          unexpected: (e) {
                            context.read<StateRendererBloc>().add(
                                const StateRendererEvent.popUpError(
                                    AppStrings.couldNotSaveImage,
                                    AppStrings.somethingWentWrong,
                                    true));
                          },
                          insufficientPermissions: (e) {
                            context.read<StateRendererBloc>().add(
                                const StateRendererEvent.popUpError(
                                    AppStrings.insuficcientPermissions,
                                    AppStrings.insuficcientPermissionsExplain,
                                    true));
                          },
                          unableToCreate: (e) {
                            context.read<StateRendererBloc>().add(
                                const StateRendererEvent.popUpError(
                                    AppStrings.unableToCreate,
                                    AppStrings.unableToCreateExplain,
                                    true));
                          },
                          orElse: () {
                            context.read<StateRendererBloc>().add(
                                const StateRendererEvent.popUpError(
                                    AppStrings.genericError,
                                    AppStrings.genericErrorExplain,
                                    true));
                          },
                        ), (r) {
                  context.read<StateRendererBloc>().add(
                      const StateRendererEvent.popUpSuccess(AppStrings.success,
                          AppStrings.successfullyCreated, true));
                }));
      },
      builder: (context, state) {
        return MeasureUnitFormBody(state: state);
      },
    );
  }
}
