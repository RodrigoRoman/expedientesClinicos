// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'indication.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Indication {
  UniqueId get id => throw _privateConstructorUsedError;
  Category get indicationCategory => throw _privateConstructorUsedError;
  FullName get indicationName => throw _privateConstructorUsedError;
  NonNegInt get counter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IndicationCopyWith<Indication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndicationCopyWith<$Res> {
  factory $IndicationCopyWith(
          Indication value, $Res Function(Indication) then) =
      _$IndicationCopyWithImpl<$Res, Indication>;
  @useResult
  $Res call(
      {UniqueId id,
      Category indicationCategory,
      FullName indicationName,
      NonNegInt counter});

  $CategoryCopyWith<$Res> get indicationCategory;
}

/// @nodoc
class _$IndicationCopyWithImpl<$Res, $Val extends Indication>
    implements $IndicationCopyWith<$Res> {
  _$IndicationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? indicationCategory = null,
    Object? indicationName = null,
    Object? counter = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      indicationCategory: null == indicationCategory
          ? _value.indicationCategory
          : indicationCategory // ignore: cast_nullable_to_non_nullable
              as Category,
      indicationName: null == indicationName
          ? _value.indicationName
          : indicationName // ignore: cast_nullable_to_non_nullable
              as FullName,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as NonNegInt,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get indicationCategory {
    return $CategoryCopyWith<$Res>(_value.indicationCategory, (value) {
      return _then(_value.copyWith(indicationCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IndicationImplCopyWith<$Res>
    implements $IndicationCopyWith<$Res> {
  factory _$$IndicationImplCopyWith(
          _$IndicationImpl value, $Res Function(_$IndicationImpl) then) =
      __$$IndicationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      Category indicationCategory,
      FullName indicationName,
      NonNegInt counter});

  @override
  $CategoryCopyWith<$Res> get indicationCategory;
}

/// @nodoc
class __$$IndicationImplCopyWithImpl<$Res>
    extends _$IndicationCopyWithImpl<$Res, _$IndicationImpl>
    implements _$$IndicationImplCopyWith<$Res> {
  __$$IndicationImplCopyWithImpl(
      _$IndicationImpl _value, $Res Function(_$IndicationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? indicationCategory = null,
    Object? indicationName = null,
    Object? counter = null,
  }) {
    return _then(_$IndicationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      indicationCategory: null == indicationCategory
          ? _value.indicationCategory
          : indicationCategory // ignore: cast_nullable_to_non_nullable
              as Category,
      indicationName: null == indicationName
          ? _value.indicationName
          : indicationName // ignore: cast_nullable_to_non_nullable
              as FullName,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as NonNegInt,
    ));
  }
}

/// @nodoc

class _$IndicationImpl extends _Indication {
  const _$IndicationImpl(
      {required this.id,
      required this.indicationCategory,
      required this.indicationName,
      required this.counter})
      : super._();

  @override
  final UniqueId id;
  @override
  final Category indicationCategory;
  @override
  final FullName indicationName;
  @override
  final NonNegInt counter;

  @override
  String toString() {
    return 'Indication(id: $id, indicationCategory: $indicationCategory, indicationName: $indicationName, counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndicationImplCopyWith<_$IndicationImpl> get copyWith =>
      __$$IndicationImplCopyWithImpl<_$IndicationImpl>(this, _$identity);
}

abstract class _Indication extends Indication {
  const factory _Indication(
      {required final UniqueId id,
      required final Category indicationCategory,
      required final FullName indicationName,
      required final NonNegInt counter}) = _$IndicationImpl;
  const _Indication._() : super._();

  @override
  UniqueId get id;
  @override
  Category get indicationCategory;
  @override
  FullName get indicationName;
  @override
  NonNegInt get counter;
  @override
  @JsonKey(ignore: true)
  _$$IndicationImplCopyWith<_$IndicationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
