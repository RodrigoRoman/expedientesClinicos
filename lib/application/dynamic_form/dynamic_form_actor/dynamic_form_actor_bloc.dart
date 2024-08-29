import 'package:expedientes_clinicos/application/dynamic_form/dynamic_form_form/dynamic_form_form_bloc.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/dynamic_form_failures.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/form_section/form_section.dart';
import 'package:expedientes_clinicos/domain/dynamic_forms/i_dynamic_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:bloc/bloc.dart';

part 'dynamic_form_actor_event.dart';
part 'dynamic_form_actor_state.dart';
part 'dynamic_form_actor_bloc.freezed.dart';

@injectable
class DynamicFormActor
    extends Bloc<DynamicFormActorEvent, DynamicFormActorState> {
  IDynamicFormRepository _iDynamicFormRepository;
  DynamicFormActor(this._iDynamicFormRepository)
      : super(DynamicFormActorState.initial());
}
