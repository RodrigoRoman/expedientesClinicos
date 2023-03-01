// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_interval.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimeInterval {
  UniqueId get id => throw _privateConstructorUsedError;
  FullName get label => throw _privateConstructorUsedError;
  TimeDuration get timeDuration => throw _privateConstructorUsedError;
  NonNegInt get counter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimeIntervalCopyWith<TimeInterval> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeIntervalCopyWith<$Res> {
  factory $TimeIntervalCopyWith(
          TimeInterval value, $Res Function(TimeInterval) then) =
      _$TimeIntervalCopyWithImpl<$Res, TimeInterval>;
  @useResult
  $Res call(
      {UniqueId id,
      FullName label,
      TimeDuration timeDuration,
      NonNegInt counter});
}

/// @nodoc
class _$TimeIntervalCopyWithImpl<$Res, $Val extends TimeInterval>
    implements $TimeIntervalCopyWith<$Res> {
  _$TimeIntervalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? timeDuration = null,
    Object? counter = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as FullName,
      timeDuration: null == timeDuration
          ? _value.timeDuration
          : timeDuration // ignore: cast_nullable_to_non_nullable
              as TimeDuration,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as NonNegInt,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimeIntervalCopyWith<$Res>
    implements $TimeIntervalCopyWith<$Res> {
  factory _$$_TimeIntervalCopyWith(
          _$_TimeInterval value, $Res Function(_$_TimeInterval) then) =
      __$$_TimeIntervalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      FullName label,
      TimeDuration timeDuration,
      NonNegInt counter});
}

/// @nodoc
class __$$_TimeIntervalCopyWithImpl<$Res>
    extends _$TimeIntervalCopyWithImpl<$Res, _$_TimeInterval>
    implements _$$_TimeIntervalCopyWith<$Res> {
  __$$_TimeIntervalCopyWithImpl(
      _$_TimeInterval _value, $Res Function(_$_TimeInterval) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? timeDuration = null,
    Object? counter = null,
  }) {
    return _then(_$_TimeInterval(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as FullName,
      timeDuration: null == timeDuration
          ? _value.timeDuration
          : timeDuration // ignore: cast_nullable_to_non_nullable
              as TimeDuration,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as NonNegInt,
    ));
  }
}

/// @nodoc

class _$_TimeInterval extends _TimeInterval {
  const _$_TimeInterval(
      {required this.id,
      required this.label,
      required this.timeDuration,
      required this.counter})
      : super._();

  @override
  final UniqueId id;
  @override
  final FullName label;
  @override
  final TimeDuration timeDuration;
  @override
  final NonNegInt counter;

  @override
  String toString() {
    return 'TimeInterval(id: $id, label: $label, timeDuration: $timeDuration, counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeIntervalCopyWith<_$_TimeInterval> get copyWith =>
      __$$_TimeIntervalCopyWithImpl<_$_TimeInterval>(this, _$identity);
}

abstract class _TimeInterval extends TimeInterval {
  const factory _TimeInterval(
      {required final UniqueId id,
      required final FullName label,
      required final TimeDuration timeDuration,
      required final NonNegInt counter}) = _$_TimeInterval;
  const _TimeInterval._() : super._();

  @override
  UniqueId get id;
  @override
  FullName get label;
  @override
  TimeDuration get timeDuration;
  @override
  NonNegInt get counter;
  @override
  @JsonKey(ignore: true)
  _$$_TimeIntervalCopyWith<_$_TimeInterval> get copyWith =>
      throw _privateConstructorUsedError;
}
