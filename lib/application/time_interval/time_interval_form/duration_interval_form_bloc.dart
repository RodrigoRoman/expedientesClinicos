import 'package:expedientes_clinicos/application/time_interval/time_interval_form/time_interval_form_bloc.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/i_time_interval_repository.dart';
import 'package:expedientes_clinicos/infraestructure/time_interval/time_interval_db_collection_name.dart';
import 'package:injectable/injectable.dart';

@injectable
class DurationIntervalFormBloc extends TimeIntervalFormBloc {
  final ITimeIntervalRepository _iDurationIntervalRepository;
  DurationIntervalFormBloc(this._iDurationIntervalRepository)
      : super(_iDurationIntervalRepository,
            FirebaseCollectionsTimeInterval.medicineDurationInterval);
}
