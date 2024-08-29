// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_row_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FormRowDto _$FormRowDtoFromJson(Map<String, dynamic> json) {
  return _FormRowDto.fromJson(json);
}

/// @nodoc
mixin _$FormRowDto {
  int get rowNum => throw _privateConstructorUsedError;
  List<LayoutPercentDto> get layoutXPercent =>
      throw _privateConstructorUsedError;
  List<FormElementDto> get formElements => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormRowDtoCopyWith<FormRowDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormRowDtoCopyWith<$Res> {
  factory $FormRowDtoCopyWith(
          FormRowDto value, $Res Function(FormRowDto) then) =
      _$FormRowDtoCopyWithImpl<$Res, FormRowDto>;
  @useResult
  $Res call(
      {int rowNum,
      List<LayoutPercentDto> layoutXPercent,
      List<FormElementDto> formElements});
}

/// @nodoc
class _$FormRowDtoCopyWithImpl<$Res, $Val extends FormRowDto>
    implements $FormRowDtoCopyWith<$Res> {
  _$FormRowDtoCopyWithImpl(this._value, this._then);

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
              as int,
      layoutXPercent: null == layoutXPercent
          ? _value.layoutXPercent
          : layoutXPercent // ignore: cast_nullable_to_non_nullable
              as List<LayoutPercentDto>,
      formElements: null == formElements
          ? _value.formElements
          : formElements // ignore: cast_nullable_to_non_nullable
              as List<FormElementDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormRowDtoImplCopyWith<$Res>
    implements $FormRowDtoCopyWith<$Res> {
  factory _$$FormRowDtoImplCopyWith(
          _$FormRowDtoImpl value, $Res Function(_$FormRowDtoImpl) then) =
      __$$FormRowDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int rowNum,
      List<LayoutPercentDto> layoutXPercent,
      List<FormElementDto> formElements});
}

/// @nodoc
class __$$FormRowDtoImplCopyWithImpl<$Res>
    extends _$FormRowDtoCopyWithImpl<$Res, _$FormRowDtoImpl>
    implements _$$FormRowDtoImplCopyWith<$Res> {
  __$$FormRowDtoImplCopyWithImpl(
      _$FormRowDtoImpl _value, $Res Function(_$FormRowDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rowNum = null,
    Object? layoutXPercent = null,
    Object? formElements = null,
  }) {
    return _then(_$FormRowDtoImpl(
      rowNum: null == rowNum
          ? _value.rowNum
          : rowNum // ignore: cast_nullable_to_non_nullable
              as int,
      layoutXPercent: null == layoutXPercent
          ? _value._layoutXPercent
          : layoutXPercent // ignore: cast_nullable_to_non_nullable
              as List<LayoutPercentDto>,
      formElements: null == formElements
          ? _value._formElements
          : formElements // ignore: cast_nullable_to_non_nullable
              as List<FormElementDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormRowDtoImpl extends _FormRowDto {
  _$FormRowDtoImpl(
      {required this.rowNum,
      required final List<LayoutPercentDto> layoutXPercent,
      required final List<FormElementDto> formElements})
      : _layoutXPercent = layoutXPercent,
        _formElements = formElements,
        super._();

  factory _$FormRowDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormRowDtoImplFromJson(json);

  @override
  final int rowNum;
  final List<LayoutPercentDto> _layoutXPercent;
  @override
  List<LayoutPercentDto> get layoutXPercent {
    if (_layoutXPercent is EqualUnmodifiableListView) return _layoutXPercent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_layoutXPercent);
  }

  final List<FormElementDto> _formElements;
  @override
  List<FormElementDto> get formElements {
    if (_formElements is EqualUnmodifiableListView) return _formElements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_formElements);
  }

  @override
  String toString() {
    return 'FormRowDto(rowNum: $rowNum, layoutXPercent: $layoutXPercent, formElements: $formElements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormRowDtoImpl &&
            (identical(other.rowNum, rowNum) || other.rowNum == rowNum) &&
            const DeepCollectionEquality()
                .equals(other._layoutXPercent, _layoutXPercent) &&
            const DeepCollectionEquality()
                .equals(other._formElements, _formElements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      rowNum,
      const DeepCollectionEquality().hash(_layoutXPercent),
      const DeepCollectionEquality().hash(_formElements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormRowDtoImplCopyWith<_$FormRowDtoImpl> get copyWith =>
      __$$FormRowDtoImplCopyWithImpl<_$FormRowDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormRowDtoImplToJson(
      this,
    );
  }
}

abstract class _FormRowDto extends FormRowDto {
  factory _FormRowDto(
      {required final int rowNum,
      required final List<LayoutPercentDto> layoutXPercent,
      required final List<FormElementDto> formElements}) = _$FormRowDtoImpl;
  _FormRowDto._() : super._();

  factory _FormRowDto.fromJson(Map<String, dynamic> json) =
      _$FormRowDtoImpl.fromJson;

  @override
  int get rowNum;
  @override
  List<LayoutPercentDto> get layoutXPercent;
  @override
  List<FormElementDto> get formElements;
  @override
  @JsonKey(ignore: true)
  _$$FormRowDtoImplCopyWith<_$FormRowDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
