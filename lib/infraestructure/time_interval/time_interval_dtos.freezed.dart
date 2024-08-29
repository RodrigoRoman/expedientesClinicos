// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_interval_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimeIntervalDto _$TimeIntervalDtoFromJson(Map<String, dynamic> json) {
  return _TimeIntervalDto.fromJson(json);
}

/// @nodoc
mixin _$TimeIntervalDto {
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  Duration get timeDuration => throw _privateConstructorUsedError;
  int get counter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeIntervalDtoCopyWith<TimeIntervalDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeIntervalDtoCopyWith<$Res> {
  factory $TimeIntervalDtoCopyWith(
          TimeIntervalDto value, $Res Function(TimeIntervalDto) then) =
      _$TimeIntervalDtoCopyWithImpl<$Res, TimeIntervalDto>;
  @useResult
  $Res call({String id, String label, Duration timeDuration, int counter});
}

/// @nodoc
class _$TimeIntervalDtoCopyWithImpl<$Res, $Val extends TimeIntervalDto>
    implements $TimeIntervalDtoCopyWith<$Res> {
  _$TimeIntervalDtoCopyWithImpl(this._value, this._then);

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
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      timeDuration: null == timeDuration
          ? _value.timeDuration
          : timeDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeIntervalDtoImplCopyWith<$Res>
    implements $TimeIntervalDtoCopyWith<$Res> {
  factory _$$TimeIntervalDtoImplCopyWith(_$TimeIntervalDtoImpl value,
          $Res Function(_$TimeIntervalDtoImpl) then) =
      __$$TimeIntervalDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String label, Duration timeDuration, int counter});
}

/// @nodoc
class __$$TimeIntervalDtoImplCopyWithImpl<$Res>
    extends _$TimeIntervalDtoCopyWithImpl<$Res, _$TimeIntervalDtoImpl>
    implements _$$TimeIntervalDtoImplCopyWith<$Res> {
  __$$TimeIntervalDtoImplCopyWithImpl(
      _$TimeIntervalDtoImpl _value, $Res Function(_$TimeIntervalDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? timeDuration = null,
    Object? counter = null,
  }) {
    return _then(_$TimeIntervalDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      timeDuration: null == timeDuration
          ? _value.timeDuration
          : timeDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeIntervalDtoImpl extends _TimeIntervalDto {
  const _$TimeIntervalDtoImpl(
      {required this.id,
      required this.label,
      required this.timeDuration,
      required this.counter})
      : super._();

  factory _$TimeIntervalDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeIntervalDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String label;
  @override
  final Duration timeDuration;
  @override
  final int counter;

  @override
  String toString() {
    return 'TimeIntervalDto(id: $id, label: $label, timeDuration: $timeDuration, counter: $counter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeIntervalDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.timeDuration, timeDuration) ||
                other.timeDuration == timeDuration) &&
            (identical(other.counter, counter) || other.counter == counter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, label, timeDuration, counter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeIntervalDtoImplCopyWith<_$TimeIntervalDtoImpl> get copyWith =>
      __$$TimeIntervalDtoImplCopyWithImpl<_$TimeIntervalDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeIntervalDtoImplToJson(
      this,
    );
  }
}

abstract class _TimeIntervalDto extends TimeIntervalDto {
  const factory _TimeIntervalDto(
      {required final String id,
      required final String label,
      required final Duration timeDuration,
      required final int counter}) = _$TimeIntervalDtoImpl;
  const _TimeIntervalDto._() : super._();

  factory _TimeIntervalDto.fromJson(Map<String, dynamic> json) =
      _$TimeIntervalDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get label;
  @override
  Duration get timeDuration;
  @override
  int get counter;
  @override
  @JsonKey(ignore: true)
  _$$TimeIntervalDtoImplCopyWith<_$TimeIntervalDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
