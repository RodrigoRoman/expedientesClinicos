import 'package:auto_size_text/auto_size_text.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/pharmaceutical_form_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/input_fields/integer_input.dart';
import 'package:expedientes_clinicos/presentation/pharmaceutical_form/drop_down_pharmaceutical_form.dart';
import 'package:expedientes_clinicos/presentation/resources/const_values.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PharmaceuticalFormAmount extends StatelessWidget {
  const PharmaceuticalFormAmount({
    super.key,
    required this.requestedSubmition,
  });

  final bool requestedSubmition;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 6,
          child: BlocProvider(
            create: (context) => getIt<PharmaceuticalFormWatcherBloc>()
              ..add(const AbbreviationNameWatcherEvent.watchAllStarted()),
            child: DropdownSearchPharmaceuticalForm(
                requestedSubmition: requestedSubmition),
          ),
        ),
        const Spacer(),
        context
                    .read<GenericMedicineFormBloc>()
                    .state
                    .medicine
                    .pharmaceuticalForm !=
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
                            style: Theme.of(context).textTheme.displaySmall,
                          )),
                          Expanded(
                              flex: 2,
                              child: IntegerInputBox(
                                  initialValue: 0,
                                  minValue: 1,
                                  maxValue: integerInfinity,
                                  onChanged: (amountPackage) {
                                    context.read<GenericMedicineFormBloc>().add(
                                        GenericMedicineFormEvent
                                            .amountPerPackageChanged(
                                                amountPackage));
                                  })),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          const Spacer(),
                          Expanded(
                            child: FittedBox(
                              child: Text(
                                context
                                    .read<GenericMedicineFormBloc>()
                                    .state
                                    .medicine
                                    .pharmaceuticalForm
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
