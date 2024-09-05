// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_form_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DynamicFormFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<FormSection> intialDynamicFormOption)
        intial,
    required TResult Function(String sectionName) sectionNameChanged,
    required TResult Function(SectionTypes sectionType) sectionTypeChanged,
    required TResult Function(List<FormRow> formRows) formRowsChanged,
    required TResult Function(
            FormElement formElement, dynamic newValue, int rowIndex)
        changeFormElementValue,
    required TResult Function(List<LayoutPercent> layoutPercent)
        layoutYPercentChanged,
    required TResult Function(Category category) categoryChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<FormSection> intialDynamicFormOption)? intial,
    TResult? Function(String sectionName)? sectionNameChanged,
    TResult? Function(SectionTypes sectionType)? sectionTypeChanged,
    TResult? Function(List<FormRow> formRows)? formRowsChanged,
    TResult? Function(FormElement formElement, dynamic newValue, int rowIndex)?
        changeFormElementValue,
    TResult? Function(List<LayoutPercent> layoutPercent)? layoutYPercentChanged,
    TResult? Function(Category category)? categoryChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<FormSection> intialDynamicFormOption)? intial,
    TResult Function(String sectionName)? sectionNameChanged,
    TResult Function(SectionTypes sectionType)? sectionTypeChanged,
    TResult Function(List<FormRow> formRows)? formRowsChanged,
    TResult Function(FormElement formElement, dynamic newValue, int rowIndex)?
        changeFormElementValue,
    TResult Function(List<LayoutPercent> layoutPercent)? layoutYPercentChanged,
    TResult Function(Category category)? categoryChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_SectionNameChanged value) sectionNameChanged,
    required TResult Function(_SectionTypeChanged value) sectionTypeChanged,
    required TResult Function(_FormRowsChanged value) formRowsChanged,
    required TResult Function(_ValueFormElementChanged value)
        changeFormElementValue,
    required TResult Function(_LayoutYPercentChanged value)
        layoutYPercentChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_SectionNameChanged value)? sectionNameChanged,
    TResult? Function(_SectionTypeChanged value)? sectionTypeChanged,
    TResult? Function(_FormRowsChanged value)? formRowsChanged,
    TResult? Function(_ValueFormElementChanged value)? changeFormElementValue,
    TResult? Function(_LayoutYPercentChanged value)? layoutYPercentChanged,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_SectionNameChanged value)? sectionNameChanged,
    TResult Function(_SectionTypeChanged value)? sectionTypeChanged,
    TResult Function(_FormRowsChanged value)? formRowsChanged,
    TResult Function(_ValueFormElementChanged value)? changeFormElementValue,
    TResult Function(_LayoutYPercentChanged value)? layoutYPercentChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicFormFormEventCopyWith<$Res> {
  factory $DynamicFormFormEventCopyWith(DynamicFormFormEvent value,
          $Res Function(DynamicFormFormEvent) then) =
      _$DynamicFormFormEventCopyWithImpl<$Res, DynamicFormFormEvent>;
}

/// @nodoc
class _$DynamicFormFormEventCopyWithImpl<$Res,
        $Val extends DynamicFormFormEvent>
    implements $DynamicFormFormEventCopyWith<$Res> {
  _$DynamicFormFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<FormSection> intialDynamicFormOption});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$DynamicFormFormEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intialDynamicFormOption = null,
  }) {
    return _then(_$InitializedImpl(
      null == intialDynamicFormOption
          ? _value.intialDynamicFormOption
          : intialDynamicFormOption // ignore: cast_nullable_to_non_nullable
              as Option<FormSection>,
    ));
  }
}

/// @nodoc

class _$InitializedImpl with DiagnosticableTreeMixin implements _Initialized {
  const _$InitializedImpl(this.intialDynamicFormOption);

  @override
  final Option<FormSection> intialDynamicFormOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DynamicFormFormEvent.intial(intialDynamicFormOption: $intialDynamicFormOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DynamicFormFormEvent.intial'))
      ..add(DiagnosticsProperty(
          'intialDynamicFormOption', intialDynamicFormOption));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(
                    other.intialDynamicFormOption, intialDynamicFormOption) ||
                other.intialDynamicFormOption == intialDynamicFormOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, intialDynamicFormOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<FormSection> intialDynamicFormOption)
        intial,
    required TResult Function(String sectionName) sectionNameChanged,
    required TResult Function(SectionTypes sectionType) sectionTypeChanged,
    required TResult Function(List<FormRow> formRows) formRowsChanged,
    required TResult Function(
            FormElement formElement, dynamic newValue, int rowIndex)
        changeFormElementValue,
    required TResult Function(List<LayoutPercent> layoutPercent)
        layoutYPercentChanged,
    required TResult Function(Category category) categoryChanged,
    required TResult Function() saved,
  }) {
    return intial(intialDynamicFormOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<FormSection> intialDynamicFormOption)? intial,
    TResult? Function(String sectionName)? sectionNameChanged,
    TResult? Function(SectionTypes sectionType)? sectionTypeChanged,
    TResult? Function(List<FormRow> formRows)? formRowsChanged,
    TResult? Function(FormElement formElement, dynamic newValue, int rowIndex)?
        changeFormElementValue,
    TResult? Function(List<LayoutPercent> layoutPercent)? layoutYPercentChanged,
    TResult? Function(Category category)? categoryChanged,
    TResult? Function()? saved,
  }) {
    return intial?.call(intialDynamicFormOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<FormSection> intialDynamicFormOption)? intial,
    TResult Function(String sectionName)? sectionNameChanged,
    TResult Function(SectionTypes sectionType)? sectionTypeChanged,
    TResult Function(List<FormRow> formRows)? formRowsChanged,
    TResult Function(FormElement formElement, dynamic newValue, int rowIndex)?
        changeFormElementValue,
    TResult Function(List<LayoutPercent> layoutPercent)? layoutYPercentChanged,
    TResult Function(Category category)? categoryChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial(intialDynamicFormOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_SectionNameChanged value) sectionNameChanged,
    required TResult Function(_SectionTypeChanged value) sectionTypeChanged,
    required TResult Function(_FormRowsChanged value) formRowsChanged,
    required TResult Function(_ValueFormElementChanged value)
        changeFormElementValue,
    required TResult Function(_LayoutYPercentChanged value)
        layoutYPercentChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return intial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_SectionNameChanged value)? sectionNameChanged,
    TResult? Function(_SectionTypeChanged value)? sectionTypeChanged,
    TResult? Function(_FormRowsChanged value)? formRowsChanged,
    TResult? Function(_ValueFormElementChanged value)? changeFormElementValue,
    TResult? Function(_LayoutYPercentChanged value)? layoutYPercentChanged,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return intial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_SectionNameChanged value)? sectionNameChanged,
    TResult Function(_SectionTypeChanged value)? sectionTypeChanged,
    TResult Function(_FormRowsChanged value)? formRowsChanged,
    TResult Function(_ValueFormElementChanged value)? changeFormElementValue,
    TResult Function(_LayoutYPercentChanged value)? layoutYPercentChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements DynamicFormFormEvent {
  const factory _Initialized(
      final Option<FormSection> intialDynamicFormOption) = _$InitializedImpl;

  Option<FormSection> get intialDynamicFormOption;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SectionNameChangedImplCopyWith<$Res> {
  factory _$$SectionNameChangedImplCopyWith(_$SectionNameChangedImpl value,
          $Res Function(_$SectionNameChangedImpl) then) =
      __$$SectionNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String sectionName});
}

