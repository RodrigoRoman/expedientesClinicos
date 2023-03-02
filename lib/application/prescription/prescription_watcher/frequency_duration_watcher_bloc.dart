import 'package:expedientes_clinicos/application/time_interval/time_interval_watcher/time_interval_watcher_bloc.dart';
import 'package:expedientes_clinicos/domain/prescription/frequency_interval/i_frequency_interval_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FrequencyIntervalWatcherBloc extends TimeIntervalWatcherBloc {
  final IFrequencyIntervalRepository _iFrequencyIntervalRepository;
  FrequencyIntervalWatcherBloc(this._iFrequencyIntervalRepository)
      : super(_iFrequencyIntervalRepository);
}
