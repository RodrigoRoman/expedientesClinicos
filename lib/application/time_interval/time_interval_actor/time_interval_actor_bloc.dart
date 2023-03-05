import 'package:bloc/bloc.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/i_time_interval_repository.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/time_interval.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/time_interval_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'time_interval_actor_event.dart';
part 'time_interval_actor_state.dart';
part 'time_interval_actor_bloc.freezed.dart';

@injectable
class TimeIntervalActorBloc
    extends Bloc<TimeIntervalActorEvent, TimeIntervalActorState> {
  final ITimeIntervalRepository _iTimeIntervalRepository;
  final String _collectionName;
  TimeIntervalActorBloc(this._iTimeIntervalRepository, this._collectionName)
      : super(const TimeIntervalActorState.initial()) {
    on<_Deleted>((event, emit) async {
      emit(const TimeIntervalActorState.actionInProgress());
      final failureOrSuccessDeletion =
          await _iTimeIntervalRepository.delete(event.timeInterval);
      failureOrSuccessDeletion.fold(
          (f) => TimeIntervalActorState.deleteFailure(f),
          (_) => const TimeIntervalActorState.deleteSuccess());
      _iTimeIntervalRepository.delete(event.timeInterval);
    });
  }
}
