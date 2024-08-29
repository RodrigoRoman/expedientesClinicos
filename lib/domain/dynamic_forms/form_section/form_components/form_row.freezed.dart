// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_row.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FormRow {
  NonNegInt get rowNum => throw _privateConstructorUsedError;
  List3<LayoutPercent> get layoutXPercent =>
      throw _privateConstructorUsedError; //Just in case we will keep the order of the elements by means of a map
  List3<FormElement> get formElements => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormRowCopyWith<FormRow> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormRowCopyWith<$Res> {
  factory $FormRowCopyWith(FormRow value, $Res Function(FormRow) then) =
      _$FormRowCopyWithImpl<$Res, FormRow>;
  @useResult
  $Res call(
      {NonNegInt rowNum,
      List3<LayoutPercent> layoutXPercent,
      List3<FormElement> formElements});
}

/// @nodoc
class _$FormRowCopyWithImpl<$Res, $Val extends FormRow>
    implements $FormRowCopyWith<$Res> {
  _$FormRowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rowNum = null,
    Object? layoutXPercent = null,
    Object? formElements = null,
  }) {
    return _then(_value.copyWith(
      rowNum: null == rowNum
          ? _value.rowNum
          : rowNum // ignore: cast_nullable_to_non_nullable
              as NonNegInt,
      layoutXPercent: null == layoutXPercent
          ? _value.layoutXPercent
          : layoutXPercent // ignore: cast_nullable_to_non_nullable
              as List3<LayoutPercent>,
      formElements: null == formElements
          ? _value.formElements
          : formElements // ignore: cast_nullable_to_non_nullable
              as List3<FormElement>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormRowImplCopyWith<$Res> implements $FormRowCopyWith<$Res> {
  factory _$$FormRowImplCopyWith(
          _$FormRowImpl value, $Res Function(_$FormRowImpl) then) =
      __$$FormRowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NonNegInt rowNum,
      List3<LayoutPercent> layoutXPercent,
      List3<FormElement> formElements});
}

/// @nodoc
class __$$FormRowImplCopyWithImpl<$Res>
    extends _$FormRowCopyWithImpl<$Res, _$FormRowImpl>
    implements _$$FormRowImplCopyWith<$Res> {
  __$$FormRowImplCopyWithImpl(
      _$FormRowImpl _value, $Res Function(_$FormRowImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rowNum = null,
    Object? layoutXPercent = null,
    Object? formElements = null,
  }) {
    return _then(_$FormRowImpl(
      rowNum: null == rowNum
          ? _value.rowNum
          : rowNum // ignore: cast_nullable_to_non_nullable
              as NonNegInt,
      layoutXPercent: null == layoutXPercent
          ? _value.layoutXPercent
          : layoutXPercent // ignore: cast_nullable_to_non_nullable
              as List3<LayoutPercent>,
      formElements: null == formElements
          ? _value.formElements
          : formElements // ignore: cast_nullable_to_non_nullable
              as List3<FormElement>,
    ));
  }
}

/// @nodoc

class _$FormRowImpl extends _FormRow {
  _$FormRowImpl(
      {required this.rowNum,
      required this.layoutXPercent,
      required this.formElements})
      : super._();

  @override
  final NonNegInt rowNum;
  @override
  final List3<LayoutPercent> layoutXPercent;
//Just in case we will keep the order of the elements by means of a map
  @override
  final List3<FormElement> formElements;

  @override
  String toString() {
    return 'FormRow(rowNum: $rowNum, layoutXPercent: $layoutXPercent, formElements: $formElements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormRowImpl &&
            (identical(other.rowNum, rowNum) || other.rowNum == rowNum) &&
            (identical(other.layoutXPercent, layoutXPercent) ||
                other.layoutXPercent == layoutXPercent) &&
            (identical(other.formElements, formElements) ||
                other.formElements == formElements));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, rowNum, layoutXPercent, formElements);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormRowImplCopyWith<_$FormRowImpl> get copyWith =>
      __$$FormRowImplCopyWithImpl<_$FormRowImpl>(this, _$identity);
}

abstract class _FormRow extends FormRow {
  factory _FormRow(
      {required final NonNegInt rowNum,
      required final List3<LayoutPercent> layoutXPercent,
      required final List3<FormElement> formElements}) = _$FormRowImpl;
  _FormRow._() : super._();

  @override
  NonNegInt get rowNum;
  @override
  List3<LayoutPercent> get layoutXPercent;
  @override //Just in case we will keep the order of the elements by means of a map
  List3<FormElement> get formElements;
  @override
  @JsonKey(ignore: true)
  _$$FormRowImplCopyWith<_$FormRowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
