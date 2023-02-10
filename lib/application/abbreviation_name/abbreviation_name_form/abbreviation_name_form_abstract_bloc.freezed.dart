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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<NameAbbreviation> initiaAbbreviationNameOption});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$AbbreviationNameFormEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initiaAbbreviationNameOption = null,
  }) {
    return _then(_$_Initialized(
      null == initiaAbbreviationNameOption
          ? _value.initiaAbbreviationNameOption
          : initiaAbbreviationNameOption // ignore: cast_nullable_to_non_nullable
              as Option<NameAbbreviation>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initiaAbbreviationNameOption);

  @override
  final Option<NameAbbreviation> initiaAbbreviationNameOption;

  @override
  String toString() {
    return 'AbbreviationNameFormEvent.initialized(initiaAbbreviationNameOption: $initiaAbbreviationNameOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
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
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

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
      _$_Initialized;

  Option<NameAbbreviation> get initiaAbbreviationNameOption;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NameChangedCopyWith<$Res> {
  factory _$$_NameChangedCopyWith(
          _$_NameChanged value, $Res Function(_$_NameChanged) then) =
      __$$_NameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_NameChangedCopyWithImpl<$Res>
    extends _$AbbreviationNameFormEventCopyWithImpl<$Res, _$_NameChanged>
    implements _$$_NameChangedCopyWith<$Res> {
  __$$_NameChangedCopyWithImpl(
      _$_NameChanged _value, $Res Function(_$_NameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_NameChanged(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'AbbreviationNameFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameChanged &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      __$$_NameChangedCopyWithImpl<_$_NameChanged>(this, _$identity);

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
  const factory _NameChanged(final String name) = _$_NameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AbbreviationChangedCopyWith<$Res> {
  factory _$$_AbbreviationChangedCopyWith(_$_AbbreviationChanged value,
          $Res Function(_$_AbbreviationChanged) then) =
      __$$_AbbreviationChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String abreviation});
}

/// @nodoc
class __$$_AbbreviationChangedCopyWithImpl<$Res>
    extends _$AbbreviationNameFormEventCopyWithImpl<$Res,
        _$_AbbreviationChanged>
    implements _$$_AbbreviationChangedCopyWith<$Res> {
  __$$_AbbreviationChangedCopyWithImpl(_$_AbbreviationChanged _value,
      $Res Function(_$_AbbreviationChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abreviation = null,
  }) {
    return _then(_$_AbbreviationChanged(
      null == abreviation
          ? _value.abreviation
          : abreviation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AbbreviationChanged implements _AbbreviationChanged {
  const _$_AbbreviationChanged(this.abreviation);

  @override
  final String abreviation;

  @override
  String toString() {
    return 'AbbreviationNameFormEvent.abreviationChanged(abreviation: $abreviation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AbbreviationChanged &&
            (identical(other.abreviation, abreviation) ||
                other.abreviation == abreviation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, abreviation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AbbreviationChangedCopyWith<_$_AbbreviationChanged> get copyWith =>
      __$$_AbbreviationChangedCopyWithImpl<_$_AbbreviationChanged>(
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
      _$_AbbreviationChanged;

  String get abreviation;
  @JsonKey(ignore: true)
  _$$_AbbreviationChangedCopyWith<_$_AbbreviationChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$AbbreviationNameFormEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'AbbreviationNameFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Saved);
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
  const factory _Saved() = _$_Saved;
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
abstract class _$$_AbbreviationNameFormStateCopyWith<$Res>
    implements $AbbreviationNameFormStateCopyWith<$Res> {
  factory _$$_AbbreviationNameFormStateCopyWith(
          _$_AbbreviationNameFormState value,
          $Res Function(_$_AbbreviationNameFormState) then) =
      __$$_AbbreviationNameFormStateCopyWithImpl<$Res>;
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
class __$$_AbbreviationNameFormStateCopyWithImpl<$Res>
    extends _$AbbreviationNameFormStateCopyWithImpl<$Res,
        _$_AbbreviationNameFormState>
    implements _$$_AbbreviationNameFormStateCopyWith<$Res> {
  __$$_AbbreviationNameFormStateCopyWithImpl(
      _$_AbbreviationNameFormState _value,
      $Res Function(_$_AbbreviationNameFormState) _then)
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
    return _then(_$_AbbreviationNameFormState(
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

class _$_AbbreviationNameFormState implements _AbbreviationNameFormState {
  const _$_AbbreviationNameFormState(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AbbreviationNameFormState &&
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
  _$$_AbbreviationNameFormStateCopyWith<_$_AbbreviationNameFormState>
      get copyWith => __$$_AbbreviationNameFormStateCopyWithImpl<
          _$_AbbreviationNameFormState>(this, _$identity);
}

abstract class _AbbreviationNameFormState implements AbbreviationNameFormState {
  const factory _AbbreviationNameFormState(
      {required final NameAbbreviation abbreviation,
      required final bool showErrorMessages,
      required final bool isUpdating,
      required final bool isSaving,
      required final Option<Either<NameAbbreviationFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_AbbreviationNameFormState;

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
  _$$_AbbreviationNameFormStateCopyWith<_$_AbbreviationNameFormState>
      get copyWith => throw _privateConstructorUsedError;
}
