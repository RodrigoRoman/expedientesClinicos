import 'package:expedientes_clinicos/application/medicine/branded_medicine/branded_medicine_actor/branded_medicine_actor_bloc.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FakerBrandedMedicineButton extends StatelessWidget {
  const FakerBrandedMedicineButton({
    super.key,
    required this.width,
    required this.heightUnit,
  });

  final double heightUnit;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightUnit,
      width: width,
      child: BlocProvider(
        create: (context) => getIt<BrandedMedicineActorBloc>(),
        child:
            BlocConsumer<BrandedMedicineActorBloc, BrandedMedicineActorState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return ElevatedButton(
              onPressed: () {
                context
                    .read<BrandedMedicineActorBloc>()
                    .add(BrandedMedicineActorEvent.faker());
              },
              child: const Text(AppStrings.createFake),
            );
          },
        ),
      ),
    );
  }
}