/// @nodoc
class __$$SectionNameChangedImplCopyWithImpl<$Res>
    extends _$DynamicFormFormEventCopyWithImpl<$Res, _$SectionNameChangedImpl>
    implements _$$SectionNameChangedImplCopyWith<$Res> {
  __$$SectionNameChangedImplCopyWithImpl(_$SectionNameChangedImpl _value,
      $Res Function(_$SectionNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sectionName = null,
  }) {
    return _then(_$SectionNameChangedImpl(
      null == sectionName
          ? _value.sectionName
          : sectionName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SectionNameChangedImpl
    with DiagnosticableTreeMixin
    implements _SectionNameChanged {
  const _$SectionNameChangedImpl(this.sectionName);

  @override
  final String sectionName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DynamicFormFormEvent.sectionNameChanged(sectionName: $sectionName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'DynamicFormFormEvent.sectionNameChanged'))
      ..add(DiagnosticsProperty('sectionName', sectionName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionNameChangedImpl &&
            (identical(other.sectionName, sectionName) ||
                other.sectionName == sectionName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sectionName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionNameChangedImplCopyWith<_$SectionNameChangedImpl> get copyWith =>
      __$$SectionNameChangedImplCopyWithImpl<_$SectionNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<FormSection> intialDynamicFormOption)
        intial,
    required TResult Function(String sectionName) sectionNameChanged,
    required TResult Function(SectionTypes sectionType) sectionTypeChanged,
    required TResult Function(List<FormRow> formRows) formRowsChanged,
    required TResult Function(
            FormElement formElement, dynamic newValue, int rowIndex)
        changeFormElementValue,
    required TResult Function(List<LayoutPercent> layoutPercent)
        layoutYPercentChanged,
    required TResult Function(Category category) categoryChanged,
    required TResult Function() saved,
  }) {
    return sectionNameChanged(sectionName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<FormSection> intialDynamicFormOption)? intial,
    TResult? Function(String sectionName)? sectionNameChanged,
    TResult? Function(SectionTypes sectionType)? sectionTypeChanged,
    TResult? Function(List<FormRow> formRows)? formRowsChanged,
    TResult? Function(FormElement formElement, dynamic newValue, int rowIndex)?
        changeFormElementValue,
    TResult? Function(List<LayoutPercent> layoutPercent)? layoutYPercentChanged,
    TResult? Function(Category category)? categoryChanged,
    TResult? Function()? saved,
  }) {
    return sectionNameChanged?.call(sectionName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<FormSection> intialDynamicFormOption)? intial,
    TResult Function(String sectionName)? sectionNameChanged,
    TResult Function(SectionTypes sectionType)? sectionTypeChanged,
    TResult Function(List<FormRow> formRows)? formRowsChanged,
    TResult Function(FormElement formElement, dynamic newValue, int rowIndex)?
        changeFormElementValue,
    TResult Function(List<LayoutPercent> layoutPercent)? layoutYPercentChanged,
    TResult Function(Category category)? categoryChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (sectionNameChanged != null) {
      return sectionNameChanged(sectionName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_SectionNameChanged value) sectionNameChanged,
    required TResult Function(_SectionTypeChanged value) sectionTypeChanged,
    required TResult Function(_FormRowsChanged value) formRowsChanged,
    required TResult Function(_ValueFormElementChanged value)
        changeFormElementValue,
    required TResult Function(_LayoutYPercentChanged value)
        layoutYPercentChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return sectionNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_SectionNameChanged value)? sectionNameChanged,
    TResult? Function(_SectionTypeChanged value)? sectionTypeChanged,
    TResult? Function(_FormRowsChanged value)? formRowsChanged,
    TResult? Function(_ValueFormElementChanged value)? changeFormElementValue,
    TResult? Function(_LayoutYPercentChanged value)? layoutYPercentChanged,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return sectionNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_SectionNameChanged value)? sectionNameChanged,
    TResult Function(_SectionTypeChanged value)? sectionTypeChanged,
    TResult Function(_FormRowsChanged value)? formRowsChanged,
    TResult Function(_ValueFormElementChanged value)? changeFormElementValue,
    TResult Function(_LayoutYPercentChanged value)? layoutYPercentChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (sectionNameChanged != null) {
      return sectionNameChanged(this);
    }
    return orElse();
  }
}

abstract class _SectionNameChanged implements DynamicFormFormEvent {
  const factory _SectionNameChanged(final String sectionName) =
      _$SectionNameChangedImpl;

  String get sectionName;
  @JsonKey(ignore: true)
  _$$SectionNameChangedImplCopyWith<_$SectionNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SectionTypeChangedImplCopyWith<$Res> {
  factory _$$SectionTypeChangedImplCopyWith(_$SectionTypeChangedImpl value,
          $Res Function(_$SectionTypeChangedImpl) then) =
      __$$SectionTypeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SectionTypes sectionType});
}

