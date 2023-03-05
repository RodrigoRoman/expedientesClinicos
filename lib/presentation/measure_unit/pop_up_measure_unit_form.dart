import 'package:auto_route/auto_route.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/abbreviation_name_form_abstract_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/measure_unit_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/abbreviation_name_component/pop_up_abbreviation_name_form.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:expedientes_clinicos/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MeasureUnitForm extends StatefulWidget {
  final NameAbbreviation? nameAbbreviation;
  const MeasureUnitForm({required this.nameAbbreviation, super.key});
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
                                    MedicineFormRoute.name,
                                    300,
                                    500));
                          },
                          insufficientPermissions: (e) {
                            context.read<StateRendererBloc>().add(
                                StateRendererEvent.popUpError(
                                    AppStrings.insuficcientPermissions,
                                    AppStrings.insuficcientPermissionsExplain,
                                    MedicineFormRoute.name,
                                    300,
                                    500));
                          },
                          unableToCreate: (e) {
                            context.read<StateRendererBloc>().add(
                                StateRendererEvent.popUpError(
                                    AppStrings.unableToCreate,
                                    AppStrings.unableToCreateExplain,
                                    MedicineFormRoute.name,
                                    300,
                                    500));
                          },
                          orElse: () {
                            context.read<StateRendererBloc>().add(
                                StateRendererEvent.popUpError(
                                    AppStrings.genericError,
                                    AppStrings.genericErrorExplain,
                                    MedicineFormRoute.name,
                                    300,
                                    500));
                          },
                        ), (r) {
                  context.read<StateRendererBloc>().add(
                      StateRendererEvent.popUpSuccess(
                          AppStrings.success,
                          AppStrings.successfullyCreated,
                          MedicineFormRoute.name,
                          300,
                          300));
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
              .abbr
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
