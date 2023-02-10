import 'dart:io';

import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/abbreviation_name_form_abstract_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/administration_route_form_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/measure_unit_form_bloc.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdministrationRouteFormBody extends StatefulWidget {
  final AbbreviationNameFormState state;
  const AdministrationRouteFormBody({required this.state, super.key});

  @override
  State<AdministrationRouteFormBody> createState() =>
      _AdministrationRouteFormBodyState();
}

class _AdministrationRouteFormBodyState
    extends State<AdministrationRouteFormBody> {
  final _key = GlobalKey<FormState>();
  final TextEditingController administrationRouteNameController =
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
                            controller: administrationRouteNameController,
                            validator: (_) => context
                                .read<AdministrationRouteFormBloc>()
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
                                hintText: AppStrings.administrationRoute,
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        color:
                                            Theme.of(context).backgroundColor)),
                            keyboardType: TextInputType.text,
                            textCapitalization: TextCapitalization.words,
                            onChanged: (value) {
                              administrationRouteNameController.text = value;
                              administrationRouteNameController.selection =
                                  TextSelection.fromPosition(TextPosition(
                                      offset: administrationRouteNameController
                                          .text.length));
                              context.read<AdministrationRouteFormBloc>().add(
                                  AbbreviationNameFormEvent.nameChanged(
                                      administrationRouteNameController.text));
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
                                .read<AdministrationRouteFormBloc>()
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
                                hintText: AppStrings.adminRouteAbbreviation,
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
                              context.read<AdministrationRouteFormBloc>().add(
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
                            .read<AdministrationRouteFormBloc>()
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
