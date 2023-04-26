// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dose_amount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DoseAmount {
  UniqueId get id => throw _privateConstructorUsedError;
  FullName get label => throw _privateConstructorUsedError;
  NonNegDouble get amount => throw _privateConstructorUsedError;
  NonNegInt get counter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoseAmountCopyWith<DoseAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoseAmountCopyWith<$Res> {
  factory $DoseAmountCopyWith(
          DoseAmount value, $Res Function(DoseAmount) then) =
      _$DoseAmountCopyWithImpl<$Res, DoseAmount>;
  @useResult
  $Res call(
      {UniqueId id, FullName label, NonNegDouble amount, NonNegInt counter});
}

/// @nodoc
class _$DoseAmountCopyWithImpl<$Res, $Val extends DoseAmount>
    implements $DoseAmountCopyWith<$Res> {
  _$DoseAmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? amount = null,
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
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as NonNegDouble,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as NonNegInt,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DoseAmountCopyWith<$Res>
    implements $DoseAmountCopyWith<$Res> {
  factory _$$_DoseAmountCopyWith(
          _$_DoseAmount value, $Res Function(_$_DoseAmount) then) =
      __$$_DoseAmountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id, FullName label, NonNegDouble amount, NonNegInt counter});
}

/// @nodoc
class __$$_DoseAmountCopyWithImpl<$Res>
    extends _$DoseAmountCopyWithImpl<$Res, _$_DoseAmount>
    implements _$$_DoseAmountCopyWith<$Res> {
  __$$_DoseAmountCopyWithImpl(
      _$_DoseAmount _value, $Res Function(_$_DoseAmount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? amount = null,
    Object? counter = null,
  }) {
    return _then(_$_DoseAmount(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as FullName,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as NonNegDouble,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as NonNegInt,
    ));
  }
}

/// @nodoc

class _$_DoseAmount extends _DoseAmount {
  const _$_DoseAmount(
      {required this.id,
      required this.label,
      required this.amount,
      required this.counter})
      : super._();

  @override
  final UniqueId id;
  @override
  final FullName label;
  @override
  final NonNegDouble amount;
  @override
  final NonNegInt counter;

  @override
  String toString() {
    return 'DoseAmount(id: $id, label: $label, amount: $amount, counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DoseAmountCopyWith<_$_DoseAmount> get copyWith =>
      __$$_DoseAmountCopyWithImpl<_$_DoseAmount>(this, _$identity);
}

abstract class _DoseAmount extends DoseAmount {
  const factory _DoseAmount(
      {required final UniqueId id,
      required final FullName label,
      required final NonNegDouble amount,
      required final NonNegInt counter}) = _$_DoseAmount;
  const _DoseAmount._() : super._();

  @override
  UniqueId get id;
  @override
  FullName get label;
  @override
  NonNegDouble get amount;
  @override
  NonNegInt get counter;
  @override
  @JsonKey(ignore: true)
  _$$_DoseAmountCopyWith<_$_DoseAmount> get copyWith =>
      throw _privateConstructorUsedError;
}
