import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/domain/core/categories/category.dart';
import 'package:expedientes_clinicos/domain/core/indication/i_indication_repository.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication.dart';
import 'package:expedientes_clinicos/domain/core/indication/indication_failure.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'indication_form_event.dart';
part 'indication_form_state.dart';
part 'indication_form_bloc.freezed.dart';

@injectable
class IndicationFormBloc
    extends Bloc<IndicationFormEvent, IndicationFormState> {
  final IIndicationRepository _iIndicationRepository;
  final String _collectionName;
  IndicationFormBloc(this._iIndicationRepository, this._collectionName)
      : super(IndicationFormState.initial()) {
    on<_Initialized>((event, emit) {
      emit(event.intitialIndication.fold(
          () => state.copyWith(
              indication: Indication.empty(),
              showErrorMessages: false,
              isSaving: false,
              isUpdating: false,
              saveFailureOrSuccessOption: none()),
          (intitialIndication) => state.copyWith(
              indication: intitialIndication, isUpdating: true)));
    });
    on<_IndicationNameChanged>((event, emit) {
      emit(state.copyWith(
          indication: state.indication
              .copyWith(indicationName: FullName(event.indicationName)),
          saveFailureOrSuccessOption: none()));
    });
    on<_IndicationCategoryChanged>((event, emit) {
      emit(state.copyWith(
          indication: state.indication
              .copyWith(indicationCategory: event.indicationCategory),
          saveFailureOrSuccessOption: none()));
    });
    on<_Saved>((event, emit) async {
      Either<IndicationFailure, Unit>? failureOrSuccess;
      emit(state.copyWith(isSaving: true, saveFailureOrSuccessOption: none()));
      if (state.indication.failureOption.isNone()) {
        failureOrSuccess = state.isUpdating
            ? await _iIndicationRepository.update(state.indication)
            : await _iIndicationRepository.create(state.indication);
      }
      emit(state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess)));
      emit(state.copyWith(
          indication: Indication.empty(),
          showErrorMessages: false,
          isSaving: false,
          isUpdating: false,
          saveFailureOrSuccessOption: none()));
    });
  }
}
