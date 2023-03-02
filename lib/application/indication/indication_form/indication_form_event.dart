part of 'indication_form_bloc.dart';

@freezed
class IndicationFormEvent with _$IndicationFormEvent {
  const factory IndicationFormEvent.initialized(
      Option<Indication> intitialIndication) = _Initialized;
  const factory IndicationFormEvent.onIndicationNameChanged(
      String indicationName) = _IndicationNameChanged;
  const factory IndicationFormEvent.onCategoryChanged(
      Category indicationCategory) = _IndicationCategoryChanged;
  const factory IndicationFormEvent.saved() = _Saved;
}
