import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/buttons_group/cancel_create_row.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_fields/text_input_title.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

class AbbreviationNameForm extends StatefulWidget {
  final NameAbbreviation nameAbbreviation;
  final Function onNameChanged;
  final Function onAbbreviationChanged;
  final Function onSubmit;
  final Function validName;
  final Function validAbbreviation;
  final String titleName;
  final String titleAbbreviation;
  const AbbreviationNameForm(
      {required this.nameAbbreviation,
      required this.onAbbreviationChanged,
      required this.validName,
      required this.validAbbreviation,
      required this.onNameChanged,
      required this.onSubmit,
      this.titleAbbreviation = AppStrings.abbreviationName,
      this.titleName = AppStrings.fullName,
      super.key});

  @override
  State<AbbreviationNameForm> createState() => _AbbreviationNameFormState();
}

class _AbbreviationNameFormState extends State<AbbreviationNameForm> {
  bool submitted = false;
  final _key = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController abbreviationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Center(
        child: SizedBox(
          width: constraints.maxWidth / 1.2,
          height: constraints.maxHeight,
          child: Form(
            key: _key,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: AppSize.s10),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Expanded(
                        flex: 4,
                        child: TextInputTitle(
                          title: widget.titleName,
                          textEditingController: nameController,
                          validator: widget.validName,
                          onChanged: widget.onNameChanged,
                          hintText: AppStrings.fullName,
                          submitted: submitted,
                        )),
                    const Spacer(
                      flex: 1,
                    ),
                    Expanded(
                        flex: 4,
                        child: TextInputTitle(
                          title: widget.titleAbbreviation,
                          textEditingController: abbreviationController,
                          validator: widget.validAbbreviation,
                          onChanged: widget.onAbbreviationChanged,
                          hintText: AppStrings.abbreviationName,
                          submitted: submitted,
                        )),
                    const Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      flex: 5,
                      child: CancelCreateButtonsRow(onCreate: () {
                        print('validators from abbr naem form');
                        print(widget.validAbbreviation());
                        print(widget
                            .validName()); // This triggers form validation
                        if (widget.validAbbreviation() == null &&
                            widget.validName() == null) {
                          widget.onSubmit();
                        }
                        setState(() {
                          submitted = true;
                        });
                      }),
                    )
                  ]),
            ),
          ),
        ),
      );
    });
  }
}
