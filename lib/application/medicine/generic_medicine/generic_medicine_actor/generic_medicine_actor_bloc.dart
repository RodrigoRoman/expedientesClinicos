import 'package:bloc/bloc.dart';
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/generic_medicine.dart';
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/generic_medicine_failures.dart';
import 'package:expedientes_clinicos/domain/medicine/generic_medicine/i_generic_medicine_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'generic_medicine_actor_event.dart';
part 'generic_medicine_actor_state.dart';
part 'generic_medicine_actor_bloc.freezed.dart';

@injectable
class GenericMedicineActorBloc
    extends Bloc<GenericMedicineActorEvent, GenericMedicineActorState> {
  final IGenericMedicineRepository _medicineRepository;
  GenericMedicineActorBloc(this._medicineRepository) : super(_Initial()) {
    on<_DeleteMedicine>((event, emit) async {
      emit(const GenericMedicineActorState.actionInProgress());
      final failureOrDeleted = await _medicineRepository.delete(event.medicine);
      emit(failureOrDeleted.fold(
          (f) => GenericMedicineActorState.deleteFailure(f),
          (_) => const GenericMedicineActorState.deleteSuccess()));
    });
    on<_FakeMedicine>((event, emit) async {
      emit(const GenericMedicineActorState.actionInProgress());
      final failureOrDeleted = await _medicineRepository.createFake();
      emit(failureOrDeleted.fold(
          (f) => GenericMedicineActorState.fakeFailure(f),
          (_) => const GenericMedicineActorState.fakeSuccess()));
    });
  }
}
