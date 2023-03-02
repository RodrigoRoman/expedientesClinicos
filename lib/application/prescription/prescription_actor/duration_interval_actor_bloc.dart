import 'package:expedientes_clinicos/application/time_interval/time_interval_actor/time_interval_actor_bloc.dart';
import 'package:expedientes_clinicos/application/time_interval/time_interval_form/time_interval_form_bloc.dart';
import 'package:expedientes_clinicos/domain/prescription/duration_interval/i_duration_interval.dart';
import 'package:injectable/injectable.dart';

@injectable
class DurationIntervalActorBloc extends TimeIntervalActorBloc {
  final IDurationIntervalRepository _iDurationIntervalRepository;
  DurationIntervalActorBloc(this._iDurationIntervalRepository)
      : super(_iDurationIntervalRepository);
}
