import 'package:auto_size_text/auto_size_text.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/presentation/resources/asset_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DigitalWatch extends StatefulWidget {
  final HourTime initialTime;
  final Function onTimeSelected;
  final bool inactive;

  DigitalWatch(
      {required this.initialTime,
      required this.onTimeSelected,
      this.inactive = false,
      super.key});

  static get minWidth => 50;
  static get minHeight => 50;

  @override
  State<DigitalWatch> createState() => _DigitalWatchState();
}

class _DigitalWatchState extends State<DigitalWatch> {
  Future selectTime(HourTime initialTime) async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: initialTime.value.fold((l) => TimeOfDay.now(), (r) => r),
    );
    if (newTime != null) {
      widget.onTimeSelected(newTime);
      setState(() {});
    }
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return LayoutBuilder(builder: (context, constraints) {
      return GestureDetector(
        onTap: widget.inactive
            ? null
            : () async {
                await selectTime(widget.initialTime);
              },
        child: Stack(
          children: [
            Positioned(
              top: constraints.maxHeight / 3,
              left: constraints.maxWidth / 10,
              width: constraints.maxWidth / 1.2,
              height: constraints.maxHeight / 1.3,
              child: Image.asset(
                AppAssetNames.digitalWatchBackground,
                color: widget.inactive
                    ? Colors.grey[400]
                    : Theme.of(context).colorScheme.secondary,
              ),
            ),
            Positioned(
              top: constraints.maxHeight / 5,
              left: constraints.maxWidth / 10,
              width: constraints.maxWidth / 1.2,
              height: constraints.maxHeight,
              child: Center(
                child: AutoSizeText(
                  '${widget.initialTime.value.fold((l) {
                    TimeOfDay.now().format(context);
                  }, (r) => r.format(context))}',
                  minFontSize: 2,
                  wrapWords: false,
                  style: TextStyle(
                      fontSize: constraints.maxHeight / 5,
                      color: widget.inactive
                          ? Colors.grey
                          : Theme.of(context).colorScheme.primary),
                  maxFontSize: 100,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
