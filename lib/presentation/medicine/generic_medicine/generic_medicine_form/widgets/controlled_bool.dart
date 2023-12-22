import 'package:auto_size_text/auto_size_text.dart';
import 'package:expedientes_clinicos/application/medicine/generic_medicine/generic_medicine_form/generic_medicine_form_bloc.dart';
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
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Spacer(),
        Expanded(
          flex: 2,
          child: AutoSizeText(
            AppStrings.controlledQuestion,
            wrapWords: false,
            minFontSize: 7,
            maxLines: 1,
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ),
        Spacer(),
        Expanded(
          flex: 3,
          child: Transform.scale(
            scale: 3 / 1,
            child:
                BlocBuilder<GenericMedicineFormBloc, GenericMedicineFormState>(
              builder: (context, state) {
                return Switch(
                  value: state.medicine.controlled,
                  activeThumbImage:
                      ExactAssetImage(AppAssetNames.controlledImage),
                  inactiveThumbImage:
                      ExactAssetImage(AppAssetNames.freeSaleImage),
                  onChanged: (newBool) {
                    context
                        .read<GenericMedicineFormBloc>()
                        .add(GenericMedicineFormEvent.controlledChanged());
                  },
                );
              },
            ),
          ),
        ),
        Spacer(
          flex: 2,
        )
      ],
    );
  }
}
