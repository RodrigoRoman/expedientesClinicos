import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'medicine_watcher_event.dart';
part 'medicine_watcher_state.dart';
part 'medicine_watcher_bloc.freezed.dart';

class MedicineWatcherBloc extends Bloc<MedicineWatcherEvent, MedicineWatcherState> {
  MedicineWatcherBloc() : super(_Initial()) {
    on<MedicineWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
