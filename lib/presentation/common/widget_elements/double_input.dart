import 'package:expedientes_clinicos/application/common/double_counter/double_counter_bloc.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoubleInputBox extends StatefulWidget {
  final double initialValue;
  final double minValue;
  // double maxValue;
  final Function onChanged;

  DoubleInputBox(
      {required this.initialValue,
      required this.minValue,
      // this.maxValue,
      required this.onChanged});

  @override
  _DoubleInputBoxState createState() => _DoubleInputBoxState();
}

class _DoubleInputBoxState extends State<DoubleInputBox> {
  TextEditingController textController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DoubleCounterBloc()
        ..add(DoubleCounterEvent.initialized(optionOf(0.0), none())),
      child: BlocConsumer<DoubleCounterBloc, DoubleCounterState>(
        listener: (context, state) {
          textController.value = TextEditingValue(
              text: state.amount.toString(),
              selection: TextSelection.fromPosition(
                  TextPosition(offset: textController.selection.extentOffset)));
          widget.onChanged(state.amount);
        },
        builder: (context, state) {
          return DoubleInputBody(textController: textController);
        },
      ),
    );
  }
}

class DoubleInputBody extends StatefulWidget {
  const DoubleInputBody({
    Key? key,
    required this.textController,
  }) : super(key: key);

  final TextEditingController textController;

  @override
  State<DoubleInputBody> createState() => _DoubleInputBodyState();
}

class _DoubleInputBodyState extends State<DoubleInputBody> {
  int inputLength = 3;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 1,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize:
                        Size(constraints.maxWidth, constraints.maxHeight),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(2)),
                child: Icon(
                  Icons.remove,
                  size: (constraints.maxHeight + constraints.maxWidth) * 0.2,
                ),
                onPressed: () {
                  context
                      .read<DoubleCounterBloc>()
                      .add(const DoubleCounterEvent.amountDecreased());
                  setState(() {
                    (double.parse(widget.textController.text) - 1)
                        .toString()
                        .length;
                  });
                },
              );
            },
          ),
        ),
        Expanded(
          flex: 3,
          child: TextField(
            controller: widget.textController,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
            ],
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontSize: 80 / ((inputLength + 1) * 1.4)),
            onChanged: (value) {
              double newValue = 0;
              if (value.isNotEmpty) {
                newValue = double.parse(value);
                widget.textController.value = TextEditingValue(
                    text: value,
                    selection: TextSelection.fromPosition(TextPosition(
                        offset: widget.textController.selection.extentOffset)));
                setState(() {
                  inputLength = value.length;
                });
              }
              context
                  .read<DoubleCounterBloc>()
                  .add(DoubleCounterEvent.amountUpdated(newValue));
            },
            // initialValue: _value.toString(),
          ),
        ),
        Expanded(
          flex: 1,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize:
                        Size(constraints.maxWidth, constraints.maxHeight),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(2)),
                child: Icon(
                  Icons.add,
                  size: (constraints.maxHeight + constraints.maxWidth) * 0.2,
                ),
                onPressed: () {
                  context
                      .read<DoubleCounterBloc>()
                      .add(const DoubleCounterEvent.amountIncreased());
                  setState(() {
                    inputLength = (double.parse(widget.textController.text) + 1)
                        .toString()
                        .length;
                  });
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
