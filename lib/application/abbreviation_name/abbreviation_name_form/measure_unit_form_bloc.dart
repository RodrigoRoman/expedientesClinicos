import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr_failure.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:expedientes_clinicos/domain/medicine/i_measure_unit_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'abbreviation_name_form_event.dart';
part 'abbreviation_name_state.dart';
part 'measure_unit_form_bloc.freezed.dart';

@injectable
class MeasureUnitFormBloc
    extends Bloc<AbbreviationNameFormEvent, AbbreviationNameFormState> {
  final IMeasureUnitRepository _measureUnitRepository;
  MeasureUnitFormBloc(this._measureUnitRepository)
      : super(AbbreviationNameFormState.initial()) {
    on<_Initialized>((event, emit) {
      emit(event.initialMeasureUnitOption.fold(
          () => state.copyWith(
              measureUnit: NameAbbreviation.empty(),
              showErrorMessages: false,
              isSaving: false,
              isUpdating: false,
              saveFailureOrSuccessOption: none()),
          (initialCategory) =>
              state.copyWith(measureUnit: initialCategory, isUpdating: true)));
    });
    on<_NameChanged>((event, emit) {
      emit(state.copyWith(
          measureUnit: state.measureUnit.copyWith(name: AbbrName(event.name)),
          saveFailureOrSuccessOption: none()));
    });
    on<_AbbreviationChanged>((event, emit) {
      emit(state.copyWith(
          measureUnit:
              state.measureUnit.copyWith(abr: AbbrName(event.abreviation)),
          saveFailureOrSuccessOption: none()));
    });
    on<_Saved>((event, emit) async {
      Either<NameAbbreviationFailure, Unit>? failureOrSuccess;
      emit(state.copyWith(isSaving: true, saveFailureOrSuccessOption: none()));
      if (state.measureUnit.failureOption.isNone()) {
        failureOrSuccess = state.isUpdating
            ? await _measureUnitRepository.update(state.measureUnit)
            : await _measureUnitRepository.create(state.measureUnit);
      }
      emit(state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess)));
      emit(state.copyWith(
          measureUnit: NameAbbreviation.empty(),
          showErrorMessages: false,
          isSaving: false,
          isUpdating: false,
          saveFailureOrSuccessOption: none()));
    });
  }
}
