// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FormSection {
  NonEmptyString get sectionName =>
      throw _privateConstructorUsedError; // The form will be for multiselect
// Multiselect-Toggle-FieldBased (will be presented as chips)
  NonEmptySectionType get sectionType =>
      throw _privateConstructorUsedError; // The form will be hierarchical toggle
  UniqueId get formId => throw _privateConstructorUsedError;
  List3<FormRow> get formRows => throw _privateConstructorUsedError;
  List3<LayoutPercent> get layoutYPercent =>
      throw _privateConstructorUsedError; //x percentage distribution
// Useful for separating Forms into departaments:
// Hospital, Administration, Neurology, Pharmacy, etc
  Category get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormSectionCopyWith<FormSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormSectionCopyWith<$Res> {
  factory $FormSectionCopyWith(
          FormSection value, $Res Function(FormSection) then) =
      _$FormSectionCopyWithImpl<$Res, FormSection>;
  @useResult
  $Res call(
      {NonEmptyString sectionName,
      NonEmptySectionType sectionType,
      UniqueId formId,
      List3<FormRow> formRows,
      List3<LayoutPercent> layoutYPercent,
      Category category});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$FormSectionCopyWithImpl<$Res, $Val extends FormSection>
    implements $FormSectionCopyWith<$Res> {
  _$FormSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sectionName = null,
    Object? sectionType = null,
    Object? formId = null,
    Object? formRows = null,
    Object? layoutYPercent = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      sectionName: null == sectionName
          ? _value.sectionName
          : sectionName // ignore: cast_nullable_to_non_nullable
              as NonEmptyString,
      sectionType: null == sectionType
          ? _value.sectionType
          : sectionType // ignore: cast_nullable_to_non_nullable
              as NonEmptySectionType,
      formId: null == formId
          ? _value.formId
          : formId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      formRows: null == formRows
          ? _value.formRows
          : formRows // ignore: cast_nullable_to_non_nullable
              as List3<FormRow>,
      layoutYPercent: null == layoutYPercent
          ? _value.layoutYPercent
          : layoutYPercent // ignore: cast_nullable_to_non_nullable
              as List3<LayoutPercent>,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FormSectionImplCopyWith<$Res>
    implements $FormSectionCopyWith<$Res> {
  factory _$$FormSectionImplCopyWith(
          _$FormSectionImpl value, $Res Function(_$FormSectionImpl) then) =
      __$$FormSectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NonEmptyString sectionName,
      NonEmptySectionType sectionType,
      UniqueId formId,
      List3<FormRow> formRows,
      List3<LayoutPercent> layoutYPercent,
      Category category});

  @override
  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$FormSectionImplCopyWithImpl<$Res>
    extends _$FormSectionCopyWithImpl<$Res, _$FormSectionImpl>
    implements _$$FormSectionImplCopyWith<$Res> {
  __$$FormSectionImplCopyWithImpl(
      _$FormSectionImpl _value, $Res Function(_$FormSectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sectionName = null,
    Object? sectionType = null,
    Object? formId = null,
    Object? formRows = null,
    Object? layoutYPercent = null,
    Object? category = null,
  }) {
    return _then(_$FormSectionImpl(
      sectionName: null == sectionName
          ? _value.sectionName
          : sectionName // ignore: cast_nullable_to_non_nullable
              as NonEmptyString,
      sectionType: null == sectionType
          ? _value.sectionType
          : sectionType // ignore: cast_nullable_to_non_nullable
              as NonEmptySectionType,
      formId: null == formId
          ? _value.formId
          : formId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      formRows: null == formRows
          ? _value.formRows
          : formRows // ignore: cast_nullable_to_non_nullable
              as List3<FormRow>,
      layoutYPercent: null == layoutYPercent
          ? _value.layoutYPercent
          : layoutYPercent // ignore: cast_nullable_to_non_nullable
              as List3<LayoutPercent>,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }
}

/// @nodoc

class _$FormSectionImpl extends _FormSection with DiagnosticableTreeMixin {
  const _$FormSectionImpl(
      {required this.sectionName,
      required this.sectionType,
      required this.formId,
      required this.formRows,
      required this.layoutYPercent,
      required this.category})
      : super._();

  @override
  final NonEmptyString sectionName;
// The form will be for multiselect
// Multiselect-Toggle-FieldBased (will be presented as chips)
  @override
  final NonEmptySectionType sectionType;
// The form will be hierarchical toggle
  @override
  final UniqueId formId;
  @override
  final List3<FormRow> formRows;
  @override
  final List3<LayoutPercent> layoutYPercent;
//x percentage distribution
// Useful for separating Forms into departaments:
// Hospital, Administration, Neurology, Pharmacy, etc
  @override
  final Category category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FormSection(sectionName: $sectionName, sectionType: $sectionType, formId: $formId, formRows: $formRows, layoutYPercent: $layoutYPercent, category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FormSection'))
      ..add(DiagnosticsProperty('sectionName', sectionName))
      ..add(DiagnosticsProperty('sectionType', sectionType))
      ..add(DiagnosticsProperty('formId', formId))
      ..add(DiagnosticsProperty('formRows', formRows))
      ..add(DiagnosticsProperty('layoutYPercent', layoutYPercent))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormSectionImpl &&
            (identical(other.sectionName, sectionName) ||
                other.sectionName == sectionName) &&
            (identical(other.sectionType, sectionType) ||
                other.sectionType == sectionType) &&
            (identical(other.formId, formId) || other.formId == formId) &&
            (identical(other.formRows, formRows) ||
                other.formRows == formRows) &&
            (identical(other.layoutYPercent, layoutYPercent) ||
                other.layoutYPercent == layoutYPercent) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sectionName, sectionType, formId,
      formRows, layoutYPercent, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormSectionImplCopyWith<_$FormSectionImpl> get copyWith =>
      __$$FormSectionImplCopyWithImpl<_$FormSectionImpl>(this, _$identity);
}

abstract class _FormSection extends FormSection {
  const factory _FormSection(
      {required final NonEmptyString sectionName,
      required final NonEmptySectionType sectionType,
      required final UniqueId formId,
      required final List3<FormRow> formRows,
      required final List3<LayoutPercent> layoutYPercent,
      required final Category category}) = _$FormSectionImpl;
  const _FormSection._() : super._();

  @override
  NonEmptyString get sectionName;
  @override // The form will be for multiselect
// Multiselect-Toggle-FieldBased (will be presented as chips)
  NonEmptySectionType get sectionType;
  @override // The form will be hierarchical toggle
  UniqueId get formId;
  @override
  List3<FormRow> get formRows;
  @override
  List3<LayoutPercent> get layoutYPercent;
  @override //x percentage distribution
// Useful for separating Forms into departaments:
// Hospital, Administration, Neurology, Pharmacy, etc
  Category get category;
  @override
  @JsonKey(ignore: true)
  _$$FormSectionImplCopyWith<_$FormSectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
