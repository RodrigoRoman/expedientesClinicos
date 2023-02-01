import 'package:expedientes_clinicos/application/common/int_counter/int_counter_bloc.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IntegerInputBox extends StatefulWidget {
  final int initialValue;
  final int minValue;
  int? maxValue;
  final Function onChanged;

  IntegerInputBox(
      {required this.initialValue,
      required this.minValue,
      this.maxValue,
      required this.onChanged});

  @override
  _IntegerInputBoxState createState() => _IntegerInputBoxState();
}

class _IntegerInputBoxState extends State<IntegerInputBox> {
  TextEditingController textController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IntCounterBloc()
        ..add(IntCounterEvent.initialized(optionOf(0), none())),
      child: BlocConsumer<IntCounterBloc, IntCounterState>(
        listener: (context, state) {
          textController.text = state.amount.toString();
          widget.onChanged(state.amount);
        },
        builder: (context, state) {
          return IntInputBody(textController: textController);
        },
      ),
    );
  }
}

class IntInputBody extends StatelessWidget {
  const IntInputBody({
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
                      .read<IntCounterBloc>()
                      .add(const IntCounterEvent.amountDecreased());
                },
              );
            },
          ),
        ),
        Expanded(
          flex: 2,
          child: TextField(
            controller: textController,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),

            onChanged: (value) {
              int newValue = 0;
              if (value.isNotEmpty) {
                newValue = int.parse(value);
              }
              context
                  .read<IntCounterBloc>()
                  .add(IntCounterEvent.amountUpdated(newValue));
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
                      .read<IntCounterBloc>()
                      .add(const IntCounterEvent.amountIncreased());
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
