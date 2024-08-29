// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'label_double_amount_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LabelDoubleAmountDto _$LabelDoubleAmountDtoFromJson(Map<String, dynamic> json) {
  return _LabelDoubleAmountDto.fromJson(json);
}

/// @nodoc
mixin _$LabelDoubleAmountDto {
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  int get counter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LabelDoubleAmountDtoCopyWith<LabelDoubleAmountDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabelDoubleAmountDtoCopyWith<$Res> {
  factory $LabelDoubleAmountDtoCopyWith(LabelDoubleAmountDto value,
          $Res Function(LabelDoubleAmountDto) then) =
      _$LabelDoubleAmountDtoCopyWithImpl<$Res, LabelDoubleAmountDto>;
  @useResult
  $Res call({String id, String label, double amount, int counter});
}

/// @nodoc
class _$LabelDoubleAmountDtoCopyWithImpl<$Res,
        $Val extends LabelDoubleAmountDto>
    implements $LabelDoubleAmountDtoCopyWith<$Res> {
  _$LabelDoubleAmountDtoCopyWithImpl(this._value, this._then);

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
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LabelDoubleAmountDtoImplCopyWith<$Res>
    implements $LabelDoubleAmountDtoCopyWith<$Res> {
  factory _$$LabelDoubleAmountDtoImplCopyWith(_$LabelDoubleAmountDtoImpl value,
          $Res Function(_$LabelDoubleAmountDtoImpl) then) =
      __$$LabelDoubleAmountDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String label, double amount, int counter});
}

/// @nodoc
class __$$LabelDoubleAmountDtoImplCopyWithImpl<$Res>
    extends _$LabelDoubleAmountDtoCopyWithImpl<$Res, _$LabelDoubleAmountDtoImpl>
    implements _$$LabelDoubleAmountDtoImplCopyWith<$Res> {
  __$$LabelDoubleAmountDtoImplCopyWithImpl(_$LabelDoubleAmountDtoImpl _value,
      $Res Function(_$LabelDoubleAmountDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? amount = null,
    Object? counter = null,
  }) {
    return _then(_$LabelDoubleAmountDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LabelDoubleAmountDtoImpl extends _LabelDoubleAmountDto {
  const _$LabelDoubleAmountDtoImpl(
      {required this.id,
      required this.label,
      required this.amount,
      required this.counter})
      : super._();

  factory _$LabelDoubleAmountDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LabelDoubleAmountDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String label;
  @override
  final double amount;
  @override
  final int counter;

  @override
  String toString() {
    return 'LabelDoubleAmountDto(id: $id, label: $label, amount: $amount, counter: $counter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LabelDoubleAmountDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.counter, counter) || other.counter == counter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, label, amount, counter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LabelDoubleAmountDtoImplCopyWith<_$LabelDoubleAmountDtoImpl>
      get copyWith =>
          __$$LabelDoubleAmountDtoImplCopyWithImpl<_$LabelDoubleAmountDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LabelDoubleAmountDtoImplToJson(
      this,
    );
  }
}

abstract class _LabelDoubleAmountDto extends LabelDoubleAmountDto {
  const factory _LabelDoubleAmountDto(
      {required final String id,
      required final String label,
      required final double amount,
      required final int counter}) = _$LabelDoubleAmountDtoImpl;
  const _LabelDoubleAmountDto._() : super._();

  factory _LabelDoubleAmountDto.fromJson(Map<String, dynamic> json) =
      _$LabelDoubleAmountDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get label;
  @override
  double get amount;
  @override
  int get counter;
  @override
  @JsonKey(ignore: true)
  _$$LabelDoubleAmountDtoImplCopyWith<_$LabelDoubleAmountDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
