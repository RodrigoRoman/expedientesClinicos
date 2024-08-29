// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dose.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Dose {
  UniqueId get id => throw _privateConstructorUsedError;
  DayHoursDose get dayHoursDose => throw _privateConstructorUsedError;
  WeekDaysDose get weekDays => throw _privateConstructorUsedError;
  TimeInterval get duration => throw _privateConstructorUsedError;
  NonNegInt get counter => throw _privateConstructorUsedError;
  FullName get label => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoseCopyWith<Dose> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoseCopyWith<$Res> {
  factory $DoseCopyWith(Dose value, $Res Function(Dose) then) =
      _$DoseCopyWithImpl<$Res, Dose>;
  @useResult
  $Res call(
      {UniqueId id,
      DayHoursDose dayHoursDose,
      WeekDaysDose weekDays,
      TimeInterval duration,
      NonNegInt counter,
      FullName label});

  $DayHoursDoseCopyWith<$Res> get dayHoursDose;
  $WeekDaysDoseCopyWith<$Res> get weekDays;
  $TimeIntervalCopyWith<$Res> get duration;
}

/// @nodoc
class _$DoseCopyWithImpl<$Res, $Val extends Dose>
    implements $DoseCopyWith<$Res> {
  _$DoseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dayHoursDose = null,
    Object? weekDays = null,
    Object? duration = null,
    Object? counter = null,
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      dayHoursDose: null == dayHoursDose
          ? _value.dayHoursDose
          : dayHoursDose // ignore: cast_nullable_to_non_nullable
              as DayHoursDose,
      weekDays: null == weekDays
          ? _value.weekDays
          : weekDays // ignore: cast_nullable_to_non_nullable
              as WeekDaysDose,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as TimeInterval,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as NonNegInt,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as FullName,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DayHoursDoseCopyWith<$Res> get dayHoursDose {
    return $DayHoursDoseCopyWith<$Res>(_value.dayHoursDose, (value) {
      return _then(_value.copyWith(dayHoursDose: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeekDaysDoseCopyWith<$Res> get weekDays {
    return $WeekDaysDoseCopyWith<$Res>(_value.weekDays, (value) {
      return _then(_value.copyWith(weekDays: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeIntervalCopyWith<$Res> get duration {
    return $TimeIntervalCopyWith<$Res>(_value.duration, (value) {
      return _then(_value.copyWith(duration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DoseImplCopyWith<$Res> implements $DoseCopyWith<$Res> {
  factory _$$DoseImplCopyWith(
          _$DoseImpl value, $Res Function(_$DoseImpl) then) =
      __$$DoseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      DayHoursDose dayHoursDose,
      WeekDaysDose weekDays,
      TimeInterval duration,
      NonNegInt counter,
      FullName label});

  @override
  $DayHoursDoseCopyWith<$Res> get dayHoursDose;
  @override
  $WeekDaysDoseCopyWith<$Res> get weekDays;
  @override
  $TimeIntervalCopyWith<$Res> get duration;
}

/// @nodoc
class __$$DoseImplCopyWithImpl<$Res>
    extends _$DoseCopyWithImpl<$Res, _$DoseImpl>
    implements _$$DoseImplCopyWith<$Res> {
  __$$DoseImplCopyWithImpl(_$DoseImpl _value, $Res Function(_$DoseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dayHoursDose = null,
    Object? weekDays = null,
    Object? duration = null,
    Object? counter = null,
    Object? label = null,
  }) {
    return _then(_$DoseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      dayHoursDose: null == dayHoursDose
          ? _value.dayHoursDose
          : dayHoursDose // ignore: cast_nullable_to_non_nullable
              as DayHoursDose,
      weekDays: null == weekDays
          ? _value.weekDays
          : weekDays // ignore: cast_nullable_to_non_nullable
              as WeekDaysDose,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as TimeInterval,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as NonNegInt,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as FullName,
    ));
  }
}

/// @nodoc

class _$DoseImpl extends _Dose {
  const _$DoseImpl(
      {required this.id,
      required this.dayHoursDose,
      required this.weekDays,
      required this.duration,
      required this.counter,
      required this.label})
      : super._();

  @override
  final UniqueId id;
  @override
  final DayHoursDose dayHoursDose;
  @override
  final WeekDaysDose weekDays;
  @override
  final TimeInterval duration;
  @override
  final NonNegInt counter;
  @override
  final FullName label;

  @override
  String toString() {
    return 'Dose(id: $id, dayHoursDose: $dayHoursDose, weekDays: $weekDays, duration: $duration, counter: $counter, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dayHoursDose, dayHoursDose) ||
                other.dayHoursDose == dayHoursDose) &&
            (identical(other.weekDays, weekDays) ||
                other.weekDays == weekDays) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.counter, counter) || other.counter == counter) &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, dayHoursDose, weekDays, duration, counter, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoseImplCopyWith<_$DoseImpl> get copyWith =>
      __$$DoseImplCopyWithImpl<_$DoseImpl>(this, _$identity);
}

abstract class _Dose extends Dose {
  const factory _Dose(
      {required final UniqueId id,
      required final DayHoursDose dayHoursDose,
      required final WeekDaysDose weekDays,
      required final TimeInterval duration,
      required final NonNegInt counter,
      required final FullName label}) = _$DoseImpl;
  const _Dose._() : super._();

  @override
  UniqueId get id;
  @override
  DayHoursDose get dayHoursDose;
  @override
  WeekDaysDose get weekDays;
  @override
  TimeInterval get duration;
  @override
  NonNegInt get counter;
  @override
  FullName get label;
  @override
  @JsonKey(ignore: true)
  _$$DoseImplCopyWith<_$DoseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
