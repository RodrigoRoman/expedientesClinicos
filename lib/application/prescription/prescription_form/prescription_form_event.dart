part of 'prescription_form_bloc.dart';

@freezed
class PrescriptionFormEvent with _$PrescriptionFormEvent {
  const factory PrescriptionFormEvent.initialized(
      Option<Prescription> prescription) = _Initialized;
  const factory PrescriptionFormEvent.onMedicineChanged(Medicine medicine) =
      _MedicineChanged;
  const factory PrescriptionFormEvent.onDoseChanged(int dose) = _DoseChanged;
  const factory PrescriptionFormEvent.onFrequencyChanged(Duration frequency) =
      _FrequencyChanged;
  const factory PrescriptionFormEvent.onDurationChanged(Duration duration) =
      _DurationChanged;
  const factory PrescriptionFormEvent.onIndicationsChanged(
      List<Indication> listIndications) = _IndicationsChanged;
  const factory PrescriptionFormEvent.saved() = _Saved;
}
