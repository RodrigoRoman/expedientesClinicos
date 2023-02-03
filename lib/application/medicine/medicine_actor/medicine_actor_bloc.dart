import 'package:bloc/bloc.dart';
import 'package:expedientes_clinicos/domain/medicine/i_medicine_repository.dart';
import 'package:expedientes_clinicos/domain/medicine/medicine.dart';
import 'package:expedientes_clinicos/domain/medicine/medicine_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'medicine_actor_event.dart';
part 'medicine_actor_state.dart';
part 'medicine_actor_bloc.freezed.dart';

class MedicineActorBloc extends Bloc<MedicineActorEvent, MedicineActorState> {
  final IMedicineRepository _medicineRepository;
  MedicineActorBloc(this._medicineRepository) : super(_Initial()) {
    on<_DeleteMedicine>((event, emit) async {
      emit(const MedicineActorState.actionInProgress());
      final failureOrDeleted = await _medicineRepository.delete(event.medicine);
      emit(failureOrDeleted.fold((f) => MedicineActorState.deleteFailure(f),
          (_) => const MedicineActorState.deleteSuccess()));
    });
  }
}
