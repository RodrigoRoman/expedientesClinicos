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
          textController.text = state.amount.toString();
          widget.onChanged(state.amount);
        },
        builder: (context, state) {
          return DoubleInputBody(textController: textController);
        },
      ),
    );
  }
}

class DoubleInputBody extends StatelessWidget {
  const DoubleInputBody({
    Key? key,
    required this.textController,
  }) : super(key: key);

  final TextEditingController textController;

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
                },
              );
            },
          ),
        ),
        Expanded(
          flex: 2,
          child: TextField(
            controller: textController,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),

            onChanged: (value) {
              double newValue = 0;
              if (textController.text.isNotEmpty) {
                newValue = double.parse(textController.text);
                context
                    .read<DoubleCounterBloc>()
                    .add(DoubleCounterEvent.amountUpdated(newValue));
              } else {
                context
                    .read<DoubleCounterBloc>()
                    .add(DoubleCounterEvent.amountUpdated(newValue));
              }
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
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
