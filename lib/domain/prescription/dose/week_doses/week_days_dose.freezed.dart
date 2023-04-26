// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'week_days_dose.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeekDaysDose {
  UniqueId get id => throw _privateConstructorUsedError;
  FullName get label => throw _privateConstructorUsedError;
  List3<NonNegInt> get weekDays => throw _privateConstructorUsedError;
  NonNegInt get counter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeekDaysDoseCopyWith<WeekDaysDose> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekDaysDoseCopyWith<$Res> {
  factory $WeekDaysDoseCopyWith(
          WeekDaysDose value, $Res Function(WeekDaysDose) then) =
      _$WeekDaysDoseCopyWithImpl<$Res, WeekDaysDose>;
  @useResult
  $Res call(
      {UniqueId id,
      FullName label,
      List3<NonNegInt> weekDays,
      NonNegInt counter});
}

/// @nodoc
class _$WeekDaysDoseCopyWithImpl<$Res, $Val extends WeekDaysDose>
    implements $WeekDaysDoseCopyWith<$Res> {
  _$WeekDaysDoseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? weekDays = null,
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
      weekDays: null == weekDays
          ? _value.weekDays
          : weekDays // ignore: cast_nullable_to_non_nullable
              as List3<NonNegInt>,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as NonNegInt,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeekDaysDoseCopyWith<$Res>
    implements $WeekDaysDoseCopyWith<$Res> {
  factory _$$_WeekDaysDoseCopyWith(
          _$_WeekDaysDose value, $Res Function(_$_WeekDaysDose) then) =
      __$$_WeekDaysDoseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      FullName label,
      List3<NonNegInt> weekDays,
      NonNegInt counter});
}

/// @nodoc
class __$$_WeekDaysDoseCopyWithImpl<$Res>
    extends _$WeekDaysDoseCopyWithImpl<$Res, _$_WeekDaysDose>
    implements _$$_WeekDaysDoseCopyWith<$Res> {
  __$$_WeekDaysDoseCopyWithImpl(
      _$_WeekDaysDose _value, $Res Function(_$_WeekDaysDose) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? weekDays = null,
    Object? counter = null,
  }) {
    return _then(_$_WeekDaysDose(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as FullName,
      weekDays: null == weekDays
          ? _value.weekDays
          : weekDays // ignore: cast_nullable_to_non_nullable
              as List3<NonNegInt>,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as NonNegInt,
    ));
  }
}

/// @nodoc

class _$_WeekDaysDose extends _WeekDaysDose {
  const _$_WeekDaysDose(
      {required this.id,
      required this.label,
      required this.weekDays,
      required this.counter})
      : super._();

  @override
  final UniqueId id;
  @override
  final FullName label;
  @override
  final List3<NonNegInt> weekDays;
  @override
  final NonNegInt counter;

  @override
  String toString() {
    return 'WeekDaysDose(id: $id, label: $label, weekDays: $weekDays, counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeekDaysDoseCopyWith<_$_WeekDaysDose> get copyWith =>
      __$$_WeekDaysDoseCopyWithImpl<_$_WeekDaysDose>(this, _$identity);
}

abstract class _WeekDaysDose extends WeekDaysDose {
  const factory _WeekDaysDose(
      {required final UniqueId id,
      required final FullName label,
      required final List3<NonNegInt> weekDays,
      required final NonNegInt counter}) = _$_WeekDaysDose;
  const _WeekDaysDose._() : super._();

  @override
  UniqueId get id;
  @override
  FullName get label;
  @override
  List3<NonNegInt> get weekDays;
  @override
  NonNegInt get counter;
  @override
  @JsonKey(ignore: true)
  _$$_WeekDaysDoseCopyWith<_$_WeekDaysDose> get copyWith =>
      throw _privateConstructorUsedError;
}
