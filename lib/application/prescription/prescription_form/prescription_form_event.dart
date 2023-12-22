part of 'prescription_form_bloc.dart';

@freezed
class PrescriptionFormEvent with _$PrescriptionFormEvent {
  const factory PrescriptionFormEvent.initialized(
      Option<Prescription> prescription) = _Initialized;
  const factory PrescriptionFormEvent.onMedicineChanged(
      BrandedMedicine medicine) = _MedicineChanged;
  const factory PrescriptionFormEvent.onDoseChanged(Dose dose) = _DoseChanged;
  const factory PrescriptionFormEvent.onDoseAmountChanged(
      LabelDoubleAmount labelDoubleAmount) = _DoseAmountChanged;
  const factory PrescriptionFormEvent.onChanged(Duration frequency) =
      _FrequencyChanged;
  const factory PrescriptionFormEvent.onIndicationsChanged(
      List<Indication> listIndications) = _IndicationsChanged;
  const factory PrescriptionFormEvent.saved() = _Saved;
}
