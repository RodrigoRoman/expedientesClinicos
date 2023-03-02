import 'package:expedientes_clinicos/application/time_interval/time_interval_form/time_interval_form_bloc.dart';
import 'package:expedientes_clinicos/domain/prescription/duration_interval/i_duration_interval.dart';
import 'package:injectable/injectable.dart';

@injectable
class DurationIntervalFormBloc extends TimeIntervalFormBloc {
  final IDurationIntervalRepository _iDurationIntervalRepository;
  DurationIntervalFormBloc(this._iDurationIntervalRepository)
      : super(_iDurationIntervalRepository);
}
