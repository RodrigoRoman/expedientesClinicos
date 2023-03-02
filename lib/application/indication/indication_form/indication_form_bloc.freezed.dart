// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'indication_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IndicationFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Indication> intitialIndication)
        initialized,
    required TResult Function(String indicationName) onIndicationNameChanged,
    required TResult Function(Category indicationCategory) onCategoryChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Indication> intitialIndication)? initialized,
    TResult? Function(String indicationName)? onIndicationNameChanged,
    TResult? Function(Category indicationCategory)? onCategoryChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Indication> intitialIndication)? initialized,
    TResult Function(String indicationName)? onIndicationNameChanged,
    TResult Function(Category indicationCategory)? onCategoryChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_IndicationNameChanged value)
        onIndicationNameChanged,
    required TResult Function(_IndicationCategoryChanged value)
        onCategoryChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_IndicationNameChanged value)? onIndicationNameChanged,
    TResult? Function(_IndicationCategoryChanged value)? onCategoryChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_IndicationNameChanged value)? onIndicationNameChanged,
    TResult Function(_IndicationCategoryChanged value)? onCategoryChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndicationFormEventCopyWith<$Res> {
  factory $IndicationFormEventCopyWith(
          IndicationFormEvent value, $Res Function(IndicationFormEvent) then) =
      _$IndicationFormEventCopyWithImpl<$Res, IndicationFormEvent>;
}

/// @nodoc
class _$IndicationFormEventCopyWithImpl<$Res, $Val extends IndicationFormEvent>
    implements $IndicationFormEventCopyWith<$Res> {
  _$IndicationFormEventCopyWithImpl(this._value, this._then);

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
  $Res call({Option<Indication> intitialIndication});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$IndicationFormEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intitialIndication = null,
  }) {
    return _then(_$_Initialized(
      null == intitialIndication
          ? _value.intitialIndication
          : intitialIndication // ignore: cast_nullable_to_non_nullable
              as Option<Indication>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.intitialIndication);

  @override
  final Option<Indication> intitialIndication;

  @override
  String toString() {
    return 'IndicationFormEvent.initialized(intitialIndication: $intitialIndication)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.intitialIndication, intitialIndication) ||
                other.intitialIndication == intitialIndication));
  }

  @override
  int get hashCode => Object.hash(runtimeType, intitialIndication);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Indication> intitialIndication)
        initialized,
    required TResult Function(String indicationName) onIndicationNameChanged,
    required TResult Function(Category indicationCategory) onCategoryChanged,
    required TResult Function() saved,
  }) {
    return initialized(intitialIndication);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Indication> intitialIndication)? initialized,
    TResult? Function(String indicationName)? onIndicationNameChanged,
    TResult? Function(Category indicationCategory)? onCategoryChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(intitialIndication);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Indication> intitialIndication)? initialized,
    TResult Function(String indicationName)? onIndicationNameChanged,
    TResult Function(Category indicationCategory)? onCategoryChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(intitialIndication);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_IndicationNameChanged value)
        onIndicationNameChanged,
    required TResult Function(_IndicationCategoryChanged value)
        onCategoryChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_IndicationNameChanged value)? onIndicationNameChanged,
    TResult? Function(_IndicationCategoryChanged value)? onCategoryChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_IndicationNameChanged value)? onIndicationNameChanged,
    TResult Function(_IndicationCategoryChanged value)? onCategoryChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements IndicationFormEvent {
  const factory _Initialized(final Option<Indication> intitialIndication) =
      _$_Initialized;

  Option<Indication> get intitialIndication;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IndicationNameChangedCopyWith<$Res> {
  factory _$$_IndicationNameChangedCopyWith(_$_IndicationNameChanged value,
          $Res Function(_$_IndicationNameChanged) then) =
      __$$_IndicationNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String indicationName});
}

