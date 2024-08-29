// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'layout_percent_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LayoutPercentDto _$LayoutPercentDtoFromJson(Map<String, dynamic> json) {
  return _LayoutPercentDto.fromJson(json);
}

/// @nodoc
mixin _$LayoutPercentDto {
  int get position => throw _privateConstructorUsedError;
  double get percentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LayoutPercentDtoCopyWith<LayoutPercentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LayoutPercentDtoCopyWith<$Res> {
  factory $LayoutPercentDtoCopyWith(
          LayoutPercentDto value, $Res Function(LayoutPercentDto) then) =
      _$LayoutPercentDtoCopyWithImpl<$Res, LayoutPercentDto>;
  @useResult
  $Res call({int position, double percentage});
}

/// @nodoc
class _$LayoutPercentDtoCopyWithImpl<$Res, $Val extends LayoutPercentDto>
    implements $LayoutPercentDtoCopyWith<$Res> {
  _$LayoutPercentDtoCopyWithImpl(this._value, this._then);

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
              as int,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LayoutPercentDtoImplCopyWith<$Res>
    implements $LayoutPercentDtoCopyWith<$Res> {
  factory _$$LayoutPercentDtoImplCopyWith(_$LayoutPercentDtoImpl value,
          $Res Function(_$LayoutPercentDtoImpl) then) =
      __$$LayoutPercentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int position, double percentage});
}

/// @nodoc
class __$$LayoutPercentDtoImplCopyWithImpl<$Res>
    extends _$LayoutPercentDtoCopyWithImpl<$Res, _$LayoutPercentDtoImpl>
    implements _$$LayoutPercentDtoImplCopyWith<$Res> {
  __$$LayoutPercentDtoImplCopyWithImpl(_$LayoutPercentDtoImpl _value,
      $Res Function(_$LayoutPercentDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? percentage = null,
  }) {
    return _then(_$LayoutPercentDtoImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LayoutPercentDtoImpl extends _LayoutPercentDto {
  const _$LayoutPercentDtoImpl(
      {required this.position, required this.percentage})
      : super._();

  factory _$LayoutPercentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LayoutPercentDtoImplFromJson(json);

  @override
  final int position;
  @override
  final double percentage;

  @override
  String toString() {
    return 'LayoutPercentDto(position: $position, percentage: $percentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LayoutPercentDtoImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, position, percentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LayoutPercentDtoImplCopyWith<_$LayoutPercentDtoImpl> get copyWith =>
      __$$LayoutPercentDtoImplCopyWithImpl<_$LayoutPercentDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LayoutPercentDtoImplToJson(
      this,
    );
  }
}

abstract class _LayoutPercentDto extends LayoutPercentDto {
  const factory _LayoutPercentDto(
      {required final int position,
      required final double percentage}) = _$LayoutPercentDtoImpl;
  const _LayoutPercentDto._() : super._();

  factory _LayoutPercentDto.fromJson(Map<String, dynamic> json) =
      _$LayoutPercentDtoImpl.fromJson;

  @override
  int get position;
  @override
  double get percentage;
  @override
  @JsonKey(ignore: true)
  _$$LayoutPercentDtoImplCopyWith<_$LayoutPercentDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
