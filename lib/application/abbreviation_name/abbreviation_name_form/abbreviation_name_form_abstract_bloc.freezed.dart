// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'abbreviation_name_form_abstract_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AbbreviationNameFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<NameAbbreviation> initiaAbbreviationNameOption)
        initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String abreviation) abreviationChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<NameAbbreviation> initiaAbbreviationNameOption)?
        initialized,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String abreviation)? abreviationChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<NameAbbreviation> initiaAbbreviationNameOption)?
        initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String abreviation)? abreviationChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_AbbreviationChanged value) abreviationChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_AbbreviationChanged value)? abreviationChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_AbbreviationChanged value)? abreviationChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbbreviationNameFormEventCopyWith<$Res> {
  factory $AbbreviationNameFormEventCopyWith(AbbreviationNameFormEvent value,
          $Res Function(AbbreviationNameFormEvent) then) =
      _$AbbreviationNameFormEventCopyWithImpl<$Res, AbbreviationNameFormEvent>;
}

/// @nodoc
class _$AbbreviationNameFormEventCopyWithImpl<$Res,
        $Val extends AbbreviationNameFormEvent>
    implements $AbbreviationNameFormEventCopyWith<$Res> {
  _$AbbreviationNameFormEventCopyWithImpl(this._value, this._then);

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
  $Res call({Option<NameAbbreviation> initiaAbbreviationNameOption});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$AbbreviationNameFormEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initiaAbbreviationNameOption = null,
  }) {
    return _then(_$InitializedImpl(
      null == initiaAbbreviationNameOption
          ? _value.initiaAbbreviationNameOption
          : initiaAbbreviationNameOption // ignore: cast_nullable_to_non_nullable
              as Option<NameAbbreviation>,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.initiaAbbreviationNameOption);

  @override
  final Option<NameAbbreviation> initiaAbbreviationNameOption;

  @override
  String toString() {
    return 'AbbreviationNameFormEvent.initialized(initiaAbbreviationNameOption: $initiaAbbreviationNameOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.initiaAbbreviationNameOption,
                    initiaAbbreviationNameOption) ||
                other.initiaAbbreviationNameOption ==
                    initiaAbbreviationNameOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initiaAbbreviationNameOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<NameAbbreviation> initiaAbbreviationNameOption)
        initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String abreviation) abreviationChanged,
    required TResult Function() saved,
  }) {
    return initialized(initiaAbbreviationNameOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<NameAbbreviation> initiaAbbreviationNameOption)?
        initialized,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String abreviation)? abreviationChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(initiaAbbreviationNameOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<NameAbbreviation> initiaAbbreviationNameOption)?
        initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String abreviation)? abreviationChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initiaAbbreviationNameOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_AbbreviationChanged value) abreviationChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_AbbreviationChanged value)? abreviationChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_AbbreviationChanged value)? abreviationChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements AbbreviationNameFormEvent {
  const factory _Initialized(
          final Option<NameAbbreviation> initiaAbbreviationNameOption) =
      _$InitializedImpl;

  Option<NameAbbreviation> get initiaAbbreviationNameOption;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res> {
  factory _$$NameChangedImplCopyWith(
          _$NameChangedImpl value, $Res Function(_$NameChangedImpl) then) =
      __$$NameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res>
    extends _$AbbreviationNameFormEventCopyWithImpl<$Res, _$NameChangedImpl>
    implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(
      _$NameChangedImpl _value, $Res Function(_$NameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NameChangedImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChangedImpl implements _NameChanged {
  const _$NameChangedImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'AbbreviationNameFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<NameAbbreviation> initiaAbbreviationNameOption)
        initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String abreviation) abreviationChanged,
    required TResult Function() saved,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<NameAbbreviation> initiaAbbreviationNameOption)?
        initialized,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String abreviation)? abreviationChanged,
    TResult? Function()? saved,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<NameAbbreviation> initiaAbbreviationNameOption)?
        initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String abreviation)? abreviationChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_AbbreviationChanged value) abreviationChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_AbbreviationChanged value)? abreviationChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_AbbreviationChanged value)? abreviationChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements AbbreviationNameFormEvent {
  const factory _NameChanged(final String name) = _$NameChangedImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AbbreviationChangedImplCopyWith<$Res> {
  factory _$$AbbreviationChangedImplCopyWith(_$AbbreviationChangedImpl value,
          $Res Function(_$AbbreviationChangedImpl) then) =
      __$$AbbreviationChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String abreviation});
}

