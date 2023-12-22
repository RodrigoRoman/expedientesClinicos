import 'package:auto_size_text/auto_size_text.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/buttons_group/cancel_create_row.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_fields/double_input.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_fields/text_input_title.dart';
import 'package:expedientes_clinicos/presentation/resources/constant_size_values.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

class LabelAmountDoublePopUpForm extends StatefulWidget {
  final String titleName;
  final Function validAbbreviation;
  final Function onAmountChanged;
  final Function validAmount;
  final Function onSubmit;
  final Function onNameChanged;
  LabelAmountDoublePopUpForm(
      {required this.titleName,
      required this.validAbbreviation,
      required this.onAmountChanged,
      required this.validAmount,
      required this.onSubmit,
      required this.onNameChanged,
      super.key});

  @override
  State<LabelAmountDoublePopUpForm> createState() =>
      _LabelAmountDoublePopUpFormState();
}

class _LabelAmountDoublePopUpFormState
    extends State<LabelAmountDoublePopUpForm> {
  TextEditingController abbreviationController = TextEditingController();
  bool submitted = false;

  @override
  void dispose() {
    // TODO: implement dispose
    abbreviationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.s22),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Expanded(
                flex: 5,
                child: TextInputTitle(
                  title: widget.titleName,
                  textEditingController: abbreviationController,
                  validator: widget.validAbbreviation,
                  onChanged: widget.onNameChanged,
                  hintText: AppStrings.abbreviationName,
                  submitted: submitted,
                )),
            const Spacer(
              flex: 2,
            ),
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  Expanded(
                      child: AutoSizeText(
                    AppStrings.amount,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displaySmall,
                  )),
                  Expanded(
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSize.s50),
                        child: DoubleInputBox(
                            initialValue: 0.0,
                            minValue: 0.0,
                            onChanged: widget.onAmountChanged),
                      )),
                ],
              ),
            ),
            const Spacer(flex: 2),
            Expanded(
              flex: 5,
              child: CancelCreateButtonsRow(onCreate: () {
                if (widget.validAbbreviation() == null &&
                    widget.validAmount() == null) {
                  print("Submit called");
                  widget.onSubmit();
                }
                setState(() {
                  submitted = true;
                });
              }),
            ),
            const Spacer()
          ]),
    );
  }
}
