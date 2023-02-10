import 'dart:io';

import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/abbreviation_name_form_abstract_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/measure_unit_form_bloc.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MeasureUnitFormBody extends StatefulWidget {
  final AbbreviationNameFormState state;
  const MeasureUnitFormBody({required this.state, super.key});

  @override
  State<MeasureUnitFormBody> createState() => _MeasureUnitFormBodyState();
}

class _MeasureUnitFormBodyState extends State<MeasureUnitFormBody> {
  final _key = GlobalKey<FormState>();
  final TextEditingController measureUnitNameController =
      TextEditingController();
  final TextEditingController abreviationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        width: constraints.maxWidth,
        height: constraints.maxHeight,
        child: Form(
          key: _key,
          autovalidateMode: AutovalidateMode.disabled,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                Expanded(
                    flex: 3,
                    child: LayoutBuilder(builder: (context, constraints) {
                      return SizedBox(
                          width: constraints.maxWidth / 1.5,
                          height: constraints.maxHeight,
                          child: TextFormField(
                            controller: measureUnitNameController,
                            validator: (_) => context
                                .read<MeasureUnitFormBloc>()
                                .state
                                .abbreviation
                                .name
                                .value
                                .fold(
                                    (f) => f.maybeMap(
                                        exceedingLength: (value) =>
                                            AppStrings.tooLong,
                                        empty: (value) => AppStrings.isEmpty,
                                        orElse: () => AppStrings.empty),
                                    (_) => null),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Theme.of(context).backgroundColor),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: AppStrings.measureUnit,
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        color:
                                            Theme.of(context).backgroundColor)),
                            keyboardType: TextInputType.text,
                            textCapitalization: TextCapitalization.words,
                            onChanged: (value) {
                              measureUnitNameController.text = value;
                              measureUnitNameController.selection =
                                  TextSelection.fromPosition(TextPosition(
                                      offset: measureUnitNameController
                                          .text.length));
                              context.read<MeasureUnitFormBloc>().add(
                                  AbbreviationNameFormEvent.nameChanged(
                                      measureUnitNameController.text));
                            },
                            textInputAction: TextInputAction.next,
                          ));
                    })),
                const Spacer(),
                Expanded(
                    flex: 3,
                    child: LayoutBuilder(builder: (context, constraints) {
                      return SizedBox(
                          width: constraints.maxWidth / 1.5,
                          height: constraints.maxHeight,
                          child: TextFormField(
                            controller: abreviationController,
                            validator: (_) => context
                                .read<MeasureUnitFormBloc>()
                                .state
                                .abbreviation
                                .abbr
                                .value
                                .fold(
                                    (f) => f.maybeMap(
                                        exceedingLength: (value) =>
                                            AppStrings.tooLong,
                                        empty: (value) => AppStrings.isEmpty,
                                        orElse: () => AppStrings.empty),
                                    (_) => null),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: Theme.of(context).canvasColor),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: AppStrings.measureUnitAbreviation,
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        color: Theme.of(context).canvasColor)),
                            keyboardType: TextInputType.text,
                            textCapitalization: TextCapitalization.words,
                            onChanged: (value) {
                              abreviationController.text = value;
                              abreviationController.selection =
                                  TextSelection.fromPosition(TextPosition(
                                      offset:
                                          abreviationController.text.length));
                              context.read<MeasureUnitFormBloc>().add(
                                  AbbreviationNameFormEvent.abreviationChanged(
                                      abreviationController.text));
                            },
                            textInputAction: TextInputAction.next,
                          ));
                    })),
                ElevatedButton(
                    onPressed: () {
                      if (_key.currentState!.validate()) {
                        context
                            .read<MeasureUnitFormBloc>()
                            .add(const AbbreviationNameFormEvent.saved());
                      }
                    },
                    child: const Text(AppStrings.create))
              ]),
        ),
      );
    });
  }
}
