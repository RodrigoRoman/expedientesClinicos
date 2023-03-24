import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/pharmaceutical_form_watcher_bloc.dart';
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/integer_input.dart';
import 'package:expedientes_clinicos/presentation/common/widget_elements/title_validated.dart';
import 'package:expedientes_clinicos/presentation/pharmaceutical_form/drop_down_pharmaceutical_form.dart';
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
      children: [
        Expanded(
          flex: 6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: TitleValidated(
                    title: AppStrings.pharmaceuticalForm,
                    condition: (requestedSubmition &
                        (context
                                .read<GenericMedicineFormBloc>()
                                .state
                                .medicine
                                .pharmaceuticalForm ==
                            NameAbbreviation.empty()))),
              ),
              Expanded(
                child: BlocProvider(
                  create: (context) => getIt<PharmaceuticalFormWatcherBloc>()
                    ..add(const AbbreviationNameWatcherEvent.watchAllStarted()),
                  child: const DropdownSearchPharmaceuticalForm(),
                ),
              )
            ],
          ),
        ),
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
                              child: FittedBox(
                            child: Text(
                              AppStrings.amountUnitMeasure,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          )),
                          Expanded(
                              flex: 2,
                              child: IntegerInputBox(
                                  initialValue: 0,
                                  minValue: 1,
                                  onChanged: (amountPackage) {
                                    context.read<GenericMedicineFormBloc>().add(
                                        GenericMedicineFormEvent
                                            .amountPerPackageChanged(
                                                amountPackage));
                                  })),
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
