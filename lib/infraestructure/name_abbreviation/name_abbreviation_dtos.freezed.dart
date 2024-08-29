// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'name_abbreviation_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NameAbbreviationDto _$NameAbbreviationDtoFromJson(Map<String, dynamic> json) {
  return _NameAbbreviationDto.fromJson(json);
}

/// @nodoc
mixin _$NameAbbreviationDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get abbr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameAbbreviationDtoCopyWith<NameAbbreviationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameAbbreviationDtoCopyWith<$Res> {
  factory $NameAbbreviationDtoCopyWith(
          NameAbbreviationDto value, $Res Function(NameAbbreviationDto) then) =
      _$NameAbbreviationDtoCopyWithImpl<$Res, NameAbbreviationDto>;
  @useResult
  $Res call({String id, String name, String abbr});
}

/// @nodoc
class _$NameAbbreviationDtoCopyWithImpl<$Res, $Val extends NameAbbreviationDto>
    implements $NameAbbreviationDtoCopyWith<$Res> {
  _$NameAbbreviationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? abbr = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      abbr: null == abbr
          ? _value.abbr
          : abbr // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NameAbbreviationDtoImplCopyWith<$Res>
    implements $NameAbbreviationDtoCopyWith<$Res> {
  factory _$$NameAbbreviationDtoImplCopyWith(_$NameAbbreviationDtoImpl value,
          $Res Function(_$NameAbbreviationDtoImpl) then) =
      __$$NameAbbreviationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String abbr});
}

/// @nodoc
class __$$NameAbbreviationDtoImplCopyWithImpl<$Res>
    extends _$NameAbbreviationDtoCopyWithImpl<$Res, _$NameAbbreviationDtoImpl>
    implements _$$NameAbbreviationDtoImplCopyWith<$Res> {
  __$$NameAbbreviationDtoImplCopyWithImpl(_$NameAbbreviationDtoImpl _value,
      $Res Function(_$NameAbbreviationDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? abbr = null,
  }) {
    return _then(_$NameAbbreviationDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      abbr: null == abbr
          ? _value.abbr
          : abbr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NameAbbreviationDtoImpl extends _NameAbbreviationDto {
  const _$NameAbbreviationDtoImpl(
      {required this.id, required this.name, required this.abbr})
      : super._();

  factory _$NameAbbreviationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NameAbbreviationDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String abbr;

  @override
  String toString() {
    return 'NameAbbreviationDto(id: $id, name: $name, abbr: $abbr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameAbbreviationDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.abbr, abbr) || other.abbr == abbr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, abbr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameAbbreviationDtoImplCopyWith<_$NameAbbreviationDtoImpl> get copyWith =>
      __$$NameAbbreviationDtoImplCopyWithImpl<_$NameAbbreviationDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NameAbbreviationDtoImplToJson(
      this,
    );
  }
}

abstract class _NameAbbreviationDto extends NameAbbreviationDto {
  const factory _NameAbbreviationDto(
      {required final String id,
      required final String name,
      required final String abbr}) = _$NameAbbreviationDtoImpl;
  const _NameAbbreviationDto._() : super._();

  factory _NameAbbreviationDto.fromJson(Map<String, dynamic> json) =
      _$NameAbbreviationDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get abbr;
  @override
  @JsonKey(ignore: true)
  _$$NameAbbreviationDtoImplCopyWith<_$NameAbbreviationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
