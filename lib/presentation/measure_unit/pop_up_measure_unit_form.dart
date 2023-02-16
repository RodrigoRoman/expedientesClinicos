import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/abbreviation_name_form_abstract_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/measure_unit_form_bloc.dart';
import 'package:expedientes_clinicos/application/state_render/state_renderer_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/abbreviation_name_component/pop_up_administration_route_form.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MeasureUnitForm extends StatefulWidget {
  final NameAbbreviation? nameAbbreviation;
  final Function onNameChanged;
  final Function onAbbreviationChanged;
  final Function onSubmit;
  const MeasureUnitForm(
      {required this.nameAbbreviation,
      required this.onAbbreviationChanged,
      required this.onNameChanged,
      required this.onSubmit,
      super.key});
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
