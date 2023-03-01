import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expedientes_clinicos/domain/core/time_interval/time_interval.dart';
import 'package:expedientes_clinicos/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_interval_dtos.freezed.dart';
part 'time_interval_dtos.g.dart';

@freezed
abstract class TimeIntervalDto implements _$TimeIntervalDto {
  const TimeIntervalDto._();

  const factory TimeIntervalDto(
      {required String id,
      required String label,
      required Duration timeDuration,
      required int counter}) = _TimeIntervalDto;

  factory TimeIntervalDto.fromDomain(TimeInterval timeInterval) {
    return TimeIntervalDto(
        id: timeInterval.id.getOrCrash(),
        label: timeInterval.label.getOrCrash(),
        timeDuration: timeInterval.timeDuration.getOrCrash(),
        counter: timeInterval.counter.getOrCrash());
  }

  TimeInterval toDomain() {
    return TimeInterval(
        id: UniqueId.fromUniqueString(id),
        label: FullName(label),
        timeDuration: TimeDuration(timeDuration),
        counter: NonNegInt(counter));
  }

  factory TimeIntervalDto.fromJson(Map<String, dynamic> json) =>
      _$TimeIntervalDtoFromJson(json);

  factory TimeIntervalDto.fromFirestore(DocumentSnapshot doc) {
    return TimeIntervalDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
