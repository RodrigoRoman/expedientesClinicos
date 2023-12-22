import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/abbreviation_name_form_abstract_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/administration_route_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/abbreviation_name_component/pop_up_abbreviation_name_form.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:expedientes_clinicos/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdministrationRouteForm extends StatefulWidget {
  final NameAbbreviation? nameAbbreviation;
  Function? onCreated;
  AdministrationRouteForm(
      {required this.nameAbbreviation, this.onCreated, super.key});

  @override
  State<AdministrationRouteForm> createState() =>
      _AdministrationRouteFormState();
}

class _AdministrationRouteFormState extends State<AdministrationRouteForm> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AdministrationRouteFormBloc, AbbreviationNameFormState>(
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(() {
          if (state.isSaving) {
            context.read<StateRendererBloc>().add(
                const StateRendererEvent.popUpLoading(
                    title: AppStrings.saving,
                    message: AppStrings.actionInProgressExplain,
                    until: AppStrings.popUp));
          }
        },
            (either) => either.fold(
                    (failure) => failure.maybeMap(
                          unexpected: (e) {
                            context
                                .read<StateRendererBloc>()
                                .add(const StateRendererEvent.popUpError(
                                  title: AppStrings.couldNotSaveImage,
                                  message: AppStrings.somethingWentWrong,
                                ));
                          },
                          insufficientPermissions: (e) {
                            context
                                .read<StateRendererBloc>()
                                .add(const StateRendererEvent.popUpError(
                                  title: AppStrings.insuficcientPermissions,
                                  message:
                                      AppStrings.insuficcientPermissionsExplain,
                                ));
                          },
                          unableToCreate: (e) {
                            context
                                .read<StateRendererBloc>()
                                .add(const StateRendererEvent.popUpError(
                                  title: AppStrings.unableToCreate,
                                  message: AppStrings.unableToCreateExplain,
                                ));
                          },
                          orElse: () {
                            context
                                .read<StateRendererBloc>()
                                .add(const StateRendererEvent.popUpError(
                                  title: AppStrings.genericError,
                                  message: AppStrings.genericErrorExplain,
                                ));
                          },
                        ), (r) {
                  widget.onCreated?.call(state.abbreviation);
                  context.read<StateRendererBloc>().add(
                      const StateRendererEvent.popUpSuccess(
                          width: AppSize.popUpSMWidth,
                          height: AppSize.popUpSMWidth,
                          title: AppStrings.success,
                          message: AppStrings.successfullyCreated,
                          until: FullScreenStatePageRoute.name));
                }));
      },
      builder: (context, state) {
        NameAbbreviation abbrName =
            widget.nameAbbreviation ?? NameAbbreviation.empty();
        return AbbreviationNameForm(
          nameAbbreviation: abbrName,
          validAbbreviation: () {
            return context
                .read<AdministrationRouteFormBloc>()
                .state
                .abbreviation
                .abbr
                .value
                .fold(
                    (f) => f.maybeMap(
                        exceedingLength: (value) => AppStrings.tooLong,
                        empty: (value) => AppStrings.isEmpty,
                        orElse: () => AppStrings.empty),
                    (_) => null);
          },
          validName: () {
            return context
                .read<AdministrationRouteFormBloc>()
                .state
                .abbreviation
                .name
                .value
                .fold(
                    (f) => f.maybeMap(
                        exceedingLength: (value) => AppStrings.tooLong,
                        empty: (value) => AppStrings.isEmpty,
                        orElse: () => AppStrings.empty),
                    (_) => null);
          },
          onAbbreviationChanged: (newAbbr) {
            context
                .read<AdministrationRouteFormBloc>()
                .add(AbbreviationNameFormEvent.abreviationChanged(newAbbr));
          },
          onNameChanged: (newName) {
            context
                .read<AdministrationRouteFormBloc>()
                .add(AbbreviationNameFormEvent.nameChanged(newName));
          },
          onSubmit: () {
            context
                .read<AdministrationRouteFormBloc>()
                .add(const AbbreviationNameFormEvent.saved());
          },
        );
      },
    );
  }
}
