import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'prescription_watcher_event.dart';
part 'prescription_watcher_state.dart';
part 'prescription_watcher_bloc.freezed.dart';

class PrescriptionWatcherBloc extends Bloc<PrescriptionWatcherEvent, PrescriptionWatcherState> {
  PrescriptionWatcherBloc() : super(_Initial()) {
    on<PrescriptionWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
