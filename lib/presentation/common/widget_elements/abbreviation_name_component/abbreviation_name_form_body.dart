import 'dart:io';

import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/abbreviation_name_form_abstract_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_form/administration_route_form_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AbbreviationNameFormBody extends StatefulWidget {
  final NameAbbreviation nameAbbreviation;
  final Function onNameChanged;
  final Function onAbbreviationChanged;
  final Function onSubmit;
  const AbbreviationNameFormBody(
      {required this.nameAbbreviation,
      required this.onAbbreviationChanged,
      required this.onNameChanged,
      required this.onSubmit,
      super.key});

  @override
  State<AbbreviationNameFormBody> createState() =>
      _AbbreviationNameFormBodyState();
}

class _AbbreviationNameFormBodyState extends State<AbbreviationNameFormBody> {
  final _key = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController abbreviationController = TextEditingController();

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
                            controller: nameController,
                            validator: (_) => widget.nameAbbreviation.name.value
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
                                hintText: AppStrings.administrationRoute,
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        color: Theme.of(context).canvasColor)),
                            keyboardType: TextInputType.text,
                            textCapitalization: TextCapitalization.words,
                            onChanged: (value) {
                              nameController.text = value;
                              nameController.selection =
                                  TextSelection.fromPosition(TextPosition(
                                      offset: nameController.text.length));
                              context.read<AdministrationRouteFormBloc>().add(
                                  AbbreviationNameFormEvent.nameChanged(
                                      nameController.text));
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
                            controller: abbreviationController,
                            validator: (_) => widget.nameAbbreviation.abbr.value
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
                              abbreviationController.text = value;
                              abbreviationController.selection =
                                  TextSelection.fromPosition(TextPosition(
                                      offset:
                                          abbreviationController.text.length));
                              widget.onAbbreviationChanged();
                              // context.read<AdministrationRouteFormBloc>().add(
                              //     AbbreviationNameFormEvent.abreviationChanged(
                              //         abbreviationController.text));
                            },
                            textInputAction: TextInputAction.next,
                          ));
                    })),
                ElevatedButton(
                    onPressed: () {
                      if (_key.currentState!.validate()) {
                        widget.onSubmit();
                        // context
                        //     .read<AdministrationRouteFormBloc>()
                        //     .add(const AbbreviationNameFormEvent.saved());
                      }
                    },
                    child: const Text(AppStrings.create))
              ]),
        ),
      );
    });
  }
}
