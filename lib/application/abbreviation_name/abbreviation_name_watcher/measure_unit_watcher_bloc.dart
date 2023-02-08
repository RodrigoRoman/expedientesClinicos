import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr_failure.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/i_name_abbreviation_repository.dart';
import 'package:expedientes_clinicos/domain/medicine/i_measure_unit_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'abbreviation_name_watcher_event.dart';
part 'abbreviation_name_watcher_state.dart';
part 'measure_unit_watcher_bloc.freezed.dart';

@injectable
class MeasureUnitWatcherBloc extends AbbreviationNameWatcherBloc {
  final IMeasureUnitRepository _iMeasureUnitRepository;
  MeasureUnitWatcherBloc(this._iMeasureUnitRepository)
      : super(_iMeasureUnitRepository);
}
