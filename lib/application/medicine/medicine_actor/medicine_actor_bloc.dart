import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'medicine_actor_event.dart';
part 'medicine_actor_state.dart';
part 'medicine_actor_bloc.freezed.dart';

class MedicineActorBloc extends Bloc<MedicineActorEvent, MedicineActorState> {
  MedicineActorBloc() : super(_Initial()) {
    on<MedicineActorEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
