part of 'patient_visit_form_bloc.dart';

@freezed
class PatientVisitFormEvent with _$PatientVisitFormEvent {
  const factory PatientVisitFormEvent.initialized(
      Option<PatientVisit> patientVisit) = _Initialized;
  const factory PatientVisitFormEvent.onTreatmentChanged(
      List<Prescription> treatment) = _TreatmentChanged;
  const factory PatientVisitFormEvent.onDateTimeChanged(DateTime dateTime) =
      _DateTimeChanged;
  const factory PatientVisitFormEvent.onDateChanged(DateTime dateTime) =
      _DateChanged;
  const factory PatientVisitFormEvent.onTimeChanged(TimeOfDay time) =
      _TimeChanged;
  const factory PatientVisitFormEvent.onVisitTypeChanged(Category visitType) =
      _VisitTypeChanged;
  const factory PatientVisitFormEvent.saved() = _Saved;
}
