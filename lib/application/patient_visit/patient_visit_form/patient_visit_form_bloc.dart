import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/patient_visit/i_patient_visit_repository.dart';
import 'package:expedientes_clinicos/domain/patient_visit/patient_visit.dart';
import 'package:expedientes_clinicos/domain/patient_visit/patient_visit_failures.dart';
import 'package:expedientes_clinicos/domain/prescription/prescription.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'patient_visit_form_event.dart';
part 'patient_visit_form_state.dart';
part 'patient_visit_form_bloc.freezed.dart';

@injectable
class PatientVisitFormBloc
    extends Bloc<PatientVisitFormEvent, PatientVisitFormState> {
  final IPatientVisitRepository _iPatientVisitRepository;
  PatientVisitFormBloc(this._iPatientVisitRepository)
      : super(PatientVisitFormState.initial()) {
    on<_Initialized>((event, emit) {
      emit(event.patientVisit.fold(
          () => state.copyWith(
              patientVisit: PatientVisit.empty(),
              showErrorMessages: false,
              isSaving: false,
              isUpdating: false,
              saveFailureOrSuccessOption: none()),
          (initialPatientVisit) => state.copyWith(
              patientVisit: initialPatientVisit, isUpdating: true)));
    });
    on<_TreatmentChanged>((event, emit) => emit(state.copyWith(
        patientVisit: state.patientVisit
            .copyWith(treatment: List3(KtList.from(event.treatment))),
        saveFailureOrSuccessOption: none())));
    on<_Saved>((event, emit) async {
      Either<PatientVisitFailures, Unit>? failureOrSuccess;
      emit(state.copyWith(isSaving: true, saveFailureOrSuccessOption: none()));
      if (state.patientVisit.failureOption.isNone()) {
        failureOrSuccess = state.isUpdating
            ? await _iPatientVisitRepository.update(state.patientVisit)
            : await _iPatientVisitRepository.create(state.patientVisit);
      }
      emit(state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess)));
      emit(state.copyWith(
          patientVisit: PatientVisit.empty(),
          showErrorMessages: false,
          isSaving: false,
          isUpdating: false,
          saveFailureOrSuccessOption: none()));
    });
  }
}
