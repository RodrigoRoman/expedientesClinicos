part of 'abbreviation_name_form_abstract_bloc.dart';

@freezed
class AbbreviationNameFormEvent with _$AbbreviationNameFormEvent {
  const factory AbbreviationNameFormEvent.initialized(
      Option<NameAbbreviation> initiaAbbreviationNameOption) = _Initialized;
  const factory AbbreviationNameFormEvent.nameChanged(String name) =
      _NameChanged;
  const factory AbbreviationNameFormEvent.abreviationChanged(
      String abreviation) = _AbbreviationChanged;
  const factory AbbreviationNameFormEvent.saved() = _Saved;
}