/// @nodoc
class __$$SectionTypeChangedImplCopyWithImpl<$Res>
    extends _$DynamicFormFormEventCopyWithImpl<$Res, _$SectionTypeChangedImpl>
    implements _$$SectionTypeChangedImplCopyWith<$Res> {
  __$$SectionTypeChangedImplCopyWithImpl(_$SectionTypeChangedImpl _value,
      $Res Function(_$SectionTypeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sectionType = null,
  }) {
    return _then(_$SectionTypeChangedImpl(
      null == sectionType
          ? _value.sectionType
          : sectionType // ignore: cast_nullable_to_non_nullable
              as SectionTypes,
    ));
  }
}

/// @nodoc

class _$SectionTypeChangedImpl
    with DiagnosticableTreeMixin
    implements _SectionTypeChanged {
  const _$SectionTypeChangedImpl(this.sectionType);

  @override
  final SectionTypes sectionType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DynamicFormFormEvent.sectionTypeChanged(sectionType: $sectionType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'DynamicFormFormEvent.sectionTypeChanged'))
      ..add(DiagnosticsProperty('sectionType', sectionType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionTypeChangedImpl &&
            (identical(other.sectionType, sectionType) ||
                other.sectionType == sectionType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sectionType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionTypeChangedImplCopyWith<_$SectionTypeChangedImpl> get copyWith =>
      __$$SectionTypeChangedImplCopyWithImpl<_$SectionTypeChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<FormSection> intialDynamicFormOption)
        intial,
    required TResult Function(String sectionName) sectionNameChanged,
    required TResult Function(SectionTypes sectionType) sectionTypeChanged,
    required TResult Function(List<FormRow> formRows) formRowsChanged,
    required TResult Function(
            FormElement formElement, dynamic newValue, int rowIndex)
        changeFormElementValue,
    required TResult Function(List<LayoutPercent> layoutPercent)
        layoutYPercentChanged,
    required TResult Function(Category category) categoryChanged,
    required TResult Function() saved,
  }) {
    return sectionTypeChanged(sectionType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<FormSection> intialDynamicFormOption)? intial,
    TResult? Function(String sectionName)? sectionNameChanged,
    TResult? Function(SectionTypes sectionType)? sectionTypeChanged,
    TResult? Function(List<FormRow> formRows)? formRowsChanged,
    TResult? Function(FormElement formElement, dynamic newValue, int rowIndex)?
        changeFormElementValue,
    TResult? Function(List<LayoutPercent> layoutPercent)? layoutYPercentChanged,
    TResult? Function(Category category)? categoryChanged,
    TResult? Function()? saved,
  }) {
    return sectionTypeChanged?.call(sectionType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<FormSection> intialDynamicFormOption)? intial,
    TResult Function(String sectionName)? sectionNameChanged,
    TResult Function(SectionTypes sectionType)? sectionTypeChanged,
    TResult Function(List<FormRow> formRows)? formRowsChanged,
    TResult Function(FormElement formElement, dynamic newValue, int rowIndex)?
        changeFormElementValue,
    TResult Function(List<LayoutPercent> layoutPercent)? layoutYPercentChanged,
    TResult Function(Category category)? categoryChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (sectionTypeChanged != null) {
      return sectionTypeChanged(sectionType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_SectionNameChanged value) sectionNameChanged,
    required TResult Function(_SectionTypeChanged value) sectionTypeChanged,
    required TResult Function(_FormRowsChanged value) formRowsChanged,
    required TResult Function(_ValueFormElementChanged value)
        changeFormElementValue,
    required TResult Function(_LayoutYPercentChanged value)
        layoutYPercentChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return sectionTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_SectionNameChanged value)? sectionNameChanged,
    TResult? Function(_SectionTypeChanged value)? sectionTypeChanged,
    TResult? Function(_FormRowsChanged value)? formRowsChanged,
    TResult? Function(_ValueFormElementChanged value)? changeFormElementValue,
    TResult? Function(_LayoutYPercentChanged value)? layoutYPercentChanged,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return sectionTypeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_SectionNameChanged value)? sectionNameChanged,
    TResult Function(_SectionTypeChanged value)? sectionTypeChanged,
    TResult Function(_FormRowsChanged value)? formRowsChanged,
    TResult Function(_ValueFormElementChanged value)? changeFormElementValue,
    TResult Function(_LayoutYPercentChanged value)? layoutYPercentChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (sectionTypeChanged != null) {
      return sectionTypeChanged(this);
    }
    return orElse();
  }
}

abstract class _SectionTypeChanged implements DynamicFormFormEvent {
  const factory _SectionTypeChanged(final SectionTypes sectionType) =
      _$SectionTypeChangedImpl;

  SectionTypes get sectionType;
  @JsonKey(ignore: true)
  _$$SectionTypeChangedImplCopyWith<_$SectionTypeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormRowsChangedImplCopyWith<$Res> {
  factory _$$FormRowsChangedImplCopyWith(_$FormRowsChangedImpl value,
          $Res Function(_$FormRowsChangedImpl) then) =
      __$$FormRowsChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FormRow> formRows});
}

