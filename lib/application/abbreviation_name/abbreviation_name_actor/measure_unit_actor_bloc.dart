import 'package:bloc/bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_actor/abbreviation_name_actor_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr_failure.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/i_name_abbreviation_repository.dart';
import 'package:expedientes_clinicos/domain/medicine/i_measure_unit_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class MeasureUnitActorBloc extends AbbreviationNameActorBloc {
  final IMeasureUnitRepository _measureUnitRepository;
  MeasureUnitActorBloc(this._measureUnitRepository)
      : super(_measureUnitRepository);
}
