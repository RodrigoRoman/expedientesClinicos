import 'package:expedientes_clinicos/application/time_interval/time_interval_form/time_interval_form_bloc.dart';
import 'package:expedientes_clinicos/domain/prescription/frequency_interval/i_frequency_interval_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FrequencyIntervalFormBloc extends TimeIntervalFormBloc {
  final IFrequencyIntervalRepository _iFrequencyIntervalRepository;
  FrequencyIntervalFormBloc(this._iFrequencyIntervalRepository)
      : super(_iFrequencyIntervalRepository);
}