/// @nodoc
class __$$FormRowsChangedImplCopyWithImpl<$Res>
    extends _$DynamicFormFormEventCopyWithImpl<$Res, _$FormRowsChangedImpl>
    implements _$$FormRowsChangedImplCopyWith<$Res> {
  __$$FormRowsChangedImplCopyWithImpl(
      _$FormRowsChangedImpl _value, $Res Function(_$FormRowsChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formRows = null,
  }) {
    return _then(_$FormRowsChangedImpl(
      null == formRows
          ? _value._formRows
          : formRows // ignore: cast_nullable_to_non_nullable
              as List<FormRow>,
    ));
  }
}

/// @nodoc

class _$FormRowsChangedImpl
    with DiagnosticableTreeMixin
    implements _FormRowsChanged {
  const _$FormRowsChangedImpl(final List<FormRow> formRows)
      : _formRows = formRows;

  final List<FormRow> _formRows;
  @override
  List<FormRow> get formRows {
    if (_formRows is EqualUnmodifiableListView) return _formRows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_formRows);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DynamicFormFormEvent.formRowsChanged(formRows: $formRows)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DynamicFormFormEvent.formRowsChanged'))
      ..add(DiagnosticsProperty('formRows', formRows));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormRowsChangedImpl &&
            const DeepCollectionEquality().equals(other._formRows, _formRows));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_formRows));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormRowsChangedImplCopyWith<_$FormRowsChangedImpl> get copyWith =>
      __$$FormRowsChangedImplCopyWithImpl<_$FormRowsChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<FormSection> intialDynamicFormOption)
        intial,
    required TResult Function(String sectionName) sectionNameChanged,
    required TResult Function(SectionTypes sectionType) sectionTypeChanged,
    required TResult Function(List<FormRow> formRows) formRowsChanged,
    required TResult Function(
            FormElement formElement, dynamic newValue, int rowIndex)
        changeFormElementValue,
    required TResult Function(List<LayoutPercent> layoutPercent)
        layoutYPercentChanged,
    required TResult Function(Category category) categoryChanged,
    required TResult Function() saved,
  }) {
    return formRowsChanged(formRows);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<FormSection> intialDynamicFormOption)? intial,
    TResult? Function(String sectionName)? sectionNameChanged,
    TResult? Function(SectionTypes sectionType)? sectionTypeChanged,
    TResult? Function(List<FormRow> formRows)? formRowsChanged,
    TResult? Function(FormElement formElement, dynamic newValue, int rowIndex)?
        changeFormElementValue,
    TResult? Function(List<LayoutPercent> layoutPercent)? layoutYPercentChanged,
    TResult? Function(Category category)? categoryChanged,
    TResult? Function()? saved,
  }) {
    return formRowsChanged?.call(formRows);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<FormSection> intialDynamicFormOption)? intial,
    TResult Function(String sectionName)? sectionNameChanged,
    TResult Function(SectionTypes sectionType)? sectionTypeChanged,
    TResult Function(List<FormRow> formRows)? formRowsChanged,
    TResult Function(FormElement formElement, dynamic newValue, int rowIndex)?
        changeFormElementValue,
    TResult Function(List<LayoutPercent> layoutPercent)? layoutYPercentChanged,
    TResult Function(Category category)? categoryChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (formRowsChanged != null) {
      return formRowsChanged(formRows);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_SectionNameChanged value) sectionNameChanged,
    required TResult Function(_SectionTypeChanged value) sectionTypeChanged,
    required TResult Function(_FormRowsChanged value) formRowsChanged,
    required TResult Function(_ValueFormElementChanged value)
        changeFormElementValue,
    required TResult Function(_LayoutYPercentChanged value)
        layoutYPercentChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return formRowsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_SectionNameChanged value)? sectionNameChanged,
    TResult? Function(_SectionTypeChanged value)? sectionTypeChanged,
    TResult? Function(_FormRowsChanged value)? formRowsChanged,
    TResult? Function(_ValueFormElementChanged value)? changeFormElementValue,
    TResult? Function(_LayoutYPercentChanged value)? layoutYPercentChanged,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return formRowsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_SectionNameChanged value)? sectionNameChanged,
    TResult Function(_SectionTypeChanged value)? sectionTypeChanged,
    TResult Function(_FormRowsChanged value)? formRowsChanged,
    TResult Function(_ValueFormElementChanged value)? changeFormElementValue,
    TResult Function(_LayoutYPercentChanged value)? layoutYPercentChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (formRowsChanged != null) {
      return formRowsChanged(this);
    }
    return orElse();
  }
}

abstract class _FormRowsChanged implements DynamicFormFormEvent {
  const factory _FormRowsChanged(final List<FormRow> formRows) =
      _$FormRowsChangedImpl;

  List<FormRow> get formRows;
  @JsonKey(ignore: true)
  _$$FormRowsChangedImplCopyWith<_$FormRowsChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValueFormElementChangedImplCopyWith<$Res> {
  factory _$$ValueFormElementChangedImplCopyWith(
          _$ValueFormElementChangedImpl value,
          $Res Function(_$ValueFormElementChangedImpl) then) =
      __$$ValueFormElementChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FormElement formElement, dynamic newValue, int rowIndex});
}

