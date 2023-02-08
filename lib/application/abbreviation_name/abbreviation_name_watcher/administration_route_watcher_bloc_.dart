import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_watcher/abbreviation_name_watcher_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/name_abbr_failure.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/i_name_abbreviation_repository.dart';
import 'package:expedientes_clinicos/domain/medicine/i_administration_route_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@injectable
class AdministrationRouteWatcherBloc extends AbbreviationNameWatcherBloc {
  final IAdministrationRouteRepository _iAdministrationRouteRepository;
  AdministrationRouteWatcherBloc(this._iAdministrationRouteRepository)
      : super(_iAdministrationRouteRepository);
}
