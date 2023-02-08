part of 'abbreviation_name_form_abstract_bloc.dart';

@freezed
abstract class AbbreviationNameFormState with _$AbbreviationNameFormState {
  const factory AbbreviationNameFormState(
      {required NameAbbreviation abbreviation,
      required bool showErrorMessages,
      required bool isUpdating,
      required bool isSaving,
      required Option<Either<NameAbbreviationFailure, Unit>>
          saveFailureOrSuccessOption}) = _AbbreviationNameFormState;

  factory AbbreviationNameFormState.initial() => AbbreviationNameFormState(
      abbreviation: NameAbbreviation.empty(),
      showErrorMessages: false,
      isUpdating: false,
      isSaving: false,
      saveFailureOrSuccessOption: none());
}
