import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/measure_unit_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/medicine_form/medicine_form_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/double_input.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/title_validated.dart';
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: TitleValidated(
                    title: AppStrings.measureUnit,
                    condition: (requestedSubmition &
                        (context
                                .read<MedicineFormBloc>()
                                .state
                                .medicine
                                .measureUnit ==
                            NameAbbreviation.empty()))),
              ),
              Expanded(
                child: BlocProvider(
                  create: (context) => getIt<MeasureUnitWatcherBloc>()
                    ..add(const AbbreviationNameWatcherEvent.watchAllStarted()),
                  child: DropdownSearchMeasureUnit(),
                ),
              )
            ],
          ),
        ),
        context.read<MedicineFormBloc>().state.medicine.measureUnit !=
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
                              child: FittedBox(
                            child: Text(
                              AppStrings.amountUnitMeasure,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          )),
                          Expanded(
                              flex: 2,
                              child: DoubleInputBox(
                                initialValue: 0.0,
                                minValue: 1.0,
                                onChanged: (amountMeasure) {
                                  context.read<MedicineFormBloc>().add(
                                      MedicineFormEvent.amountMeasureChanged(
                                          amountMeasure));
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
                                    .read<MedicineFormBloc>()
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
