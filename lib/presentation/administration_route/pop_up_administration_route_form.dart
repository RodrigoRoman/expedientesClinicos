import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/abbreviation_name_form_abstract_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/administration_route_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/abbreviation_name_component/pop_up_abbreviation_name_form.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdministrationRouteForm extends StatefulWidget {
  final NameAbbreviation? nameAbbreviation;
  final Function onNameChanged;
  final Function onAbbreviationChanged;
  final Function onSubmit;
  const AdministrationRouteForm(
      {required this.nameAbbreviation,
      required this.onAbbreviationChanged,
      required this.onNameChanged,
      required this.onSubmit,
      super.key});

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
