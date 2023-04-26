import 'package:expedientes_clinicos/application/time_interval/time_interval_actor/time_interval_actor_bloc.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/i_time_interval_repository.dart';
import 'package:expedientes_clinicos/infraestructure/time_interval/time_interval_db_collection_name.dart';
import 'package:injectable/injectable.dart';

@injectable
class DurationIntervalActorBloc extends TimeIntervalActorBloc {
  final ITimeIntervalRepository _iDurationIntervalRepository;
  DurationIntervalActorBloc(
      @Named(FirebaseCollectionsTimeInterval.medicineDurationInterval)
          this._iDurationIntervalRepository)
      : super(_iDurationIntervalRepository);
}
