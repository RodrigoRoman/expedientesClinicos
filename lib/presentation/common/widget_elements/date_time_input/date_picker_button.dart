import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';

// Other code

class DatePickerButton extends StatefulWidget {
  final DateTime selectedDate;
  final Function onChanged;

  const DatePickerButton(
      {required this.selectedDate, required this.onChanged, super.key});

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
    if (picked != null && picked != selectedDate) widget.onChanged(picked);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return IconButton(
        iconSize: (constraints.maxWidth + constraints.maxHeight) / 4,
        icon: Icon(
          Icons.calendar_month,
          color: Theme.of(context).colorScheme.secondary,
        ),
        onPressed: () {
          _showDatePicker();
        },
      );
    });
  }
}
