import 'package:expedientes_clinicos/presentation/common/widget_elements/input_fields/double_input.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/title_validated.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

class RangeNumberInput extends StatefulWidget {
  final inactive;
  const RangeNumberInput({this.inactive = false, super.key});

  @override
  State<RangeNumberInput> createState() => _RangeNumberInputState();
}

class _RangeNumberInputState extends State<RangeNumberInput> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool vertical = (constraints.maxWidth < 150);
      return !vertical
          ? Row(
              children: [
                const Spacer(),
                Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Expanded(
                            child: TitleValidated(
                                inactive: true,
                                title: AppStrings.minRange,
                                condition: true)),
                        Expanded(
                            flex: 2,
                            child: DoubleInputBox(
                                inactive: widget.inactive,
                                initialValue: 0.0,
                                onChanged: (_) {})),
                      ],
                    )),
                const Spacer(),
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Expanded(
                          child: TitleValidated(
                              inactive: true,
                              title: AppStrings.maxRange,
                              condition: true)),
                      Expanded(
                          flex: 2,
                          child: DoubleInputBox(
                              inactive: widget.inactive,
                              initialValue: 0.0,
                              onChanged: (_) {})),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            )
          : Column(
              children: [
                const Spacer(),
                Expanded(
                  flex: 10,
                  child: Column(
                    children: [
                      Expanded(
                          child: TitleValidated(
                              minFontSize: 4,
                              inactive: true,
                              title: AppStrings.minRange,
                              condition: true)),
                      Expanded(
                          flex: 2,
                          child: DoubleInputBox(
                              inactive: widget.inactive,
                              initialValue: 0.0,
                              onChanged: (_) {})),
                    ],
                  ),
                ),
                const Spacer(),
                Expanded(
                  flex: 10,
                  child: Column(
                    children: [
                      Expanded(
                          child: TitleValidated(
                              minFontSize: 4,
                              inactive: true,
                              title: AppStrings.maxRange,
                              condition: true)),
                      Expanded(
                          flex: 2,
                          child: DoubleInputBox(
                              inactive: widget.inactive,
                              initialValue: 0.0,
                              onChanged: (_) {})),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            );
    });
  }
}
