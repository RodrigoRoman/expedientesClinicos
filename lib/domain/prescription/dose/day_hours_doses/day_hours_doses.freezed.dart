// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_hours_doses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DayHoursDose {
  UniqueId get id => throw _privateConstructorUsedError;
  FullName get label => throw _privateConstructorUsedError;
  List3<HourTime> get doseHours => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DayHoursDoseCopyWith<DayHoursDose> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayHoursDoseCopyWith<$Res> {
  factory $DayHoursDoseCopyWith(
          DayHoursDose value, $Res Function(DayHoursDose) then) =
      _$DayHoursDoseCopyWithImpl<$Res, DayHoursDose>;
  @useResult
  $Res call({UniqueId id, FullName label, List3<HourTime> doseHours});
}

/// @nodoc
class _$DayHoursDoseCopyWithImpl<$Res, $Val extends DayHoursDose>
    implements $DayHoursDoseCopyWith<$Res> {
  _$DayHoursDoseCopyWithImpl(this._value, this._then);

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
              as UniqueId,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as FullName,
      doseHours: null == doseHours
          ? _value.doseHours
          : doseHours // ignore: cast_nullable_to_non_nullable
              as List3<HourTime>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DayHoursDoseImplCopyWith<$Res>
    implements $DayHoursDoseCopyWith<$Res> {
  factory _$$DayHoursDoseImplCopyWith(
          _$DayHoursDoseImpl value, $Res Function(_$DayHoursDoseImpl) then) =
      __$$DayHoursDoseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueId id, FullName label, List3<HourTime> doseHours});
}

/// @nodoc
class __$$DayHoursDoseImplCopyWithImpl<$Res>
    extends _$DayHoursDoseCopyWithImpl<$Res, _$DayHoursDoseImpl>
    implements _$$DayHoursDoseImplCopyWith<$Res> {
  __$$DayHoursDoseImplCopyWithImpl(
      _$DayHoursDoseImpl _value, $Res Function(_$DayHoursDoseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? doseHours = null,
  }) {
    return _then(_$DayHoursDoseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as FullName,
      doseHours: null == doseHours
          ? _value.doseHours
          : doseHours // ignore: cast_nullable_to_non_nullable
              as List3<HourTime>,
    ));
  }
}

/// @nodoc

class _$DayHoursDoseImpl extends _DayHoursDose {
  const _$DayHoursDoseImpl(
      {required this.id, required this.label, required this.doseHours})
      : super._();

  @override
  final UniqueId id;
  @override
  final FullName label;
  @override
  final List3<HourTime> doseHours;

  @override
  String toString() {
    return 'DayHoursDose(id: $id, label: $label, doseHours: $doseHours)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayHoursDoseImplCopyWith<_$DayHoursDoseImpl> get copyWith =>
      __$$DayHoursDoseImplCopyWithImpl<_$DayHoursDoseImpl>(this, _$identity);
}

abstract class _DayHoursDose extends DayHoursDose {
  const factory _DayHoursDose(
      {required final UniqueId id,
      required final FullName label,
      required final List3<HourTime> doseHours}) = _$DayHoursDoseImpl;
  const _DayHoursDose._() : super._();

  @override
  UniqueId get id;
  @override
  FullName get label;
  @override
  List3<HourTime> get doseHours;
  @override
  @JsonKey(ignore: true)
  _$$DayHoursDoseImplCopyWith<_$DayHoursDoseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
