import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

class AbbreviationNameForm extends StatefulWidget {
  final NameAbbreviation nameAbbreviation;
  final Function onNameChanged;
  final Function onAbbreviationChanged;
  final Function onSubmit;
  final Function validName;
  final Function validAbbreviation;
  const AbbreviationNameForm(
      {required this.nameAbbreviation,
      required this.onAbbreviationChanged,
      required this.validName,
      required this.validAbbreviation,
      required this.onNameChanged,
      required this.onSubmit,
      super.key});

  @override
  State<AbbreviationNameForm> createState() => _AbbreviationNameFormState();
}

class _AbbreviationNameFormState extends State<AbbreviationNameForm> {
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
                            validator: (_) => widget.validName(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: Theme.of(context).canvasColor),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: AppStrings.fullName,
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
                              widget.onNameChanged(nameController.text);
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
                            validator: (_) => widget.validAbbreviation(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: Theme.of(context).canvasColor),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: AppStrings.abbreviationName,
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
                              widget.onAbbreviationChanged(
                                  abbreviationController.text);
                            },
                            textInputAction: TextInputAction.next,
                          ));
                    })),
                ElevatedButton(
                    onPressed: () {
                      if (_key.currentState!.validate()) {
                        widget.onSubmit();
                      }
                    },
                    child: const Text(AppStrings.create))
              ]),
        ),
      );
    });
  }
}
