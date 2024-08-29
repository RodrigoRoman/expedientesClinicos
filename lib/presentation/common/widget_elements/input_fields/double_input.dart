import 'package:expedientes_clinicos/application/common/double_counter/double_counter_bloc.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:expedientes_clinicos/presentation/common/widget_components/buttons/minus_button.dart';
import 'package:expedientes_clinicos/presentation/common/widget_components/buttons/plus_button.dart';
import 'package:expedientes_clinicos/presentation/common/widget_components/text_input/double_text_input.dart';
import 'package:expedientes_clinicos/presentation/resources/const_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoubleInputBox extends StatefulWidget {
  final double initialValue;
  double minValue;
  double maxValue;
  final Function(double) onChanged;
  bool inactive;
  // A way to see the minimum dimensions this widget supports
  // base on experience (trial and error)
  // Getter for width
  static int get minWidth => 100;
  // Getter for minHeight
  static int get minHeight => 50;
  DoubleInputBox(
      {required this.initialValue,
      minValue,
      maxValue,
      required this.onChanged,
      this.inactive = false})
      : maxValue = maxValue ?? doubleInfinity,
        minValue = minValue ?? 0.0;

  @override
  State<DoubleInputBox> createState() => _DoubleInputBoxState();
}

class _DoubleInputBoxState extends State<DoubleInputBox> {
  TextEditingController textController = TextEditingController();

  // validator of input
  bool isValidInput(double value) {
    // Convert the input value to an integer and check if it is not greater than 8 digits
    print("The value");
    print(value);
    print((value <= widget.maxValue) && (value >= widget.minValue));
    return (value <= widget.maxValue) && (value >= widget.minValue);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DoubleCounterBloc()
        ..add(DoubleCounterEvent.initialized(
            optionOf(widget.minValue), optionOf(widget.maxValue))),
      child: BlocConsumer<DoubleCounterBloc, DoubleCounterState>(
        listener: (context, state) {
          textController.value = TextEditingValue(
              text: state.amount.toString(),
              selection: TextSelection.fromPosition(
                  TextPosition(offset: textController.selection.extentOffset)));
          widget.onChanged(state.amount);
        },
        builder: (context, state) {
          return DoubleInputBody(
            textController: textController,
            isValidInput: isValidInput,
            inactive: widget.inactive,
            maxDouble: widget.maxValue,
          );
        },
      ),
    );
  }
}

class DoubleInputBody extends StatelessWidget {
  final TextEditingController textController;
  Function isValidInput;
  double maxDouble;
  double minDouble;
  bool inactive;
  DoubleInputBody(
      {super.key,
      required this.textController,
      required this.isValidInput,
      required this.inactive,
      this.minDouble = 0.0,
      required this.maxDouble});
  int inputLength = 3;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
            flex: 1,
            child: MinusButtonDown(
              inactive: inactive,
              onPressed: () {
                context
                    .read<DoubleCounterBloc>()
                    .add(const DoubleCounterEvent.amountDecreased());
              },
            )),
        Expanded(
            flex: 2,
            child: DoubleTextInput(
              inactive: inactive,
              doubleTextController: textController,
              onInputChanged: (double value) {
                if (isValidInput(value)) {
                  print("value to be changed");
                  print(value);
                  textController.value = TextEditingValue(
                    text: value.toString(),
                    selection: TextSelection.fromPosition(
                      TextPosition(
                          offset: textController.selection.extentOffset),
                    ),
                  );
                  context
                      .read<DoubleCounterBloc>()
                      .add(DoubleCounterEvent.amountUpdated(value));
                } else {
                  print("Invalid input");
                  print(value);
                  textController.value = TextEditingValue(
                    text: minDouble.toString(),
                    selection: TextSelection.fromPosition(
                      TextPosition(
                          offset: textController.selection.extentOffset),
                    ),
                  );
                  context
                      .read<DoubleCounterBloc>()
                      .add(DoubleCounterEvent.amountUpdated(minDouble));
                }
              },
            )),
        Expanded(
            flex: 1,
            child: PlusButtonUp(
              inactive: inactive,
              onPressed: () {
                context
                    .read<DoubleCounterBloc>()
                    .add(const DoubleCounterEvent.amountIncreased());
              },
            )),
      ],
    );
  }
}
