import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/abbreviation_name_form_abstract_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/measure_unit_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/abbreviation_name_component/pop_up_abbreviation_name_form.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:expedientes_clinicos/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MeasureUnitForm extends StatefulWidget {
  final NameAbbreviation? nameAbbreviation;
  Function? onCreated;
  MeasureUnitForm({required this.nameAbbreviation, this.onCreated, super.key});
  @override
  State<MeasureUnitForm> createState() => _MeasureUnitFormState();
}

class _MeasureUnitFormState extends State<MeasureUnitForm> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MeasureUnitFormBloc, AbbreviationNameFormState>(
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
                            context.read<StateRendererBloc>().add(
                                const StateRendererEvent.popUpError(
                                    title: AppStrings.couldNotSaveImage,
                                    message: AppStrings.somethingWentWrong,
                                    until: GenericMedicineFormPageRoute.name));
                          },
                          insufficientPermissions: (e) {
                            context.read<StateRendererBloc>().add(
                                const StateRendererEvent.popUpError(
                                    title: AppStrings.insuficcientPermissions,
                                    message: AppStrings
                                        .insuficcientPermissionsExplain,
                                    until: GenericMedicineFormPageRoute.name));
                          },
                          unableToCreate: (e) {
                            context
                                .read<StateRendererBloc>()
                                .add(const StateRendererEvent.popUpError(
                                  title: AppStrings.unableToCreate,
                                  message: AppStrings.unableToCreateExplain,
                                  until: GenericMedicineFormPageRoute.name,
                                ));
                          },
                          orElse: () {
                            context
                                .read<StateRendererBloc>()
                                .add(const StateRendererEvent.popUpError(
                                  title: AppStrings.genericError,
                                  message: AppStrings.genericErrorExplain,
                                  until: GenericMedicineFormPageRoute.name,
                                ));
                          },
                        ), (r) {
                  widget.onCreated?.call(state.abbreviation);
                  context.read<StateRendererBloc>().add(
                      StateRendererEvent.popUpSuccess(
                          title: AppStrings.success,
                          message: AppStrings.successfullyCreated));
                }));
      },
      builder: (context, state) {
        NameAbbreviation abbrName =
            widget.nameAbbreviation ?? NameAbbreviation.empty();
        return AbbreviationNameForm(
          nameAbbreviation: abbrName,
          validAbbreviation: () => context
              .read<MeasureUnitFormBloc>()
              .state
              .abbreviation
              .abbr
              .value
              .fold(
                  (f) => f.maybeMap(
                      exceedingLength: (value) => AppStrings.tooLong,
                      empty: (value) => AppStrings.isEmpty,
                      orElse: () => AppStrings.error),
                  (_) => null),
          validName: () => context
              .read<MeasureUnitFormBloc>()
              .state
              .abbreviation
              .name
              .value
              .fold(
                  (f) => f.maybeMap(
                      exceedingLength: (value) => AppStrings.tooLong,
                      empty: (value) => AppStrings.isEmpty,
                      orElse: () => AppStrings.empty),
                  (_) => null),
          onAbbreviationChanged: (newAbbr) {
            context
                .read<MeasureUnitFormBloc>()
                .add(AbbreviationNameFormEvent.abreviationChanged(newAbbr));
          },
          onNameChanged: (newName) {
            context
                .read<MeasureUnitFormBloc>()
                .add(AbbreviationNameFormEvent.nameChanged(newName));
          },
          onSubmit: () {
            context
                .read<MeasureUnitFormBloc>()
                .add(const AbbreviationNameFormEvent.saved());
          },
        );
      },
    );
  }
}
