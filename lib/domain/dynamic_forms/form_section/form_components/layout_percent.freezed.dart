// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'layout_percent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LayoutPercent {
  NonNegInt get position =>
      throw _privateConstructorUsedError; // the percentage will be provided in the
// range 0-100
  NonNegDouble get percentage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LayoutPercentCopyWith<LayoutPercent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LayoutPercentCopyWith<$Res> {
  factory $LayoutPercentCopyWith(
          LayoutPercent value, $Res Function(LayoutPercent) then) =
      _$LayoutPercentCopyWithImpl<$Res, LayoutPercent>;
  @useResult
  $Res call({NonNegInt position, NonNegDouble percentage});
}

/// @nodoc
class _$LayoutPercentCopyWithImpl<$Res, $Val extends LayoutPercent>
    implements $LayoutPercentCopyWith<$Res> {
  _$LayoutPercentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? percentage = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as NonNegInt,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as NonNegDouble,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LayoutPercentImplCopyWith<$Res>
    implements $LayoutPercentCopyWith<$Res> {
  factory _$$LayoutPercentImplCopyWith(
          _$LayoutPercentImpl value, $Res Function(_$LayoutPercentImpl) then) =
      __$$LayoutPercentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NonNegInt position, NonNegDouble percentage});
}

/// @nodoc
class __$$LayoutPercentImplCopyWithImpl<$Res>
    extends _$LayoutPercentCopyWithImpl<$Res, _$LayoutPercentImpl>
    implements _$$LayoutPercentImplCopyWith<$Res> {
  __$$LayoutPercentImplCopyWithImpl(
      _$LayoutPercentImpl _value, $Res Function(_$LayoutPercentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? percentage = null,
  }) {
    return _then(_$LayoutPercentImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as NonNegInt,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as NonNegDouble,
    ));
  }
}

/// @nodoc

class _$LayoutPercentImpl extends _LayoutPercent {
  const _$LayoutPercentImpl({required this.position, required this.percentage})
      : super._();

  @override
  final NonNegInt position;
// the percentage will be provided in the
// range 0-100
  @override
  final NonNegDouble percentage;

  @override
  String toString() {
    return 'LayoutPercent(position: $position, percentage: $percentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LayoutPercentImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position, percentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LayoutPercentImplCopyWith<_$LayoutPercentImpl> get copyWith =>
      __$$LayoutPercentImplCopyWithImpl<_$LayoutPercentImpl>(this, _$identity);
}

abstract class _LayoutPercent extends LayoutPercent {
  const factory _LayoutPercent(
      {required final NonNegInt position,
      required final NonNegDouble percentage}) = _$LayoutPercentImpl;
  const _LayoutPercent._() : super._();

  @override
  NonNegInt get position;
  @override // the percentage will be provided in the
// range 0-100
  NonNegDouble get percentage;
  @override
  @JsonKey(ignore: true)
  _$$LayoutPercentImplCopyWith<_$LayoutPercentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