/// @nodoc
class __$$AbbreviationChangedImplCopyWithImpl<$Res>
    extends _$AbbreviationNameFormEventCopyWithImpl<$Res,
        _$AbbreviationChangedImpl>
    implements _$$AbbreviationChangedImplCopyWith<$Res> {
  __$$AbbreviationChangedImplCopyWithImpl(_$AbbreviationChangedImpl _value,
      $Res Function(_$AbbreviationChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abreviation = null,
  }) {
    return _then(_$AbbreviationChangedImpl(
      null == abreviation
          ? _value.abreviation
          : abreviation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AbbreviationChangedImpl implements _AbbreviationChanged {
  const _$AbbreviationChangedImpl(this.abreviation);

  @override
  final String abreviation;

  @override
  String toString() {
    return 'AbbreviationNameFormEvent.abreviationChanged(abreviation: $abreviation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbbreviationChangedImpl &&
            (identical(other.abreviation, abreviation) ||
                other.abreviation == abreviation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, abreviation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AbbreviationChangedImplCopyWith<_$AbbreviationChangedImpl> get copyWith =>
      __$$AbbreviationChangedImplCopyWithImpl<_$AbbreviationChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<NameAbbreviation> initiaAbbreviationNameOption)
        initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String abreviation) abreviationChanged,
    required TResult Function() saved,
  }) {
    return abreviationChanged(abreviation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<NameAbbreviation> initiaAbbreviationNameOption)?
        initialized,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String abreviation)? abreviationChanged,
    TResult? Function()? saved,
  }) {
    return abreviationChanged?.call(abreviation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<NameAbbreviation> initiaAbbreviationNameOption)?
        initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String abreviation)? abreviationChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (abreviationChanged != null) {
      return abreviationChanged(abreviation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_AbbreviationChanged value) abreviationChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return abreviationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_AbbreviationChanged value)? abreviationChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return abreviationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_AbbreviationChanged value)? abreviationChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (abreviationChanged != null) {
      return abreviationChanged(this);
    }
    return orElse();
  }
}

abstract class _AbbreviationChanged implements AbbreviationNameFormEvent {
  const factory _AbbreviationChanged(final String abreviation) =
      _$AbbreviationChangedImpl;

  String get abreviation;
  @JsonKey(ignore: true)
  _$$AbbreviationChangedImplCopyWith<_$AbbreviationChangedImpl> get copyWith =>
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
    extends _$AbbreviationNameFormEventCopyWithImpl<$Res, _$SavedImpl>
    implements _$$SavedImplCopyWith<$Res> {
  __$$SavedImplCopyWithImpl(
      _$SavedImpl _value, $Res Function(_$SavedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SavedImpl implements _Saved {
  const _$SavedImpl();

  @override
  String toString() {
    return 'AbbreviationNameFormEvent.saved()';
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
    required TResult Function(
            Option<NameAbbreviation> initiaAbbreviationNameOption)
        initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String abreviation) abreviationChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<NameAbbreviation> initiaAbbreviationNameOption)?
        initialized,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String abreviation)? abreviationChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<NameAbbreviation> initiaAbbreviationNameOption)?
        initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String abreviation)? abreviationChanged,
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
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_AbbreviationChanged value) abreviationChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_AbbreviationChanged value)? abreviationChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_AbbreviationChanged value)? abreviationChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements AbbreviationNameFormEvent {
  const factory _Saved() = _$SavedImpl;
}

