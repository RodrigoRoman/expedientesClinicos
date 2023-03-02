import 'package:expedientes_clinicos/application/time_interval/time_interval_watcher/time_interval_watcher_bloc.dart';
import 'package:expedientes_clinicos/domain/prescription/duration_interval/i_duration_interval.dart';
import 'package:injectable/injectable.dart';

@injectable
class DurationIntervalWatcherBloc extends TimeIntervalWatcherBloc {
  final IDurationIntervalRepository _iDurationIntervalRepository;
  DurationIntervalWatcherBloc(this._iDurationIntervalRepository)
      : super(_iDurationIntervalRepository);
}
