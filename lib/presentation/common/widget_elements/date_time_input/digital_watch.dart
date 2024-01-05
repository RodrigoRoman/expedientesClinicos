import 'package:auto_size_text/auto_size_text.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/presentation/resources/asset_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DigitalWatch extends StatefulWidget {
  DigitalWatch(
      {required this.initialTime, required this.onDateSelected, super.key});
  final HourTime initialTime;
  final Function onDateSelected;

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
      widget.onDateSelected(newTime);
    }
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return LayoutBuilder(builder: (context, constraints) {
      return GestureDetector(
        onTap: () async {
          await selectTime(widget.initialTime);
        },
        child: Stack(
          children: [
            SizedBox(
              child: Image.asset(AppAssetNames.digitalWatchBackground),
            ),
            Positioned(
              top: constraints.maxHeight / 3,
              left: constraints.maxWidth / 5,
              child: SizedBox(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                child: AutoSizeText(
                  '${widget.initialTime.value.fold((l) {
                    TimeOfDay.now().format(context);
                  }, (r) => r.format(context))}',
                  minFontSize: 4,
                  wrapWords: false,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