/// @nodoc
class __$$ValueFormElementChangedImplCopyWithImpl<$Res>
    extends _$DynamicFormFormEventCopyWithImpl<$Res,
        _$ValueFormElementChangedImpl>
    implements _$$ValueFormElementChangedImplCopyWith<$Res> {
  __$$ValueFormElementChangedImplCopyWithImpl(
      _$ValueFormElementChangedImpl _value,
      $Res Function(_$ValueFormElementChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formElement = null,
    Object? newValue = freezed,
    Object? rowIndex = null,
  }) {
    return _then(_$ValueFormElementChangedImpl(
      null == formElement
          ? _value.formElement
          : formElement // ignore: cast_nullable_to_non_nullable
              as FormElement,
      freezed == newValue
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      null == rowIndex
          ? _value.rowIndex
          : rowIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ValueFormElementChangedImpl
    with DiagnosticableTreeMixin
    implements _ValueFormElementChanged {
  const _$ValueFormElementChangedImpl(
      this.formElement, this.newValue, this.rowIndex);

  @override
  final FormElement formElement;
  @override
  final dynamic newValue;
  @override
  final int rowIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DynamicFormFormEvent.changeFormElementValue(formElement: $formElement, newValue: $newValue, rowIndex: $rowIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'DynamicFormFormEvent.changeFormElementValue'))
      ..add(DiagnosticsProperty('formElement', formElement))
      ..add(DiagnosticsProperty('newValue', newValue))
      ..add(DiagnosticsProperty('rowIndex', rowIndex));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueFormElementChangedImpl &&
            (identical(other.formElement, formElement) ||
                other.formElement == formElement) &&
            const DeepCollectionEquality().equals(other.newValue, newValue) &&
            (identical(other.rowIndex, rowIndex) ||
                other.rowIndex == rowIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formElement,
      const DeepCollectionEquality().hash(newValue), rowIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueFormElementChangedImplCopyWith<_$ValueFormElementChangedImpl>
      get copyWith => __$$ValueFormElementChangedImplCopyWithImpl<
          _$ValueFormElementChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<FormSection> intialDynamicFormOption)
        intial,
    required TResult Function(String sectionName) sectionNameChanged,
    required TResult Function(SectionTypes sectionType) sectionTypeChanged,
    required TResult Function(List<FormRow> formRows) formRowsChanged,
    required TResult Function(
            FormElement formElement, dynamic newValue, int rowIndex)
        changeFormElementValue,
    required TResult Function(List<LayoutPercent> layoutPercent)
        layoutYPercentChanged,
    required TResult Function(Category category) categoryChanged,
    required TResult Function() saved,
  }) {
    return changeFormElementValue(formElement, newValue, rowIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<FormSection> intialDynamicFormOption)? intial,
    TResult? Function(String sectionName)? sectionNameChanged,
    TResult? Function(SectionTypes sectionType)? sectionTypeChanged,
    TResult? Function(List<FormRow> formRows)? formRowsChanged,
    TResult? Function(FormElement formElement, dynamic newValue, int rowIndex)?
        changeFormElementValue,
    TResult? Function(List<LayoutPercent> layoutPercent)? layoutYPercentChanged,
    TResult? Function(Category category)? categoryChanged,
    TResult? Function()? saved,
  }) {
    return changeFormElementValue?.call(formElement, newValue, rowIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<FormSection> intialDynamicFormOption)? intial,
    TResult Function(String sectionName)? sectionNameChanged,
    TResult Function(SectionTypes sectionType)? sectionTypeChanged,
    TResult Function(List<FormRow> formRows)? formRowsChanged,
    TResult Function(FormElement formElement, dynamic newValue, int rowIndex)?
        changeFormElementValue,
    TResult Function(List<LayoutPercent> layoutPercent)? layoutYPercentChanged,
    TResult Function(Category category)? categoryChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (changeFormElementValue != null) {
      return changeFormElementValue(formElement, newValue, rowIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_SectionNameChanged value) sectionNameChanged,
    required TResult Function(_SectionTypeChanged value) sectionTypeChanged,
    required TResult Function(_FormRowsChanged value) formRowsChanged,
    required TResult Function(_ValueFormElementChanged value)
        changeFormElementValue,
    required TResult Function(_LayoutYPercentChanged value)
        layoutYPercentChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return changeFormElementValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_SectionNameChanged value)? sectionNameChanged,
    TResult? Function(_SectionTypeChanged value)? sectionTypeChanged,
    TResult? Function(_FormRowsChanged value)? formRowsChanged,
    TResult? Function(_ValueFormElementChanged value)? changeFormElementValue,
    TResult? Function(_LayoutYPercentChanged value)? layoutYPercentChanged,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return changeFormElementValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_SectionNameChanged value)? sectionNameChanged,
    TResult Function(_SectionTypeChanged value)? sectionTypeChanged,
    TResult Function(_FormRowsChanged value)? formRowsChanged,
    TResult Function(_ValueFormElementChanged value)? changeFormElementValue,
    TResult Function(_LayoutYPercentChanged value)? layoutYPercentChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (changeFormElementValue != null) {
      return changeFormElementValue(this);
    }
    return orElse();
  }
}

abstract class _ValueFormElementChanged implements DynamicFormFormEvent {
  const factory _ValueFormElementChanged(
      final FormElement formElement,
      final dynamic newValue,
      final int rowIndex) = _$ValueFormElementChangedImpl;

  FormElement get formElement;
  dynamic get newValue;
  int get rowIndex;
  @JsonKey(ignore: true)
  _$$ValueFormElementChangedImplCopyWith<_$ValueFormElementChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LayoutYPercentChangedImplCopyWith<$Res> {
  factory _$$LayoutYPercentChangedImplCopyWith(
          _$LayoutYPercentChangedImpl value,
          $Res Function(_$LayoutYPercentChangedImpl) then) =
      __$$LayoutYPercentChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LayoutPercent> layoutPercent});
}

