import 'package:auto_size_text/auto_size_text.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/measure_unit_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_fields/double_input.dart';
import 'package:expedientes_clinicos/presentation/measure_unit/drop_down_search_measure_unit.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MeasureUnitAmountRow extends StatelessWidget {
  const MeasureUnitAmountRow({
    super.key,
    required this.requestedSubmition,
  });

  final bool requestedSubmition;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: BlocProvider(
            create: (context) => getIt<MeasureUnitWatcherBloc>()
              ..add(const AbbreviationNameWatcherEvent.watchAllStarted()),
            child: DropdownSearchMeasureUnit(
                requestedSubmition: requestedSubmition),
          ),
        ),
        const Spacer(),
        context.read<GenericMedicineFormBloc>().state.medicine.measureUnit !=
                NameAbbreviation.empty()
            ? Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Column(
                        children: [
                          Expanded(
                              child: AutoSizeText(
                            AppStrings.amount,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.displayMedium,
                          )),
                          Expanded(
                              flex: 2,
                              child: DoubleInputBox(
                                initialValue: 0.0,
                                minValue: 1.0,
                                onChanged: (amountMeasure) {
                                  context.read<GenericMedicineFormBloc>().add(
                                      GenericMedicineFormEvent
                                          .amountMeasureChanged(amountMeasure));
                                },
                              )),
                        ],
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Spacer(),
                          Expanded(
                            child: FittedBox(
                              child: Text(
                                context
                                    .read<GenericMedicineFormBloc>()
                                    .state
                                    .medicine
                                    .measureUnit
                                    .abbr
                                    .value
                                    .fold((l) => '', (r) => r),
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer()
                  ],
                ))
            : const SizedBox.shrink()
      ],
    );
  }
}