/// @nodoc
mixin _$AbbreviationNameFormState {
  NameAbbreviation get abbreviation => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isUpdating => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<NameAbbreviationFailure, Unit>>
      get saveFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AbbreviationNameFormStateCopyWith<AbbreviationNameFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbbreviationNameFormStateCopyWith<$Res> {
  factory $AbbreviationNameFormStateCopyWith(AbbreviationNameFormState value,
          $Res Function(AbbreviationNameFormState) then) =
      _$AbbreviationNameFormStateCopyWithImpl<$Res, AbbreviationNameFormState>;
  @useResult
  $Res call(
      {NameAbbreviation abbreviation,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<NameAbbreviationFailure, Unit>>
          saveFailureOrSuccessOption});

  $NameAbbreviationCopyWith<$Res> get abbreviation;
}

/// @nodoc
class _$AbbreviationNameFormStateCopyWithImpl<$Res,
        $Val extends AbbreviationNameFormState>
    implements $AbbreviationNameFormStateCopyWith<$Res> {
  _$AbbreviationNameFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abbreviation = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      abbreviation: null == abbreviation
          ? _value.abbreviation
          : abbreviation // ignore: cast_nullable_to_non_nullable
              as NameAbbreviation,
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
              as Option<Either<NameAbbreviationFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameAbbreviationCopyWith<$Res> get abbreviation {
    return $NameAbbreviationCopyWith<$Res>(_value.abbreviation, (value) {
      return _then(_value.copyWith(abbreviation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AbbreviationNameFormStateImplCopyWith<$Res>
    implements $AbbreviationNameFormStateCopyWith<$Res> {
  factory _$$AbbreviationNameFormStateImplCopyWith(
          _$AbbreviationNameFormStateImpl value,
          $Res Function(_$AbbreviationNameFormStateImpl) then) =
      __$$AbbreviationNameFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NameAbbreviation abbreviation,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<NameAbbreviationFailure, Unit>>
          saveFailureOrSuccessOption});

  @override
  $NameAbbreviationCopyWith<$Res> get abbreviation;
}

/// @nodoc
class __$$AbbreviationNameFormStateImplCopyWithImpl<$Res>
    extends _$AbbreviationNameFormStateCopyWithImpl<$Res,
        _$AbbreviationNameFormStateImpl>
    implements _$$AbbreviationNameFormStateImplCopyWith<$Res> {
  __$$AbbreviationNameFormStateImplCopyWithImpl(
      _$AbbreviationNameFormStateImpl _value,
      $Res Function(_$AbbreviationNameFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abbreviation = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$AbbreviationNameFormStateImpl(
      abbreviation: null == abbreviation
          ? _value.abbreviation
          : abbreviation // ignore: cast_nullable_to_non_nullable
              as NameAbbreviation,
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
              as Option<Either<NameAbbreviationFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$AbbreviationNameFormStateImpl implements _AbbreviationNameFormState {
  const _$AbbreviationNameFormStateImpl(
      {required this.abbreviation,
      required this.showErrorMessages,
      required this.isUpdating,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final NameAbbreviation abbreviation;
  @override
  final bool showErrorMessages;
  @override
  final bool isUpdating;
  @override
  final bool isSaving;
  @override
  final Option<Either<NameAbbreviationFailure, Unit>>
      saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'AbbreviationNameFormState(abbreviation: $abbreviation, showErrorMessages: $showErrorMessages, isUpdating: $isUpdating, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbbreviationNameFormStateImpl &&
            (identical(other.abbreviation, abbreviation) ||
                other.abbreviation == abbreviation) &&
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
  int get hashCode => Object.hash(runtimeType, abbreviation, showErrorMessages,
      isUpdating, isSaving, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AbbreviationNameFormStateImplCopyWith<_$AbbreviationNameFormStateImpl>
      get copyWith => __$$AbbreviationNameFormStateImplCopyWithImpl<
          _$AbbreviationNameFormStateImpl>(this, _$identity);
}

abstract class _AbbreviationNameFormState implements AbbreviationNameFormState {
  const factory _AbbreviationNameFormState(
      {required final NameAbbreviation abbreviation,
      required final bool showErrorMessages,
      required final bool isUpdating,
      required final bool isSaving,
      required final Option<Either<NameAbbreviationFailure, Unit>>
          saveFailureOrSuccessOption}) = _$AbbreviationNameFormStateImpl;

  @override
  NameAbbreviation get abbreviation;
  @override
  bool get showErrorMessages;
  @override
  bool get isUpdating;
  @override
  bool get isSaving;
  @override
  Option<Either<NameAbbreviationFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$AbbreviationNameFormStateImplCopyWith<_$AbbreviationNameFormStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
