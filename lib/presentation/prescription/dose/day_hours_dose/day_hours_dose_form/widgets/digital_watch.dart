import 'package:expedientes_clinicos/application/medicine/dose/dose_components/day_hours_dose/day_hours_dose_form/day_hours_dose_form_bloc.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/presentation/resources/asset_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

class DigitalWatch extends StatefulWidget {
  DigitalWatch(
      {required this.constraints,
      required this.time,
      required this.index,
      super.key});
  final BoxConstraints constraints;
  final HourTime time;
  final int index;

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
      List<HourTime> currentList = context
          .read<DayHoursDoseFormBloc>()
          .state
          .dayHoursDose
          .doseHours
          .value
          .fold((l) => [], (r) => r.toMutableList().asList());
      currentList[widget.index] = HourTime(newTime);
      currentList.sort((a, b) => a.toTimestamp().compareTo(b.toTimestamp()));
      context
          .read<DayHoursDoseFormBloc>()
          .add(DayHoursDoseFormEvent.listHoursChanged(currentList));
    }
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return SizedBox(
      width: widget.constraints.maxWidth / 3,
      child: GestureDetector(
        onTap: () async {
          await selectTime(widget.time);
        },
        child: Stack(
          children: [
            SizedBox(
              width: widget.constraints.maxWidth / 3,
              child: Image.asset(AppAssetNames.digitalWatchBackground),
            ),
            Positioned(
              top: widget.constraints.maxHeight / 3.5,
              left: widget.constraints.maxWidth / 15,
              child: SizedBox(
                width: widget.constraints.maxWidth / 5,
                child: FittedBox(
                  child: Text(
                    '${widget.time.value.fold((l) {
                      TimeOfDay.now().format(context);
                    }, (r) => r.format(context))}',
                    style: TextStyle(fontSize: 24.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