/// @nodoc
class __$$LayoutYPercentChangedImplCopyWithImpl<$Res>
    extends _$DynamicFormFormEventCopyWithImpl<$Res,
        _$LayoutYPercentChangedImpl>
    implements _$$LayoutYPercentChangedImplCopyWith<$Res> {
  __$$LayoutYPercentChangedImplCopyWithImpl(_$LayoutYPercentChangedImpl _value,
      $Res Function(_$LayoutYPercentChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layoutPercent = null,
  }) {
    return _then(_$LayoutYPercentChangedImpl(
      null == layoutPercent
          ? _value._layoutPercent
          : layoutPercent // ignore: cast_nullable_to_non_nullable
              as List<LayoutPercent>,
    ));
  }
}

/// @nodoc

class _$LayoutYPercentChangedImpl
    with DiagnosticableTreeMixin
    implements _LayoutYPercentChanged {
  const _$LayoutYPercentChangedImpl(final List<LayoutPercent> layoutPercent)
      : _layoutPercent = layoutPercent;

  final List<LayoutPercent> _layoutPercent;
  @override
  List<LayoutPercent> get layoutPercent {
    if (_layoutPercent is EqualUnmodifiableListView) return _layoutPercent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_layoutPercent);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DynamicFormFormEvent.layoutYPercentChanged(layoutPercent: $layoutPercent)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'DynamicFormFormEvent.layoutYPercentChanged'))
      ..add(DiagnosticsProperty('layoutPercent', layoutPercent));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LayoutYPercentChangedImpl &&
            const DeepCollectionEquality()
                .equals(other._layoutPercent, _layoutPercent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_layoutPercent));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LayoutYPercentChangedImplCopyWith<_$LayoutYPercentChangedImpl>
      get copyWith => __$$LayoutYPercentChangedImplCopyWithImpl<
          _$LayoutYPercentChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<FormSection> intialDynamicFormOption)
        intial,
    required TResult Function(String sectionName) sectionNameChanged,
    required TResult Function(SectionTypes sectionType) sectionTypeChanged,
    required TResult Function(List<FormRow> formRows) formRowsChanged,
    required TResult Function(
            FormElement formElement, dynamic newValue, int rowIndex)
        changeFormElementValue,
    required TResult Function(List<LayoutPercent> layoutPercent)
        layoutYPercentChanged,
    required TResult Function(Category category) categoryChanged,
    required TResult Function() saved,
  }) {
    return layoutYPercentChanged(layoutPercent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<FormSection> intialDynamicFormOption)? intial,
    TResult? Function(String sectionName)? sectionNameChanged,
    TResult? Function(SectionTypes sectionType)? sectionTypeChanged,
    TResult? Function(List<FormRow> formRows)? formRowsChanged,
    TResult? Function(FormElement formElement, dynamic newValue, int rowIndex)?
        changeFormElementValue,
    TResult? Function(List<LayoutPercent> layoutPercent)? layoutYPercentChanged,
    TResult? Function(Category category)? categoryChanged,
    TResult? Function()? saved,
  }) {
    return layoutYPercentChanged?.call(layoutPercent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<FormSection> intialDynamicFormOption)? intial,
    TResult Function(String sectionName)? sectionNameChanged,
    TResult Function(SectionTypes sectionType)? sectionTypeChanged,
    TResult Function(List<FormRow> formRows)? formRowsChanged,
    TResult Function(FormElement formElement, dynamic newValue, int rowIndex)?
        changeFormElementValue,
    TResult Function(List<LayoutPercent> layoutPercent)? layoutYPercentChanged,
    TResult Function(Category category)? categoryChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (layoutYPercentChanged != null) {
      return layoutYPercentChanged(layoutPercent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_SectionNameChanged value) sectionNameChanged,
    required TResult Function(_SectionTypeChanged value) sectionTypeChanged,
    required TResult Function(_FormRowsChanged value) formRowsChanged,
    required TResult Function(_ValueFormElementChanged value)
        changeFormElementValue,
    required TResult Function(_LayoutYPercentChanged value)
        layoutYPercentChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return layoutYPercentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_SectionNameChanged value)? sectionNameChanged,
    TResult? Function(_SectionTypeChanged value)? sectionTypeChanged,
    TResult? Function(_FormRowsChanged value)? formRowsChanged,
    TResult? Function(_ValueFormElementChanged value)? changeFormElementValue,
    TResult? Function(_LayoutYPercentChanged value)? layoutYPercentChanged,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return layoutYPercentChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_SectionNameChanged value)? sectionNameChanged,
    TResult Function(_SectionTypeChanged value)? sectionTypeChanged,
    TResult Function(_FormRowsChanged value)? formRowsChanged,
    TResult Function(_ValueFormElementChanged value)? changeFormElementValue,
    TResult Function(_LayoutYPercentChanged value)? layoutYPercentChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (layoutYPercentChanged != null) {
      return layoutYPercentChanged(this);
    }
    return orElse();
  }
}

abstract class _LayoutYPercentChanged implements DynamicFormFormEvent {
  const factory _LayoutYPercentChanged(
      final List<LayoutPercent> layoutPercent) = _$LayoutYPercentChangedImpl;

