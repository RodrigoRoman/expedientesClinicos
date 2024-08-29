import 'package:auto_size_text/auto_size_text.dart';
import 'package:expedientes_clinicos/presentation/resources/const_style_widgets.dart';
import 'package:expedientes_clinicos/presentation/resources/helper_functions.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// Other code

class DatePickerButton extends StatefulWidget {
  final DateTime selectedDate;
  final Function onChanged;
  final bool inactive;

  const DatePickerButton(
      {required this.selectedDate,
      required this.onChanged,
      this.inactive = false,
      super.key});

  static double get minHeight => 67;
  static double get minWidth => 60;

  @override
  State<DatePickerButton> createState() => _DatePickerButtonState();
}

class _DatePickerButtonState extends State<DatePickerButton> {
  DateTime selectedDate = DateTime.now();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedDate = widget.selectedDate;
  }

// To show the date picker:
  void _showDatePicker() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      helpText: AppStrings.dateSelectPromt,
      confirmText: AppStrings.ok,
      cancelText: AppStrings.cancel,
      fieldLabelText: AppStrings.dateSelectPromt,
      firstDate: DateTime(2020, 1),
      lastDate: DateTime(2030, 1),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        widget.onChanged(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      print("Constraints");
      print(constraints);
      return Column(
        children: [
          Expanded(
              child: AutoSizeText(
            capitalizeWords(
                DateFormat('MMMM yyyy', 'es_ES').format(selectedDate)),
            wrapWords: false,
            maxLines: 1,
            minFontSize: 8,
            style: TextStyle(
                color: widget.inactive
                    ? Colors.grey
                    : Theme.of(context).colorScheme.secondary),
          )),
          Expanded(
            flex: 2,
            child: TextButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.all(const RoundedRectangleBorder(
                    borderRadius: BoderRadiusStyle.weekDayButton)),
                backgroundColor: WidgetStateColor.resolveWith(
                    (states) => states.contains(WidgetState.pressed)
                        // darker green when pressed
                        ? Theme.of(context).colorScheme.surface
                        : Theme.of(context).colorScheme.surface),
              ),
              onPressed: widget.inactive
                  ? null
                  : () {
                      _showDatePicker();
                    },
              child: Column(
                children: [
                  Expanded(
                    child: AutoSizeText(
                      capitalizeWords(
                          DateFormat('EEEE', 'es_ES').format(selectedDate)),
                      minFontSize: 8,
                      wrapWords: false,
                      style: TextStyle(
                          color: widget.inactive
                              ? Colors.grey
                              : Theme.of(context).colorScheme.primary),
                    ),
                  ),
                  Expanded(
                    child: AutoSizeText(
                      selectedDate.day.toString(),
                      minFontSize: 8,
                      wrapWords: false,
                      style: TextStyle(
                          color: widget.inactive
                              ? Colors.grey
                              : Theme.of(context).colorScheme.primary),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
      //  IconButton(
      //   iconSize: (constraints.maxWidth + constraints.maxHeight) / 4,
      //   icon: Icon(
      //     Icons.calendar_month,
      //     color: Theme.of(context).colorScheme.secondary,
      //   ),
      //   onPressed: () {
      //     _showDatePicker();
      //   },
      // );
    });
  }
}
