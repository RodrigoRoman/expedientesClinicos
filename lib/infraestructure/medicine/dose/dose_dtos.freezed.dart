// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dose_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DoseDto _$DoseDtoFromJson(Map<String, dynamic> json) {
  return _DoseDto.fromJson(json);
}

/// @nodoc
mixin _$DoseDto {
  String get id => throw _privateConstructorUsedError;
  TimeIntervalDto get frequency => throw _privateConstructorUsedError;
  TimeIntervalDto get duration => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  int get counter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoseDtoCopyWith<DoseDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoseDtoCopyWith<$Res> {
  factory $DoseDtoCopyWith(DoseDto value, $Res Function(DoseDto) then) =
      _$DoseDtoCopyWithImpl<$Res, DoseDto>;
  @useResult
  $Res call(
      {String id,
      TimeIntervalDto frequency,
      TimeIntervalDto duration,
      int amount,
      int counter});

  $TimeIntervalDtoCopyWith<$Res> get frequency;
  $TimeIntervalDtoCopyWith<$Res> get duration;
}

/// @nodoc
class _$DoseDtoCopyWithImpl<$Res, $Val extends DoseDto>
    implements $DoseDtoCopyWith<$Res> {
  _$DoseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? frequency = null,
    Object? duration = null,
    Object? amount = null,
    Object? counter = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as TimeIntervalDto,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as TimeIntervalDto,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeIntervalDtoCopyWith<$Res> get frequency {
    return $TimeIntervalDtoCopyWith<$Res>(_value.frequency, (value) {
      return _then(_value.copyWith(frequency: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeIntervalDtoCopyWith<$Res> get duration {
    return $TimeIntervalDtoCopyWith<$Res>(_value.duration, (value) {
      return _then(_value.copyWith(duration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DoseDtoCopyWith<$Res> implements $DoseDtoCopyWith<$Res> {
  factory _$$_DoseDtoCopyWith(
          _$_DoseDto value, $Res Function(_$_DoseDto) then) =
      __$$_DoseDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      TimeIntervalDto frequency,
      TimeIntervalDto duration,
      int amount,
      int counter});

  @override
  $TimeIntervalDtoCopyWith<$Res> get frequency;
  @override
  $TimeIntervalDtoCopyWith<$Res> get duration;
}

/// @nodoc
class __$$_DoseDtoCopyWithImpl<$Res>
    extends _$DoseDtoCopyWithImpl<$Res, _$_DoseDto>
    implements _$$_DoseDtoCopyWith<$Res> {
  __$$_DoseDtoCopyWithImpl(_$_DoseDto _value, $Res Function(_$_DoseDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? frequency = null,
    Object? duration = null,
    Object? amount = null,
    Object? counter = null,
  }) {
    return _then(_$_DoseDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as TimeIntervalDto,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as TimeIntervalDto,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DoseDto extends _DoseDto {
  const _$_DoseDto(
      {required this.id,
      required this.frequency,
      required this.duration,
      required this.amount,
      required this.counter})
      : super._();

  factory _$_DoseDto.fromJson(Map<String, dynamic> json) =>
      _$$_DoseDtoFromJson(json);

  @override
  final String id;
  @override
  final TimeIntervalDto frequency;
  @override
  final TimeIntervalDto duration;
  @override
  final int amount;
  @override
  final int counter;

  @override
  String toString() {
    return 'DoseDto(id: $id, frequency: $frequency, duration: $duration, amount: $amount, counter: $counter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoseDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.counter, counter) || other.counter == counter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, frequency, duration, amount, counter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DoseDtoCopyWith<_$_DoseDto> get copyWith =>
      __$$_DoseDtoCopyWithImpl<_$_DoseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DoseDtoToJson(
      this,
    );
  }
}

abstract class _DoseDto extends DoseDto {
  const factory _DoseDto(
      {required final String id,
      required final TimeIntervalDto frequency,
      required final TimeIntervalDto duration,
      required final int amount,
      required final int counter}) = _$_DoseDto;
  const _DoseDto._() : super._();

  factory _DoseDto.fromJson(Map<String, dynamic> json) = _$_DoseDto.fromJson;

  @override
  String get id;
  @override
  TimeIntervalDto get frequency;
  @override
  TimeIntervalDto get duration;
  @override
  int get amount;
  @override
  int get counter;
  @override
  @JsonKey(ignore: true)
  _$$_DoseDtoCopyWith<_$_DoseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
