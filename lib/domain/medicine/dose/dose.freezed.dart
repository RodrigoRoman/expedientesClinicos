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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Dose {
  UniqueId get id => throw _privateConstructorUsedError;
  TimeInterval get frequency => throw _privateConstructorUsedError;
  TimeInterval get duration => throw _privateConstructorUsedError;
  NonNegInt get amount => throw _privateConstructorUsedError;
  NonNegInt get counter => throw _privateConstructorUsedError;

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
      TimeInterval frequency,
      TimeInterval duration,
      NonNegInt amount,
      NonNegInt counter});

  $TimeIntervalCopyWith<$Res> get frequency;
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
    Object? frequency = null,
    Object? duration = null,
    Object? amount = null,
    Object? counter = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as TimeInterval,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as TimeInterval,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as NonNegInt,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as NonNegInt,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeIntervalCopyWith<$Res> get frequency {
    return $TimeIntervalCopyWith<$Res>(_value.frequency, (value) {
      return _then(_value.copyWith(frequency: value) as $Val);
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
abstract class _$$_DoseCopyWith<$Res> implements $DoseCopyWith<$Res> {
  factory _$$_DoseCopyWith(_$_Dose value, $Res Function(_$_Dose) then) =
      __$$_DoseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      TimeInterval frequency,
      TimeInterval duration,
      NonNegInt amount,
      NonNegInt counter});

  @override
  $TimeIntervalCopyWith<$Res> get frequency;
  @override
  $TimeIntervalCopyWith<$Res> get duration;
}

/// @nodoc
class __$$_DoseCopyWithImpl<$Res> extends _$DoseCopyWithImpl<$Res, _$_Dose>
    implements _$$_DoseCopyWith<$Res> {
  __$$_DoseCopyWithImpl(_$_Dose _value, $Res Function(_$_Dose) _then)
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
    return _then(_$_Dose(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as TimeInterval,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as TimeInterval,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as NonNegInt,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as NonNegInt,
    ));
  }
}

/// @nodoc

class _$_Dose extends _Dose {
  const _$_Dose(
      {required this.id,
      required this.frequency,
      required this.duration,
      required this.amount,
      required this.counter})
      : super._();

  @override
  final UniqueId id;
  @override
  final TimeInterval frequency;
  @override
  final TimeInterval duration;
  @override
  final NonNegInt amount;
  @override
  final NonNegInt counter;

  @override
  String toString() {
    return 'Dose(id: $id, frequency: $frequency, duration: $duration, amount: $amount, counter: $counter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dose &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.counter, counter) || other.counter == counter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, frequency, duration, amount, counter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DoseCopyWith<_$_Dose> get copyWith =>
      __$$_DoseCopyWithImpl<_$_Dose>(this, _$identity);
}

abstract class _Dose extends Dose {
  const factory _Dose(
      {required final UniqueId id,
      required final TimeInterval frequency,
      required final TimeInterval duration,
      required final NonNegInt amount,
      required final NonNegInt counter}) = _$_Dose;
  const _Dose._() : super._();

  @override
  UniqueId get id;
  @override
  TimeInterval get frequency;
  @override
  TimeInterval get duration;
  @override
  NonNegInt get amount;
  @override
  NonNegInt get counter;
  @override
  @JsonKey(ignore: true)
  _$$_DoseCopyWith<_$_Dose> get copyWith => throw _privateConstructorUsedError;
}