  List<LayoutPercent> get layoutPercent;
  @JsonKey(ignore: true)
  _$$LayoutYPercentChangedImplCopyWith<_$LayoutYPercentChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryChangedImplCopyWith<$Res> {
  factory _$$CategoryChangedImplCopyWith(_$CategoryChangedImpl value,
          $Res Function(_$CategoryChangedImpl) then) =
      __$$CategoryChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Category category});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$CategoryChangedImplCopyWithImpl<$Res>
    extends _$DynamicFormFormEventCopyWithImpl<$Res, _$CategoryChangedImpl>
    implements _$$CategoryChangedImplCopyWith<$Res> {
  __$$CategoryChangedImplCopyWithImpl(
      _$CategoryChangedImpl _value, $Res Function(_$CategoryChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$CategoryChangedImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$CategoryChangedImpl
    with DiagnosticableTreeMixin
    implements _CategoryChanged {
  const _$CategoryChangedImpl(this.category);

  @override
  final Category category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DynamicFormFormEvent.categoryChanged(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DynamicFormFormEvent.categoryChanged'))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryChangedImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryChangedImplCopyWith<_$CategoryChangedImpl> get copyWith =>
      __$$CategoryChangedImplCopyWithImpl<_$CategoryChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<FormSection> intialDynamicFormOption)
        intial,
    required TResult Function(String sectionName) sectionNameChanged,
    required TResult Function(SectionTypes sectionType) sectionTypeChanged,
    required TResult Function(List<FormRow> formRows) formRowsChanged,
    required TResult Function(
            FormElement formElement, dynamic newValue, int rowIndex)
        changeFormElementValue,
    required TResult Function(List<LayoutPercent> layoutPercent)
        layoutYPercentChanged,
    required TResult Function(Category category) categoryChanged,
    required TResult Function() saved,
  }) {
    return categoryChanged(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<FormSection> intialDynamicFormOption)? intial,
    TResult? Function(String sectionName)? sectionNameChanged,
    TResult? Function(SectionTypes sectionType)? sectionTypeChanged,
    TResult? Function(List<FormRow> formRows)? formRowsChanged,
    TResult? Function(FormElement formElement, dynamic newValue, int rowIndex)?
        changeFormElementValue,
    TResult? Function(List<LayoutPercent> layoutPercent)? layoutYPercentChanged,
    TResult? Function(Category category)? categoryChanged,
    TResult? Function()? saved,
  }) {
    return categoryChanged?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<FormSection> intialDynamicFormOption)? intial,
    TResult Function(String sectionName)? sectionNameChanged,
    TResult Function(SectionTypes sectionType)? sectionTypeChanged,
    TResult Function(List<FormRow> formRows)? formRowsChanged,
    TResult Function(FormElement formElement, dynamic newValue, int rowIndex)?
        changeFormElementValue,
    TResult Function(List<LayoutPercent> layoutPercent)? layoutYPercentChanged,
    TResult Function(Category category)? categoryChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_SectionNameChanged value) sectionNameChanged,
    required TResult Function(_SectionTypeChanged value) sectionTypeChanged,
    required TResult Function(_FormRowsChanged value) formRowsChanged,
    required TResult Function(_ValueFormElementChanged value)
        changeFormElementValue,
    required TResult Function(_LayoutYPercentChanged value)
        layoutYPercentChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_SectionNameChanged value)? sectionNameChanged,
    TResult? Function(_SectionTypeChanged value)? sectionTypeChanged,
    TResult? Function(_FormRowsChanged value)? formRowsChanged,
    TResult? Function(_ValueFormElementChanged value)? changeFormElementValue,
    TResult? Function(_LayoutYPercentChanged value)? layoutYPercentChanged,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return categoryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_SectionNameChanged value)? sectionNameChanged,
    TResult Function(_SectionTypeChanged value)? sectionTypeChanged,
    TResult Function(_FormRowsChanged value)? formRowsChanged,
    TResult Function(_ValueFormElementChanged value)? changeFormElementValue,
    TResult Function(_LayoutYPercentChanged value)? layoutYPercentChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(this);
    }
    return orElse();
  }
}

abstract class _CategoryChanged implements DynamicFormFormEvent {
  const factory _CategoryChanged(final Category category) =
      _$CategoryChangedImpl;

  Category get category;
  @JsonKey(ignore: true)
  _$$CategoryChangedImplCopyWith<_$CategoryChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedImplCopyWith<$Res> {
  factory _$$SavedImplCopyWith(
          _$SavedImpl value, $Res Function(_$SavedImpl) then) =
      __$$SavedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedImplCopyWithImpl<$Res>
    extends _$DynamicFormFormEventCopyWithImpl<$Res, _$SavedImpl>
    implements _$$SavedImplCopyWith<$Res> {
  __$$SavedImplCopyWithImpl(
      _$SavedImpl _value, $Res Function(_$SavedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SavedImpl with DiagnosticableTreeMixin implements _Saved {
  const _$SavedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DynamicFormFormEvent.saved()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'DynamicFormFormEvent.saved'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SavedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<FormSection> intialDynamicFormOption)
        intial,
    required TResult Function(String sectionName) sectionNameChanged,
    required TResult Function(SectionTypes sectionType) sectionTypeChanged,
    required TResult Function(List<FormRow> formRows) formRowsChanged,
    required TResult Function(
            FormElement formElement, dynamic newValue, int rowIndex)
        changeFormElementValue,
    required TResult Function(List<LayoutPercent> layoutPercent)
        layoutYPercentChanged,
    required TResult Function(Category category) categoryChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<FormSection> intialDynamicFormOption)? intial,
    TResult? Function(String sectionName)? sectionNameChanged,
    TResult? Function(SectionTypes sectionType)? sectionTypeChanged,
    TResult? Function(List<FormRow> formRows)? formRowsChanged,
    TResult? Function(FormElement formElement, dynamic newValue, int rowIndex)?
        changeFormElementValue,
    TResult? Function(List<LayoutPercent> layoutPercent)? layoutYPercentChanged,
    TResult? Function(Category category)? categoryChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<FormSection> intialDynamicFormOption)? intial,
    TResult Function(String sectionName)? sectionNameChanged,
    TResult Function(SectionTypes sectionType)? sectionTypeChanged,
    TResult Function(List<FormRow> formRows)? formRowsChanged,
    TResult Function(FormElement formElement, dynamic newValue, int rowIndex)?
        changeFormElementValue,
    TResult Function(List<LayoutPercent> layoutPercent)? layoutYPercentChanged,
    TResult Function(Category category)? categoryChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_SectionNameChanged value) sectionNameChanged,
    required TResult Function(_SectionTypeChanged value) sectionTypeChanged,
    required TResult Function(_FormRowsChanged value) formRowsChanged,
    required TResult Function(_ValueFormElementChanged value)
        changeFormElementValue,
    required TResult Function(_LayoutYPercentChanged value)
        layoutYPercentChanged,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_SectionNameChanged value)? sectionNameChanged,
    TResult? Function(_SectionTypeChanged value)? sectionTypeChanged,
    TResult? Function(_FormRowsChanged value)? formRowsChanged,
    TResult? Function(_ValueFormElementChanged value)? changeFormElementValue,
    TResult? Function(_LayoutYPercentChanged value)? layoutYPercentChanged,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_SectionNameChanged value)? sectionNameChanged,
    TResult Function(_SectionTypeChanged value)? sectionTypeChanged,
    TResult Function(_FormRowsChanged value)? formRowsChanged,
    TResult Function(_ValueFormElementChanged value)? changeFormElementValue,
    TResult Function(_LayoutYPercentChanged value)? layoutYPercentChanged,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements DynamicFormFormEvent {
  const factory _Saved() = _$SavedImpl;
}

