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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<Indication> intitialIndication});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$IndicationFormEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intitialIndication = null,
  }) {
    return _then(_$InitializedImpl(
      null == intitialIndication
          ? _value.intitialIndication
          : intitialIndication // ignore: cast_nullable_to_non_nullable
              as Option<Indication>,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.intitialIndication);

  @override
  final Option<Indication> intitialIndication;

  @override
  String toString() {
    return 'IndicationFormEvent.initialized(intitialIndication: $intitialIndication)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.intitialIndication, intitialIndication) ||
                other.intitialIndication == intitialIndication));
  }

  @override
  int get hashCode => Object.hash(runtimeType, intitialIndication);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

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
      _$InitializedImpl;

  Option<Indication> get intitialIndication;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IndicationNameChangedImplCopyWith<$Res> {
  factory _$$IndicationNameChangedImplCopyWith(
          _$IndicationNameChangedImpl value,
          $Res Function(_$IndicationNameChangedImpl) then) =
      __$$IndicationNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String indicationName});
}

/// @nodoc
class __$$IndicationNameChangedImplCopyWithImpl<$Res>
    extends _$IndicationFormEventCopyWithImpl<$Res, _$IndicationNameChangedImpl>
    implements _$$IndicationNameChangedImplCopyWith<$Res> {
  __$$IndicationNameChangedImplCopyWithImpl(_$IndicationNameChangedImpl _value,
      $Res Function(_$IndicationNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indicationName = null,
  }) {
    return _then(_$IndicationNameChangedImpl(
      null == indicationName
          ? _value.indicationName
          : indicationName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IndicationNameChangedImpl implements _IndicationNameChanged {
  const _$IndicationNameChangedImpl(this.indicationName);

  @override
  final String indicationName;

  @override
  String toString() {
    return 'IndicationFormEvent.onIndicationNameChanged(indicationName: $indicationName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndicationNameChangedImpl &&
            (identical(other.indicationName, indicationName) ||
                other.indicationName == indicationName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, indicationName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndicationNameChangedImplCopyWith<_$IndicationNameChangedImpl>
      get copyWith => __$$IndicationNameChangedImplCopyWithImpl<
          _$IndicationNameChangedImpl>(this, _$identity);

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
      _$IndicationNameChangedImpl;

  String get indicationName;
  @JsonKey(ignore: true)
  _$$IndicationNameChangedImplCopyWith<_$IndicationNameChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IndicationCategoryChangedImplCopyWith<$Res> {
  factory _$$IndicationCategoryChangedImplCopyWith(
          _$IndicationCategoryChangedImpl value,
          $Res Function(_$IndicationCategoryChangedImpl) then) =
      __$$IndicationCategoryChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Category indicationCategory});

  $CategoryCopyWith<$Res> get indicationCategory;
}

/// @nodoc
class __$$IndicationCategoryChangedImplCopyWithImpl<$Res>
    extends _$IndicationFormEventCopyWithImpl<$Res,
        _$IndicationCategoryChangedImpl>
    implements _$$IndicationCategoryChangedImplCopyWith<$Res> {
  __$$IndicationCategoryChangedImplCopyWithImpl(
      _$IndicationCategoryChangedImpl _value,
      $Res Function(_$IndicationCategoryChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indicationCategory = null,
  }) {
    return _then(_$IndicationCategoryChangedImpl(
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

class _$IndicationCategoryChangedImpl implements _IndicationCategoryChanged {
  const _$IndicationCategoryChangedImpl(this.indicationCategory);

  @override
  final Category indicationCategory;

  @override
  String toString() {
    return 'IndicationFormEvent.onCategoryChanged(indicationCategory: $indicationCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndicationCategoryChangedImpl &&
            (identical(other.indicationCategory, indicationCategory) ||
                other.indicationCategory == indicationCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, indicationCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndicationCategoryChangedImplCopyWith<_$IndicationCategoryChangedImpl>
      get copyWith => __$$IndicationCategoryChangedImplCopyWithImpl<
          _$IndicationCategoryChangedImpl>(this, _$identity);

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
      _$IndicationCategoryChangedImpl;

  Category get indicationCategory;
  @JsonKey(ignore: true)
  _$$IndicationCategoryChangedImplCopyWith<_$IndicationCategoryChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedImplCopyWith<$Res> {
  factory _$$SavedImplCopyWith(
          _$SavedImpl value, $Res Function(_$SavedImpl) then) =
      __$$SavedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedImplCopyWithImpl<$Res>
    extends _$IndicationFormEventCopyWithImpl<$Res, _$SavedImpl>
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
    return 'IndicationFormEvent.saved()';
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
  const factory _Saved() = _$SavedImpl;
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
abstract class _$$IndicationFormStateImplCopyWith<$Res>
    implements $IndicationFormStateCopyWith<$Res> {
  factory _$$IndicationFormStateImplCopyWith(_$IndicationFormStateImpl value,
          $Res Function(_$IndicationFormStateImpl) then) =
      __$$IndicationFormStateImplCopyWithImpl<$Res>;
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
class __$$IndicationFormStateImplCopyWithImpl<$Res>
    extends _$IndicationFormStateCopyWithImpl<$Res, _$IndicationFormStateImpl>
    implements _$$IndicationFormStateImplCopyWith<$Res> {
  __$$IndicationFormStateImplCopyWithImpl(_$IndicationFormStateImpl _value,
      $Res Function(_$IndicationFormStateImpl) _then)
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
    return _then(_$IndicationFormStateImpl(
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

class _$IndicationFormStateImpl implements _IndicationFormState {
  const _$IndicationFormStateImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndicationFormStateImpl &&
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
  _$$IndicationFormStateImplCopyWith<_$IndicationFormStateImpl> get copyWith =>
      __$$IndicationFormStateImplCopyWithImpl<_$IndicationFormStateImpl>(
          this, _$identity);
}

abstract class _IndicationFormState implements IndicationFormState {
  const factory _IndicationFormState(
      {required final Indication indication,
      required final bool showErrorMessages,
      required final bool isUpdating,
      required final bool isSaving,
      required final Option<Either<IndicationFailure, Unit>>
          saveFailureOrSuccessOption}) = _$IndicationFormStateImpl;

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
  _$$IndicationFormStateImplCopyWith<_$IndicationFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
