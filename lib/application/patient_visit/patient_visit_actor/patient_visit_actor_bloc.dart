import 'package:bloc/bloc.dart';
import 'package:expedientes_clinicos/domain/patient_visit/i_patient_visit_repository.dart';
import 'package:expedientes_clinicos/domain/patient_visit/patient_visit.dart';
import 'package:expedientes_clinicos/domain/patient_visit/patient_visit_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'patient_visit_actor_event.dart';
part 'patient_visit_actor_state.dart';
part 'patient_visit_actor_bloc.freezed.dart';

@injectable
class PatientVisitActorBloc
    extends Bloc<PatientVisitActorEvent, PatientVisitActorState> {
  final IPatientVisitRepository _iPatientVisitRepository;
  PatientVisitActorBloc(this._iPatientVisitRepository)
      : super(const PatientVisitActorState.initial()) {
    on<_Deleted>((event, emit) async {
      emit(const PatientVisitActorState.actionInProgress());
      final failureOrSuccessDeletion =
          await _iPatientVisitRepository.delete(event.patientVisit);
      failureOrSuccessDeletion.fold(
          (f) => PatientVisitActorState.deleteFailure(f),
          (_) => const PatientVisitActorState.deleteSuccess());
      _iPatientVisitRepository.delete(event.patientVisit);
    });
  }
}
