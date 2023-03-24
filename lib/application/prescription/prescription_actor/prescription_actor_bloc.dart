import 'package:bloc/bloc.dart';
import 'package:expedientes_clinicos/domain/prescription/i_prescription_repository.dart';
import 'package:expedientes_clinicos/domain/prescription/prescription.dart';
import 'package:expedientes_clinicos/domain/prescription/prescription_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'prescription_actor_event.dart';
part 'prescription_actor_state.dart';
part 'prescription_actor_bloc.freezed.dart';

@injectable
class PrescriptionActorBloc
    extends Bloc<PrescriptionActorEvent, PrescriptionActorState> {
  final IPrescriptionRepository _iPrescriptionRepository;
  PrescriptionActorBloc(this._iPrescriptionRepository)
      : super(const PrescriptionActorState.initial()) {
    on<_Deleted>((event, emit) async {
      emit(const PrescriptionActorState.actionInProgress());
      final failureOrSuccessDeletion =
          await _iPrescriptionRepository.delete(event.prescription);
      failureOrSuccessDeletion.fold(
          (f) => PrescriptionActorState.deleteFailure(f),
          (_) => const PrescriptionActorState.deleteSuccess());
      _iPrescriptionRepository.delete(event.prescription);
    });
  }
}
