
part of 'measure_unit_form_bloc.dart';

@freezed
abstract class AbbreviationNameFormState with _$AbbreviationNameFormState {
  const factory AbbreviationNameFormState(
      {required NameAbbreviation measureUnit,
      required bool showErrorMessages,
      required bool isUpdating,
      required bool isSaving,
      required Option<Either<NameAbbreviationFailure, Unit>>
          saveFailureOrSuccessOption}) = _AbbreviationNameFormState;

  factory AbbreviationNameFormState.initial() => AbbreviationNameFormState(
      measureUnit: NameAbbreviation.empty(),
      showErrorMessages: false,
      isUpdating: false,
      isSaving: false,
      saveFailureOrSuccessOption: none());
}
