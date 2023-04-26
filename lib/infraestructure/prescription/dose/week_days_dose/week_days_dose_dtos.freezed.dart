// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'week_days_dose_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeekDaysDoseDto _$WeekDaysDoseDtoFromJson(Map<String, dynamic> json) {
  return _WeekDaysDoseDto.fromJson(json);
}

/// @nodoc
mixin _$WeekDaysDoseDto {
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  List<int> get weekDays => throw _privateConstructorUsedError;
  int get counter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeekDaysDoseDtoCopyWith<WeekDaysDoseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekDaysDoseDtoCopyWith<$Res> {
  factory $WeekDaysDoseDtoCopyWith(
          WeekDaysDoseDto value, $Res Function(WeekDaysDoseDto) then) =
      _$WeekDaysDoseDtoCopyWithImpl<$Res, WeekDaysDoseDto>;
  @useResult
  $Res call({String id, String label, List<int> weekDays, int counter});
}

/// @nodoc
class _$WeekDaysDoseDtoCopyWithImpl<$Res, $Val extends WeekDaysDoseDto>
    implements $WeekDaysDoseDtoCopyWith<$Res> {
  _$WeekDaysDoseDtoCopyWithImpl(this._value, this._then);

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
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      weekDays: null == weekDays
          ? _value.weekDays
          : weekDays // ignore: cast_nullable_to_non_nullable
              as List<int>,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeekDaysDoseDtoCopyWith<$Res>
    implements $WeekDaysDoseDtoCopyWith<$Res> {
  factory _$$_WeekDaysDoseDtoCopyWith(
          _$_WeekDaysDoseDto value, $Res Function(_$_WeekDaysDoseDto) then) =
      __$$_WeekDaysDoseDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String label, List<int> weekDays, int counter});
}

/// @nodoc
class __$$_WeekDaysDoseDtoCopyWithImpl<$Res>
    extends _$WeekDaysDoseDtoCopyWithImpl<$Res, _$_WeekDaysDoseDto>
    implements _$$_WeekDaysDoseDtoCopyWith<$Res> {
  __$$_WeekDaysDoseDtoCopyWithImpl(
      _$_WeekDaysDoseDto _value, $Res Function(_$_WeekDaysDoseDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? weekDays = null,
    Object? counter = null,
  }) {
    return _then(_$_WeekDaysDoseDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      weekDays: null == weekDays
          ? _value._weekDays
          : weekDays // ignore: cast_nullable_to_non_nullable
              as List<int>,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeekDaysDoseDto extends _WeekDaysDoseDto {
  const _$_WeekDaysDoseDto(
      {required this.id,
      required this.label,
      required final List<int> weekDays,
      required this.counter})
      : _weekDays = weekDays,
        super._();

  factory _$_WeekDaysDoseDto.fromJson(Map<String, dynamic> json) =>
      _$$_WeekDaysDoseDtoFromJson(json);

  @override
  final String id;
  @override
  final String label;
  final List<int> _weekDays;
  @override
  List<int> get weekDays {
    if (_weekDays is EqualUnmodifiableListView) return _weekDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weekDays);
  }

  @override
  final int counter;

  @override
  String toString() {
    return 'WeekDaysDoseDto(id: $id, label: $label, weekDays: $weekDays, counter: $counter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeekDaysDoseDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(other._weekDays, _weekDays) &&
            (identical(other.counter, counter) || other.counter == counter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, label,
      const DeepCollectionEquality().hash(_weekDays), counter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeekDaysDoseDtoCopyWith<_$_WeekDaysDoseDto> get copyWith =>
      __$$_WeekDaysDoseDtoCopyWithImpl<_$_WeekDaysDoseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeekDaysDoseDtoToJson(
      this,
    );
  }
}

abstract class _WeekDaysDoseDto extends WeekDaysDoseDto {
  const factory _WeekDaysDoseDto(
      {required final String id,
      required final String label,
      required final List<int> weekDays,
      required final int counter}) = _$_WeekDaysDoseDto;
  const _WeekDaysDoseDto._() : super._();

  factory _WeekDaysDoseDto.fromJson(Map<String, dynamic> json) =
      _$_WeekDaysDoseDto.fromJson;

  @override
  String get id;
  @override
  String get label;
  @override
  List<int> get weekDays;
  @override
  int get counter;
  @override
  @JsonKey(ignore: true)
  _$$_WeekDaysDoseDtoCopyWith<_$_WeekDaysDoseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
