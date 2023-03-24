import 'package:bloc/bloc.dart';
import 'package:expedientes_clinicos/domain/medicine/branded_medicine/branded_medicine.dart';
import 'package:expedientes_clinicos/domain/medicine/branded_medicine/branded_medicine_failures.dart';
import 'package:expedientes_clinicos/domain/medicine/branded_medicine/i_branded_medicine_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'branded_medicine_actor_event.dart';
part 'branded_medicine_actor_state.dart';
part 'branded_medicine_actor_bloc.freezed.dart';

@injectable
class BrandedMedicineActorBloc
    extends Bloc<BrandedMedicineActorEvent, BrandedMedicineActorState> {
  final IBrandedMedicineRepository _medicineRepository;
  BrandedMedicineActorBloc(this._medicineRepository) : super(_Initial()) {
    on<_DeleteMedicine>((event, emit) async {
      emit(const BrandedMedicineActorState.actionInProgress());
      final failureOrDeleted = await _medicineRepository.delete(event.medicine);
      emit(failureOrDeleted.fold(
          (f) => BrandedMedicineActorState.deleteFailure(f),
          (_) => const BrandedMedicineActorState.deleteSuccess()));
    });
    on<_FakeMedicine>((event, emit) async {
      emit(const BrandedMedicineActorState.actionInProgress());
      final failureOrDeleted = await _medicineRepository.createFake();
      emit(failureOrDeleted.fold(
          (f) => BrandedMedicineActorState.fakeFailure(f),
          (_) => const BrandedMedicineActorState.fakeSuccess()));
    });
  }
}
