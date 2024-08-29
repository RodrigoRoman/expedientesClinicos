// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_section_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FormSectionDto _$FormSectionDtoFromJson(Map<String, dynamic> json) {
  return _FormSectionDto.fromJson(json);
}

/// @nodoc
mixin _$FormSectionDto {
  String get formId => throw _privateConstructorUsedError;
  String get sectionName => throw _privateConstructorUsedError;
  String get sectionType => throw _privateConstructorUsedError;
  CategoryDto get categoryDto => throw _privateConstructorUsedError;
  List<FormRowDto> get formRows => throw _privateConstructorUsedError;
  List<LayoutPercentDto> get layoutYPercent =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormSectionDtoCopyWith<FormSectionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormSectionDtoCopyWith<$Res> {
  factory $FormSectionDtoCopyWith(
          FormSectionDto value, $Res Function(FormSectionDto) then) =
      _$FormSectionDtoCopyWithImpl<$Res, FormSectionDto>;
  @useResult
  $Res call(
      {String formId,
      String sectionName,
      String sectionType,
      CategoryDto categoryDto,
      List<FormRowDto> formRows,
      List<LayoutPercentDto> layoutYPercent});

  $CategoryDtoCopyWith<$Res> get categoryDto;
}

/// @nodoc
class _$FormSectionDtoCopyWithImpl<$Res, $Val extends FormSectionDto>
    implements $FormSectionDtoCopyWith<$Res> {
  _$FormSectionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formId = null,
    Object? sectionName = null,
    Object? sectionType = null,
    Object? categoryDto = null,
    Object? formRows = null,
    Object? layoutYPercent = null,
  }) {
    return _then(_value.copyWith(
      formId: null == formId
          ? _value.formId
          : formId // ignore: cast_nullable_to_non_nullable
              as String,
      sectionName: null == sectionName
          ? _value.sectionName
          : sectionName // ignore: cast_nullable_to_non_nullable
              as String,
      sectionType: null == sectionType
          ? _value.sectionType
          : sectionType // ignore: cast_nullable_to_non_nullable
              as String,
      categoryDto: null == categoryDto
          ? _value.categoryDto
          : categoryDto // ignore: cast_nullable_to_non_nullable
              as CategoryDto,
      formRows: null == formRows
          ? _value.formRows
          : formRows // ignore: cast_nullable_to_non_nullable
              as List<FormRowDto>,
      layoutYPercent: null == layoutYPercent
          ? _value.layoutYPercent
          : layoutYPercent // ignore: cast_nullable_to_non_nullable
              as List<LayoutPercentDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryDtoCopyWith<$Res> get categoryDto {
    return $CategoryDtoCopyWith<$Res>(_value.categoryDto, (value) {
      return _then(_value.copyWith(categoryDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FormSectionDtoImplCopyWith<$Res>
    implements $FormSectionDtoCopyWith<$Res> {
  factory _$$FormSectionDtoImplCopyWith(_$FormSectionDtoImpl value,
          $Res Function(_$FormSectionDtoImpl) then) =
      __$$FormSectionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String formId,
      String sectionName,
      String sectionType,
      CategoryDto categoryDto,
      List<FormRowDto> formRows,
      List<LayoutPercentDto> layoutYPercent});

  @override
  $CategoryDtoCopyWith<$Res> get categoryDto;
}

/// @nodoc
class __$$FormSectionDtoImplCopyWithImpl<$Res>
    extends _$FormSectionDtoCopyWithImpl<$Res, _$FormSectionDtoImpl>
    implements _$$FormSectionDtoImplCopyWith<$Res> {
  __$$FormSectionDtoImplCopyWithImpl(
      _$FormSectionDtoImpl _value, $Res Function(_$FormSectionDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formId = null,
    Object? sectionName = null,
    Object? sectionType = null,
    Object? categoryDto = null,
    Object? formRows = null,
    Object? layoutYPercent = null,
  }) {
    return _then(_$FormSectionDtoImpl(
      formId: null == formId
          ? _value.formId
          : formId // ignore: cast_nullable_to_non_nullable
              as String,
      sectionName: null == sectionName
          ? _value.sectionName
          : sectionName // ignore: cast_nullable_to_non_nullable
              as String,
      sectionType: null == sectionType
          ? _value.sectionType
          : sectionType // ignore: cast_nullable_to_non_nullable
              as String,
      categoryDto: null == categoryDto
          ? _value.categoryDto
          : categoryDto // ignore: cast_nullable_to_non_nullable
              as CategoryDto,
      formRows: null == formRows
          ? _value._formRows
          : formRows // ignore: cast_nullable_to_non_nullable
              as List<FormRowDto>,
      layoutYPercent: null == layoutYPercent
          ? _value._layoutYPercent
          : layoutYPercent // ignore: cast_nullable_to_non_nullable
              as List<LayoutPercentDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormSectionDtoImpl extends _FormSectionDto {
  _$FormSectionDtoImpl(
      {required this.formId,
      required this.sectionName,
      required this.sectionType,
      required this.categoryDto,
      required final List<FormRowDto> formRows,
      required final List<LayoutPercentDto> layoutYPercent})
      : _formRows = formRows,
        _layoutYPercent = layoutYPercent,
        super._();

  factory _$FormSectionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormSectionDtoImplFromJson(json);

  @override
  final String formId;
  @override
  final String sectionName;
  @override
  final String sectionType;
  @override
  final CategoryDto categoryDto;
  final List<FormRowDto> _formRows;
  @override
  List<FormRowDto> get formRows {
    if (_formRows is EqualUnmodifiableListView) return _formRows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_formRows);
  }

  final List<LayoutPercentDto> _layoutYPercent;
  @override
  List<LayoutPercentDto> get layoutYPercent {
    if (_layoutYPercent is EqualUnmodifiableListView) return _layoutYPercent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_layoutYPercent);
  }

  @override
  String toString() {
    return 'FormSectionDto(formId: $formId, sectionName: $sectionName, sectionType: $sectionType, categoryDto: $categoryDto, formRows: $formRows, layoutYPercent: $layoutYPercent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormSectionDtoImpl &&
            (identical(other.formId, formId) || other.formId == formId) &&
            (identical(other.sectionName, sectionName) ||
                other.sectionName == sectionName) &&
            (identical(other.sectionType, sectionType) ||
                other.sectionType == sectionType) &&
            (identical(other.categoryDto, categoryDto) ||
                other.categoryDto == categoryDto) &&
            const DeepCollectionEquality().equals(other._formRows, _formRows) &&
            const DeepCollectionEquality()
                .equals(other._layoutYPercent, _layoutYPercent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      formId,
      sectionName,
      sectionType,
      categoryDto,
      const DeepCollectionEquality().hash(_formRows),
      const DeepCollectionEquality().hash(_layoutYPercent));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormSectionDtoImplCopyWith<_$FormSectionDtoImpl> get copyWith =>
      __$$FormSectionDtoImplCopyWithImpl<_$FormSectionDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormSectionDtoImplToJson(
      this,
    );
  }
}

abstract class _FormSectionDto extends FormSectionDto {
  factory _FormSectionDto(
          {required final String formId,
          required final String sectionName,
          required final String sectionType,
          required final CategoryDto categoryDto,
          required final List<FormRowDto> formRows,
          required final List<LayoutPercentDto> layoutYPercent}) =
      _$FormSectionDtoImpl;
  _FormSectionDto._() : super._();

  factory _FormSectionDto.fromJson(Map<String, dynamic> json) =
      _$FormSectionDtoImpl.fromJson;

  @override
  String get formId;
  @override
  String get sectionName;
  @override
  String get sectionType;
  @override
  CategoryDto get categoryDto;
  @override
  List<FormRowDto> get formRows;
  @override
  List<LayoutPercentDto> get layoutYPercent;
  @override
  @JsonKey(ignore: true)
  _$$FormSectionDtoImplCopyWith<_$FormSectionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
