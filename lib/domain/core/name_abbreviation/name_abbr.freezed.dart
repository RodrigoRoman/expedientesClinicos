// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'name_abbr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NameAbbreviation {
  UniqueId get id => throw _privateConstructorUsedError;
  FullName get name => throw _privateConstructorUsedError;
  AbbrName get abbr => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NameAbbreviationCopyWith<NameAbbreviation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameAbbreviationCopyWith<$Res> {
  factory $NameAbbreviationCopyWith(
          NameAbbreviation value, $Res Function(NameAbbreviation) then) =
      _$NameAbbreviationCopyWithImpl<$Res, NameAbbreviation>;
  @useResult
  $Res call({UniqueId id, FullName name, AbbrName abbr});
}

/// @nodoc
class _$NameAbbreviationCopyWithImpl<$Res, $Val extends NameAbbreviation>
    implements $NameAbbreviationCopyWith<$Res> {
  _$NameAbbreviationCopyWithImpl(this._value, this._then);

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
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as FullName,
      abbr: null == abbr
          ? _value.abbr
          : abbr // ignore: cast_nullable_to_non_nullable
              as AbbrName,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NameAbbreviationImplCopyWith<$Res>
    implements $NameAbbreviationCopyWith<$Res> {
  factory _$$NameAbbreviationImplCopyWith(_$NameAbbreviationImpl value,
          $Res Function(_$NameAbbreviationImpl) then) =
      __$$NameAbbreviationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueId id, FullName name, AbbrName abbr});
}

/// @nodoc
class __$$NameAbbreviationImplCopyWithImpl<$Res>
    extends _$NameAbbreviationCopyWithImpl<$Res, _$NameAbbreviationImpl>
    implements _$$NameAbbreviationImplCopyWith<$Res> {
  __$$NameAbbreviationImplCopyWithImpl(_$NameAbbreviationImpl _value,
      $Res Function(_$NameAbbreviationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? abbr = null,
  }) {
    return _then(_$NameAbbreviationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as FullName,
      abbr: null == abbr
          ? _value.abbr
          : abbr // ignore: cast_nullable_to_non_nullable
              as AbbrName,
    ));
  }
}

/// @nodoc

class _$NameAbbreviationImpl extends _NameAbbreviation {
  const _$NameAbbreviationImpl(
      {required this.id, required this.name, required this.abbr})
      : super._();

  @override
  final UniqueId id;
  @override
  final FullName name;
  @override
  final AbbrName abbr;

  @override
  String toString() {
    return 'NameAbbreviation(id: $id, name: $name, abbr: $abbr)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameAbbreviationImplCopyWith<_$NameAbbreviationImpl> get copyWith =>
      __$$NameAbbreviationImplCopyWithImpl<_$NameAbbreviationImpl>(
          this, _$identity);
}

abstract class _NameAbbreviation extends NameAbbreviation {
  const factory _NameAbbreviation(
      {required final UniqueId id,
      required final FullName name,
      required final AbbrName abbr}) = _$NameAbbreviationImpl;
  const _NameAbbreviation._() : super._();

  @override
  UniqueId get id;
  @override
  FullName get name;
  @override
  AbbrName get abbr;
  @override
  @JsonKey(ignore: true)
  _$$NameAbbreviationImplCopyWith<_$NameAbbreviationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