/// @nodoc
class __$$_IndicationNameChangedCopyWithImpl<$Res>
    extends _$IndicationFormEventCopyWithImpl<$Res, _$_IndicationNameChanged>
    implements _$$_IndicationNameChangedCopyWith<$Res> {
  __$$_IndicationNameChangedCopyWithImpl(_$_IndicationNameChanged _value,
      $Res Function(_$_IndicationNameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indicationName = null,
  }) {
    return _then(_$_IndicationNameChanged(
      null == indicationName
          ? _value.indicationName
          : indicationName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_IndicationNameChanged implements _IndicationNameChanged {
  const _$_IndicationNameChanged(this.indicationName);

  @override
  final String indicationName;

  @override
  String toString() {
    return 'IndicationFormEvent.onIndicationNameChanged(indicationName: $indicationName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IndicationNameChanged &&
            (identical(other.indicationName, indicationName) ||
                other.indicationName == indicationName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, indicationName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IndicationNameChangedCopyWith<_$_IndicationNameChanged> get copyWith =>
      __$$_IndicationNameChangedCopyWithImpl<_$_IndicationNameChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Indication> intitialIndication)
        initialized,
    required TResult Function(String indicationName) onIndicationNameChanged,
    required TResult Function(Category indicationCategory) onCategoryChanged,
    required TResult Function() saved,
  }) {
    return onIndicationNameChanged(indicationName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Indication> intitialIndication)? initialized,
    TResult? Function(String indicationName)? onIndicationNameChanged,
    TResult? Function(Category indicationCategory)? onCategoryChanged,
    TResult? Function()? saved,
  }) {
    return onIndicationNameChanged?.call(indicationName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Indication> intitialIndication)? initialized,
    TResult Function(String indicationName)? onIndicationNameChanged,
    TResult Function(Category indicationCategory)? onCategoryChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (onIndicationNameChanged != null) {
      return onIndicationNameChanged(indicationName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_IndicationNameChanged value)
        onIndicationNameChanged,
    required TResult Function(_IndicationCategoryChanged value)
        onCategoryChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return onIndicationNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_IndicationNameChanged value)? onIndicationNameChanged,
    TResult? Function(_IndicationCategoryChanged value)? onCategoryChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return onIndicationNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_IndicationNameChanged value)? onIndicationNameChanged,
    TResult Function(_IndicationCategoryChanged value)? onCategoryChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (onIndicationNameChanged != null) {
      return onIndicationNameChanged(this);
    }
    return orElse();
  }
}

abstract class _IndicationNameChanged implements IndicationFormEvent {
  const factory _IndicationNameChanged(final String indicationName) =
      _$_IndicationNameChanged;

  String get indicationName;
  @JsonKey(ignore: true)
  _$$_IndicationNameChangedCopyWith<_$_IndicationNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IndicationCategoryChangedCopyWith<$Res> {
  factory _$$_IndicationCategoryChangedCopyWith(
          _$_IndicationCategoryChanged value,
          $Res Function(_$_IndicationCategoryChanged) then) =
      __$$_IndicationCategoryChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Category indicationCategory});

  $CategoryCopyWith<$Res> get indicationCategory;
}

/// @nodoc
class __$$_IndicationCategoryChangedCopyWithImpl<$Res>
    extends _$IndicationFormEventCopyWithImpl<$Res,
        _$_IndicationCategoryChanged>
    implements _$$_IndicationCategoryChangedCopyWith<$Res> {
  __$$_IndicationCategoryChangedCopyWithImpl(
      _$_IndicationCategoryChanged _value,
      $Res Function(_$_IndicationCategoryChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indicationCategory = null,
  }) {
    return _then(_$_IndicationCategoryChanged(
      null == indicationCategory
          ? _value.indicationCategory
          : indicationCategory // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get indicationCategory {
    return $CategoryCopyWith<$Res>(_value.indicationCategory, (value) {
      return _then(_value.copyWith(indicationCategory: value));
    });
  }
}

/// @nodoc

class _$_IndicationCategoryChanged implements _IndicationCategoryChanged {
  const _$_IndicationCategoryChanged(this.indicationCategory);

  @override
  final Category indicationCategory;

  @override
  String toString() {
    return 'IndicationFormEvent.onCategoryChanged(indicationCategory: $indicationCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IndicationCategoryChanged &&
            (identical(other.indicationCategory, indicationCategory) ||
                other.indicationCategory == indicationCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, indicationCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IndicationCategoryChangedCopyWith<_$_IndicationCategoryChanged>
      get copyWith => __$$_IndicationCategoryChangedCopyWithImpl<
          _$_IndicationCategoryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Indication> intitialIndication)
        initialized,
    required TResult Function(String indicationName) onIndicationNameChanged,
    required TResult Function(Category indicationCategory) onCategoryChanged,
    required TResult Function() saved,
  }) {
    return onCategoryChanged(indicationCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Indication> intitialIndication)? initialized,
    TResult? Function(String indicationName)? onIndicationNameChanged,
    TResult? Function(Category indicationCategory)? onCategoryChanged,
    TResult? Function()? saved,
  }) {
    return onCategoryChanged?.call(indicationCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Indication> intitialIndication)? initialized,
    TResult Function(String indicationName)? onIndicationNameChanged,
    TResult Function(Category indicationCategory)? onCategoryChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (onCategoryChanged != null) {
      return onCategoryChanged(indicationCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_IndicationNameChanged value)
        onIndicationNameChanged,
    required TResult Function(_IndicationCategoryChanged value)
        onCategoryChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return onCategoryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_IndicationNameChanged value)? onIndicationNameChanged,
    TResult? Function(_IndicationCategoryChanged value)? onCategoryChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return onCategoryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_IndicationNameChanged value)? onIndicationNameChanged,
    TResult Function(_IndicationCategoryChanged value)? onCategoryChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (onCategoryChanged != null) {
      return onCategoryChanged(this);
    }
    return orElse();
  }
}

