import 'package:expedientes_clinicos/application/medicine/medicine_actor/medicine_actor_bloc.dart';
import 'package:expedientes_clinicos/injection.dart';
import 'package:expedientes_clinicos/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FakerMedicineButton extends StatelessWidget {
  const FakerMedicineButton({
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
        create: (context) => getIt<MedicineActorBloc>(),
        child: BlocConsumer<MedicineActorBloc, MedicineActorState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return ElevatedButton(
              onPressed: () {
                context
                    .read<MedicineActorBloc>()
                    .add(MedicineActorEvent.faker());
              },
              child: const Text(AppStrings.createFake),
            );
          },
        ),
      ),
    );
  }
}
