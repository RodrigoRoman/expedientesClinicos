import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr_failure.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/i_name_abbreviation_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'abbreviation_name_form_event.dart';
part 'abbreviation_name_form_state.dart';
part 'abbreviation_name_form_abstract_bloc.freezed.dart';

@injectable
class AbbreviationNameFormBloc
    extends Bloc<AbbreviationNameFormEvent, AbbreviationNameFormState> {
  final INameAbbreviationRepository _iNameAbbreviationRepository;
  final String _collectionName;
  AbbreviationNameFormBloc(
      this._iNameAbbreviationRepository, this._collectionName)
      : super(AbbreviationNameFormState.initial()) {
    on<_Initialized>((event, emit) {
      emit(event.initiaAbbreviationNameOption.fold(
          () => state.copyWith(
              abbreviation: NameAbbreviation.empty(),
              showErrorMessages: false,
              isSaving: false,
              isUpdating: false,
              saveFailureOrSuccessOption: none()),
          (initialCategory) =>
              state.copyWith(abbreviation: initialCategory, isUpdating: true)));
    });
    on<_NameChanged>((event, emit) {
      emit(state.copyWith(
          abbreviation: state.abbreviation.copyWith(name: AbbrName(event.name)),
          saveFailureOrSuccessOption: none()));
    });
    on<_AbbreviationChanged>((event, emit) {
      emit(state.copyWith(
          abbreviation:
              state.abbreviation.copyWith(abbr: AbbrName(event.abreviation)),
          saveFailureOrSuccessOption: none()));
    });
    on<_Saved>((event, emit) async {
      Either<NameAbbreviationFailure, Unit>? failureOrSuccess;
      emit(state.copyWith(isSaving: true, saveFailureOrSuccessOption: none()));
      if (state.abbreviation.failureOption.isNone()) {
        failureOrSuccess = state.isUpdating
            ? await _iNameAbbreviationRepository.update(state.abbreviation)
            : await _iNameAbbreviationRepository.create(state.abbreviation);
      }
      emit(state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess)));
      emit(state.copyWith(
          abbreviation: NameAbbreviation.empty(),
          showErrorMessages: false,
          isSaving: false,
          isUpdating: false,
          saveFailureOrSuccessOption: none()));
    });
  }
}
