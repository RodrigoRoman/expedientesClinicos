import 'package:bloc/bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_actor/abbreviation_name_actor_bloc.dart';
import 'package:expedientes_clinicos/application/abbreviation_name/abbreviation_name_actor/measure_unit_actor_bloc.dart';
import 'package:expedientes_clinicos/domain/core/name_abbreviation/i_name_abbreviation_repository.dart';
import 'package:expedientes_clinicos/domain/medicine/i_administration_route_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class AdministrationRouteActorBloc extends AbbreviationNameActorBloc {
  final IAdministrationRouteRepository _iAdministrationRouteRepository;
  AdministrationRouteActorBloc(this._iAdministrationRouteRepository)
      : super(_iAdministrationRouteRepository);
}