abstract class _IndicationCategoryChanged implements IndicationFormEvent {
  const factory _IndicationCategoryChanged(final Category indicationCategory) =
      _$_IndicationCategoryChanged;

  Category get indicationCategory;
  @JsonKey(ignore: true)
  _$$_IndicationCategoryChangedCopyWith<_$_IndicationCategoryChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$IndicationFormEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'IndicationFormEvent.saved()';
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
    required TResult Function(Option<Indication> intitialIndication)
        initialized,
    required TResult Function(String indicationName) onIndicationNameChanged,
    required TResult Function(Category indicationCategory) onCategoryChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Indication> intitialIndication)? initialized,
    TResult? Function(String indicationName)? onIndicationNameChanged,
    TResult? Function(Category indicationCategory)? onCategoryChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Indication> intitialIndication)? initialized,
    TResult Function(String indicationName)? onIndicationNameChanged,
    TResult Function(Category indicationCategory)? onCategoryChanged,
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
    required TResult Function(_IndicationNameChanged value)
        onIndicationNameChanged,
    required TResult Function(_IndicationCategoryChanged value)
        onCategoryChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_IndicationNameChanged value)? onIndicationNameChanged,
    TResult? Function(_IndicationCategoryChanged value)? onCategoryChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_IndicationNameChanged value)? onIndicationNameChanged,
    TResult Function(_IndicationCategoryChanged value)? onCategoryChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements IndicationFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$IndicationFormState {
  Indication get indication => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isUpdating => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<IndicationFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IndicationFormStateCopyWith<IndicationFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndicationFormStateCopyWith<$Res> {
  factory $IndicationFormStateCopyWith(
          IndicationFormState value, $Res Function(IndicationFormState) then) =
      _$IndicationFormStateCopyWithImpl<$Res, IndicationFormState>;
  @useResult
  $Res call(
      {Indication indication,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<IndicationFailure, Unit>> saveFailureOrSuccessOption});

  $IndicationCopyWith<$Res> get indication;
}

/// @nodoc
class _$IndicationFormStateCopyWithImpl<$Res, $Val extends IndicationFormState>
    implements $IndicationFormStateCopyWith<$Res> {
  _$IndicationFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indication = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      indication: null == indication
          ? _value.indication
          : indication // ignore: cast_nullable_to_non_nullable
              as Indication,
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
              as Option<Either<IndicationFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IndicationCopyWith<$Res> get indication {
    return $IndicationCopyWith<$Res>(_value.indication, (value) {
      return _then(_value.copyWith(indication: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IndicationFormStateCopyWith<$Res>
    implements $IndicationFormStateCopyWith<$Res> {
  factory _$$_IndicationFormStateCopyWith(_$_IndicationFormState value,
          $Res Function(_$_IndicationFormState) then) =
      __$$_IndicationFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Indication indication,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<IndicationFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $IndicationCopyWith<$Res> get indication;
}

/// @nodoc
class __$$_IndicationFormStateCopyWithImpl<$Res>
    extends _$IndicationFormStateCopyWithImpl<$Res, _$_IndicationFormState>
    implements _$$_IndicationFormStateCopyWith<$Res> {
  __$$_IndicationFormStateCopyWithImpl(_$_IndicationFormState _value,
      $Res Function(_$_IndicationFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indication = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$_IndicationFormState(
      indication: null == indication
          ? _value.indication
          : indication // ignore: cast_nullable_to_non_nullable
              as Indication,
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
              as Option<Either<IndicationFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_IndicationFormState implements _IndicationFormState {
  const _$_IndicationFormState(
      {required this.indication,
      required this.showErrorMessages,
      required this.isUpdating,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final Indication indication;
  @override
  final bool showErrorMessages;
  @override
  final bool isUpdating;
  @override
  final bool isSaving;
  @override
  final Option<Either<IndicationFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'IndicationFormState(indication: $indication, showErrorMessages: $showErrorMessages, isUpdating: $isUpdating, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IndicationFormState &&
            (identical(other.indication, indication) ||
                other.indication == indication) &&
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
  int get hashCode => Object.hash(runtimeType, indication, showErrorMessages,
      isUpdating, isSaving, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IndicationFormStateCopyWith<_$_IndicationFormState> get copyWith =>
      __$$_IndicationFormStateCopyWithImpl<_$_IndicationFormState>(
          this, _$identity);
}

abstract class _IndicationFormState implements IndicationFormState {
  const factory _IndicationFormState(
      {required final Indication indication,
      required final bool showErrorMessages,
      required final bool isUpdating,
      required final bool isSaving,
      required final Option<Either<IndicationFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_IndicationFormState;

  @override
  Indication get indication;
  @override
  bool get showErrorMessages;
  @override
  bool get isUpdating;
  @override
  bool get isSaving;
  @override
  Option<Either<IndicationFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_IndicationFormStateCopyWith<_$_IndicationFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
