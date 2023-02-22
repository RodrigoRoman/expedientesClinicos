import 'package:expedientes_clinicos/application/medicine/medicine_form/medicine_form_bloc.dart';
import 'package:expedientes_clinicos/presentation/resources/asset_names.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ControlledBool extends StatelessWidget {
  const ControlledBool({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: FittedBox(
                    child: Text(
                      AppStrings.controlled,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
                Spacer(flex: 1),
                Expanded(
                  child: FittedBox(
                    child: Text(
                      AppStrings.freeSale,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Switch.adaptive(
              value: context.read<MedicineFormBloc>().state.medicine.controlled,
              activeThumbImage: const AssetImage(AppAssetNames.controlledImage),
              inactiveThumbImage: const AssetImage(AppAssetNames.freeSaleImage),
              onChanged: (_) {
                context.read<MedicineFormBloc>().add(
                    MedicineFormEvent.controlledChanged(!context
                        .read<MedicineFormBloc>()
                        .state
                        .medicine
                        .controlled));
              }),
        ),
      ],
    );
  }
}
