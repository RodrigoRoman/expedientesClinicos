// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_hours_doses_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DayHoursDoseDto _$DayHoursDoseDtoFromJson(Map<String, dynamic> json) {
  return _DayHoursDoseDto.fromJson(json);
}

/// @nodoc
mixin _$DayHoursDoseDto {
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _timeToJson, toJson: _timeFromJson)
  List<Timestamp> get doseHours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayHoursDoseDtoCopyWith<DayHoursDoseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayHoursDoseDtoCopyWith<$Res> {
  factory $DayHoursDoseDtoCopyWith(
          DayHoursDoseDto value, $Res Function(DayHoursDoseDto) then) =
      _$DayHoursDoseDtoCopyWithImpl<$Res, DayHoursDoseDto>;
  @useResult
  $Res call(
      {String id,
      String label,
      @JsonKey(fromJson: _timeToJson, toJson: _timeFromJson)
          List<Timestamp> doseHours});
}

/// @nodoc
class _$DayHoursDoseDtoCopyWithImpl<$Res, $Val extends DayHoursDoseDto>
    implements $DayHoursDoseDtoCopyWith<$Res> {
  _$DayHoursDoseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? doseHours = null,
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
      doseHours: null == doseHours
          ? _value.doseHours
          : doseHours // ignore: cast_nullable_to_non_nullable
              as List<Timestamp>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DayHoursDoseDtoCopyWith<$Res>
    implements $DayHoursDoseDtoCopyWith<$Res> {
  factory _$$_DayHoursDoseDtoCopyWith(
          _$_DayHoursDoseDto value, $Res Function(_$_DayHoursDoseDto) then) =
      __$$_DayHoursDoseDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String label,
      @JsonKey(fromJson: _timeToJson, toJson: _timeFromJson)
          List<Timestamp> doseHours});
}

/// @nodoc
class __$$_DayHoursDoseDtoCopyWithImpl<$Res>
    extends _$DayHoursDoseDtoCopyWithImpl<$Res, _$_DayHoursDoseDto>
    implements _$$_DayHoursDoseDtoCopyWith<$Res> {
  __$$_DayHoursDoseDtoCopyWithImpl(
      _$_DayHoursDoseDto _value, $Res Function(_$_DayHoursDoseDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? doseHours = null,
  }) {
    return _then(_$_DayHoursDoseDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      doseHours: null == doseHours
          ? _value._doseHours
          : doseHours // ignore: cast_nullable_to_non_nullable
              as List<Timestamp>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DayHoursDoseDto extends _DayHoursDoseDto {
  const _$_DayHoursDoseDto(
      {required this.id,
      required this.label,
      @JsonKey(fromJson: _timeToJson, toJson: _timeFromJson)
          required final List<Timestamp> doseHours})
      : _doseHours = doseHours,
        super._();

  factory _$_DayHoursDoseDto.fromJson(Map<String, dynamic> json) =>
      _$$_DayHoursDoseDtoFromJson(json);

  @override
  final String id;
  @override
  final String label;
  final List<Timestamp> _doseHours;
  @override
  @JsonKey(fromJson: _timeToJson, toJson: _timeFromJson)
  List<Timestamp> get doseHours {
    if (_doseHours is EqualUnmodifiableListView) return _doseHours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doseHours);
  }

  @override
  String toString() {
    return 'DayHoursDoseDto(id: $id, label: $label, doseHours: $doseHours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DayHoursDoseDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality()
                .equals(other._doseHours, _doseHours));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, label, const DeepCollectionEquality().hash(_doseHours));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DayHoursDoseDtoCopyWith<_$_DayHoursDoseDto> get copyWith =>
      __$$_DayHoursDoseDtoCopyWithImpl<_$_DayHoursDoseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DayHoursDoseDtoToJson(
      this,
    );
  }
}

abstract class _DayHoursDoseDto extends DayHoursDoseDto {
  const factory _DayHoursDoseDto(
      {required final String id,
      required final String label,
      @JsonKey(fromJson: _timeToJson, toJson: _timeFromJson)
          required final List<Timestamp> doseHours}) = _$_DayHoursDoseDto;
  const _DayHoursDoseDto._() : super._();

  factory _DayHoursDoseDto.fromJson(Map<String, dynamic> json) =
      _$_DayHoursDoseDto.fromJson;

  @override
  String get id;
  @override
  String get label;
  @override
  @JsonKey(fromJson: _timeToJson, toJson: _timeFromJson)
  List<Timestamp> get doseHours;
  @override
  @JsonKey(ignore: true)
  _$$_DayHoursDoseDtoCopyWith<_$_DayHoursDoseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
