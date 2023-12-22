// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'label_double_amount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LabelDoubleAmount {
  UniqueId get id => throw _privateConstructorUsedError;
  FullName get label => throw _privateConstructorUsedError;
  NonNegDouble get amount => throw _privateConstructorUsedError;
  NonNegInt get counter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LabelDoubleAmountCopyWith<LabelDoubleAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabelDoubleAmountCopyWith<$Res> {
  factory $LabelDoubleAmountCopyWith(
          LabelDoubleAmount value, $Res Function(LabelDoubleAmount) then) =
      _$LabelDoubleAmountCopyWithImpl<$Res, LabelDoubleAmount>;
  @useResult
  $Res call(
      {UniqueId id, FullName label, NonNegDouble amount, NonNegInt counter});
}

/// @nodoc
class _$LabelDoubleAmountCopyWithImpl<$Res, $Val extends LabelDoubleAmount>
    implements $LabelDoubleAmountCopyWith<$Res> {
  _$LabelDoubleAmountCopyWithImpl(this._value, this._then);

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
abstract class _$$_LabelDoubleAmountCopyWith<$Res>
    implements $LabelDoubleAmountCopyWith<$Res> {
  factory _$$_LabelDoubleAmountCopyWith(_$_LabelDoubleAmount value,
          $Res Function(_$_LabelDoubleAmount) then) =
      __$$_LabelDoubleAmountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id, FullName label, NonNegDouble amount, NonNegInt counter});
}

/// @nodoc
class __$$_LabelDoubleAmountCopyWithImpl<$Res>
    extends _$LabelDoubleAmountCopyWithImpl<$Res, _$_LabelDoubleAmount>
    implements _$$_LabelDoubleAmountCopyWith<$Res> {
  __$$_LabelDoubleAmountCopyWithImpl(
      _$_LabelDoubleAmount _value, $Res Function(_$_LabelDoubleAmount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? amount = null,
    Object? counter = null,
  }) {
    return _then(_$_LabelDoubleAmount(
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

class _$_LabelDoubleAmount extends _LabelDoubleAmount {
  const _$_LabelDoubleAmount(
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
    return 'LabelDoubleAmount(id: $id, label: $label, amount: $amount, counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LabelDoubleAmountCopyWith<_$_LabelDoubleAmount> get copyWith =>
      __$$_LabelDoubleAmountCopyWithImpl<_$_LabelDoubleAmount>(
          this, _$identity);
}

abstract class _LabelDoubleAmount extends LabelDoubleAmount {
  const factory _LabelDoubleAmount(
      {required final UniqueId id,
      required final FullName label,
      required final NonNegDouble amount,
      required final NonNegInt counter}) = _$_LabelDoubleAmount;
  const _LabelDoubleAmount._() : super._();

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
  _$$_LabelDoubleAmountCopyWith<_$_LabelDoubleAmount> get copyWith =>
      throw _privateConstructorUsedError;
}
