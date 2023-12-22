import 'package:expedientes_clinicos/application/common/int_counter/int_counter_bloc.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:expedientes_clinicos/presentation/common/widget_components/buttons/minus_button.dart';
import 'package:expedientes_clinicos/presentation/common/widget_components/buttons/plus_button.dart';
import 'package:expedientes_clinicos/presentation/common/widget_components/text_input/integer_text_input.dart';
import 'package:expedientes_clinicos/presentation/resources/const_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IntegerInputBox extends StatefulWidget {
  final int initialValue;
  int minValue;
  int maxValue;
  final Function onChanged;

  IntegerInputBox(
      {required this.initialValue, minValue, maxValue, required this.onChanged})
      : maxValue = maxValue ?? integerInfinity,
        minValue = minValue ?? 0;

  @override
  State<IntegerInputBox> createState() => _IntegerInputBoxState();
}

class _IntegerInputBoxState extends State<IntegerInputBox> {
  TextEditingController textController = TextEditingController();

  // validator of input
  bool isValidInput(int value) {
    // Convert the input value to an integer and check if it is not greater than 8 digits
    return (value <= widget.maxValue) && (value >= widget.minValue);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IntCounterBloc()
        ..add(IntCounterEvent.initialized(
            optionOf(widget.minValue), optionOf(widget.maxValue))),
      child: BlocConsumer<IntCounterBloc, IntCounterState>(
        listener: (context, state) {
          textController.value = TextEditingValue(
              text: state.amount.toString(),
              selection: TextSelection.fromPosition(
                  TextPosition(offset: textController.selection.extentOffset)));
          widget.onChanged(state.amount);
        },
        builder: (context, state) {
          return IntInputBody(
            textController: textController,
            isValidInput: isValidInput,
            maxInt: widget.maxValue,
          );
        },
      ),
    );
  }
}

class IntInputBody extends StatelessWidget {
  final TextEditingController textController;
  Function isValidInput;
  int maxInt;
  IntInputBody(
      {super.key,
      required this.textController,
      required this.isValidInput,
      required this.maxInt});
  int inputLength = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
            flex: 1,
            child: MinusButtonDown(
              onPressed: () {
                context
                    .read<IntCounterBloc>()
                    .add(const IntCounterEvent.amountDecreased());
              },
            )),
        Expanded(
            flex: 2,
            child: IntegerTextInput(
              intTextController: textController,
              onInputChanged: (value) {
                if (isValidInput(value)) {
                  textController.value = TextEditingValue(
                    text: value.toString(),
                    selection: TextSelection.fromPosition(
                      TextPosition(
                          offset: textController.selection.extentOffset),
                    ),
                  );
                  context
                      .read<IntCounterBloc>()
                      .add(IntCounterEvent.amountUpdated(value));
                } else {
                  textController.value = TextEditingValue(
                    text: maxInt.toString(),
                    selection: TextSelection.fromPosition(
                      TextPosition(
                          offset: textController.selection.extentOffset),
                    ),
                  );
                  context
                      .read<IntCounterBloc>()
                      .add(IntCounterEvent.amountUpdated(maxInt));
                }
              },
            )),
        Expanded(
            flex: 1,
            child: PlusButtonUp(
              onPressed: () {
                context
                    .read<IntCounterBloc>()
                    .add(const IntCounterEvent.amountIncreased());
              },
            )),
      ],
    );
  }
}