/// @nodoc
mixin _$DynamicFormFormState {
  FormSection get formSection => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isUpdating => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<DynamicFormFailures, FormSection>>
      get saveFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DynamicFormFormStateCopyWith<DynamicFormFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicFormFormStateCopyWith<$Res> {
  factory $DynamicFormFormStateCopyWith(DynamicFormFormState value,
          $Res Function(DynamicFormFormState) then) =
      _$DynamicFormFormStateCopyWithImpl<$Res, DynamicFormFormState>;
  @useResult
  $Res call(
      {FormSection formSection,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<DynamicFormFailures, FormSection>>
          saveFailureOrSuccessOption});

  $FormSectionCopyWith<$Res> get formSection;
}

/// @nodoc
class _$DynamicFormFormStateCopyWithImpl<$Res,
        $Val extends DynamicFormFormState>
    implements $DynamicFormFormStateCopyWith<$Res> {
  _$DynamicFormFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formSection = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      formSection: null == formSection
          ? _value.formSection
          : formSection // ignore: cast_nullable_to_non_nullable
              as FormSection,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DynamicFormFailures, FormSection>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FormSectionCopyWith<$Res> get formSection {
    return $FormSectionCopyWith<$Res>(_value.formSection, (value) {
      return _then(_value.copyWith(formSection: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DynamicFormFormStateImplCopyWith<$Res>
    implements $DynamicFormFormStateCopyWith<$Res> {
  factory _$$DynamicFormFormStateImplCopyWith(_$DynamicFormFormStateImpl value,
          $Res Function(_$DynamicFormFormStateImpl) then) =
      __$$DynamicFormFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormSection formSection,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<DynamicFormFailures, FormSection>>
          saveFailureOrSuccessOption});

  @override
  $FormSectionCopyWith<$Res> get formSection;
}

/// @nodoc
class __$$DynamicFormFormStateImplCopyWithImpl<$Res>
    extends _$DynamicFormFormStateCopyWithImpl<$Res, _$DynamicFormFormStateImpl>
    implements _$$DynamicFormFormStateImplCopyWith<$Res> {
  __$$DynamicFormFormStateImplCopyWithImpl(_$DynamicFormFormStateImpl _value,
      $Res Function(_$DynamicFormFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formSection = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$DynamicFormFormStateImpl(
      formSection: null == formSection
          ? _value.formSection
          : formSection // ignore: cast_nullable_to_non_nullable
              as FormSection,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DynamicFormFailures, FormSection>>,
    ));
  }
}

/// @nodoc

class _$DynamicFormFormStateImpl
    with DiagnosticableTreeMixin
    implements _DynamicFormFormState {
  const _$DynamicFormFormStateImpl(
      {required this.formSection,
      required this.showErrorMessages,
      required this.isUpdating,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final FormSection formSection;
  @override
  final bool showErrorMessages;
  @override
  final bool isUpdating;
  @override
  final bool isSaving;
  @override
  final Option<Either<DynamicFormFailures, FormSection>>
      saveFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DynamicFormFormState(formSection: $formSection, showErrorMessages: $showErrorMessages, isUpdating: $isUpdating, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DynamicFormFormState'))
      ..add(DiagnosticsProperty('formSection', formSection))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isUpdating', isUpdating))
      ..add(DiagnosticsProperty('isSaving', isSaving))
      ..add(DiagnosticsProperty(
          'saveFailureOrSuccessOption', saveFailureOrSuccessOption));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicFormFormStateImpl &&
            (identical(other.formSection, formSection) ||
                other.formSection == formSection) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isUpdating, isUpdating) ||
                other.isUpdating == isUpdating) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formSection, showErrorMessages,
      isUpdating, isSaving, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicFormFormStateImplCopyWith<_$DynamicFormFormStateImpl>
      get copyWith =>
          __$$DynamicFormFormStateImplCopyWithImpl<_$DynamicFormFormStateImpl>(
              this, _$identity);
}

abstract class _DynamicFormFormState implements DynamicFormFormState {
  const factory _DynamicFormFormState(
      {required final FormSection formSection,
      required final bool showErrorMessages,
      required final bool isUpdating,
      required final bool isSaving,
      required final Option<Either<DynamicFormFailures, FormSection>>
          saveFailureOrSuccessOption}) = _$DynamicFormFormStateImpl;

  @override
  FormSection get formSection;
  @override
  bool get showErrorMessages;
  @override
  bool get isUpdating;
  @override
  bool get isSaving;
  @override
  Option<Either<DynamicFormFailures, FormSection>>
      get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$DynamicFormFormStateImplCopyWith<_$DynamicFormFormStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
