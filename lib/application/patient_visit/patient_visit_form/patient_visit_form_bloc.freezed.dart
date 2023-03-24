// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_visit_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PatientVisitFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<PatientVisit> patientVisit) initialized,
    required TResult Function(List<Prescription> treatment) onTreatmentChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<PatientVisit> patientVisit)? initialized,
    TResult? Function(List<Prescription> treatment)? onTreatmentChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<PatientVisit> patientVisit)? initialized,
    TResult Function(List<Prescription> treatment)? onTreatmentChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TreatmentChanged value) onTreatmentChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TreatmentChanged value)? onTreatmentChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TreatmentChanged value)? onTreatmentChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientVisitFormEventCopyWith<$Res> {
  factory $PatientVisitFormEventCopyWith(PatientVisitFormEvent value,
          $Res Function(PatientVisitFormEvent) then) =
      _$PatientVisitFormEventCopyWithImpl<$Res, PatientVisitFormEvent>;
}

/// @nodoc
class _$PatientVisitFormEventCopyWithImpl<$Res,
        $Val extends PatientVisitFormEvent>
    implements $PatientVisitFormEventCopyWith<$Res> {
  _$PatientVisitFormEventCopyWithImpl(this._value, this._then);

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
  $Res call({Option<PatientVisit> patientVisit});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$PatientVisitFormEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientVisit = null,
  }) {
    return _then(_$_Initialized(
      null == patientVisit
          ? _value.patientVisit
          : patientVisit // ignore: cast_nullable_to_non_nullable
              as Option<PatientVisit>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.patientVisit);

  @override
  final Option<PatientVisit> patientVisit;

  @override
  String toString() {
    return 'PatientVisitFormEvent.initialized(patientVisit: $patientVisit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.patientVisit, patientVisit) ||
                other.patientVisit == patientVisit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, patientVisit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<PatientVisit> patientVisit) initialized,
    required TResult Function(List<Prescription> treatment) onTreatmentChanged,
    required TResult Function() saved,
  }) {
    return initialized(patientVisit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<PatientVisit> patientVisit)? initialized,
    TResult? Function(List<Prescription> treatment)? onTreatmentChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(patientVisit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<PatientVisit> patientVisit)? initialized,
    TResult Function(List<Prescription> treatment)? onTreatmentChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(patientVisit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TreatmentChanged value) onTreatmentChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TreatmentChanged value)? onTreatmentChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TreatmentChanged value)? onTreatmentChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements PatientVisitFormEvent {
  const factory _Initialized(final Option<PatientVisit> patientVisit) =
      _$_Initialized;

  Option<PatientVisit> get patientVisit;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TreatmentChangedCopyWith<$Res> {
  factory _$$_TreatmentChangedCopyWith(
          _$_TreatmentChanged value, $Res Function(_$_TreatmentChanged) then) =
      __$$_TreatmentChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Prescription> treatment});
}

/// @nodoc
class __$$_TreatmentChangedCopyWithImpl<$Res>
    extends _$PatientVisitFormEventCopyWithImpl<$Res, _$_TreatmentChanged>
    implements _$$_TreatmentChangedCopyWith<$Res> {
  __$$_TreatmentChangedCopyWithImpl(
      _$_TreatmentChanged _value, $Res Function(_$_TreatmentChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treatment = null,
  }) {
    return _then(_$_TreatmentChanged(
      null == treatment
          ? _value._treatment
          : treatment // ignore: cast_nullable_to_non_nullable
              as List<Prescription>,
    ));
  }
}

/// @nodoc

class _$_TreatmentChanged implements _TreatmentChanged {
  const _$_TreatmentChanged(final List<Prescription> treatment)
      : _treatment = treatment;

  final List<Prescription> _treatment;
  @override
  List<Prescription> get treatment {
    if (_treatment is EqualUnmodifiableListView) return _treatment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_treatment);
  }

  @override
  String toString() {
    return 'PatientVisitFormEvent.onTreatmentChanged(treatment: $treatment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TreatmentChanged &&
            const DeepCollectionEquality()
                .equals(other._treatment, _treatment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_treatment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TreatmentChangedCopyWith<_$_TreatmentChanged> get copyWith =>
      __$$_TreatmentChangedCopyWithImpl<_$_TreatmentChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<PatientVisit> patientVisit) initialized,
    required TResult Function(List<Prescription> treatment) onTreatmentChanged,
    required TResult Function() saved,
  }) {
    return onTreatmentChanged(treatment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<PatientVisit> patientVisit)? initialized,
    TResult? Function(List<Prescription> treatment)? onTreatmentChanged,
    TResult? Function()? saved,
  }) {
    return onTreatmentChanged?.call(treatment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<PatientVisit> patientVisit)? initialized,
    TResult Function(List<Prescription> treatment)? onTreatmentChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (onTreatmentChanged != null) {
      return onTreatmentChanged(treatment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TreatmentChanged value) onTreatmentChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return onTreatmentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TreatmentChanged value)? onTreatmentChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return onTreatmentChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TreatmentChanged value)? onTreatmentChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (onTreatmentChanged != null) {
      return onTreatmentChanged(this);
    }
    return orElse();
  }
}

abstract class _TreatmentChanged implements PatientVisitFormEvent {
  const factory _TreatmentChanged(final List<Prescription> treatment) =
      _$_TreatmentChanged;

  List<Prescription> get treatment;
  @JsonKey(ignore: true)
  _$$_TreatmentChangedCopyWith<_$_TreatmentChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$PatientVisitFormEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'PatientVisitFormEvent.saved()';
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
    required TResult Function(Option<PatientVisit> patientVisit) initialized,
    required TResult Function(List<Prescription> treatment) onTreatmentChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<PatientVisit> patientVisit)? initialized,
    TResult? Function(List<Prescription> treatment)? onTreatmentChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<PatientVisit> patientVisit)? initialized,
    TResult Function(List<Prescription> treatment)? onTreatmentChanged,
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
    required TResult Function(_TreatmentChanged value) onTreatmentChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TreatmentChanged value)? onTreatmentChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TreatmentChanged value)? onTreatmentChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements PatientVisitFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$PatientVisitFormState {
  PatientVisit get patientVisit => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isUpdating => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<PatientVisitFailures, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientVisitFormStateCopyWith<PatientVisitFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientVisitFormStateCopyWith<$Res> {
  factory $PatientVisitFormStateCopyWith(PatientVisitFormState value,
          $Res Function(PatientVisitFormState) then) =
      _$PatientVisitFormStateCopyWithImpl<$Res, PatientVisitFormState>;
  @useResult
  $Res call(
      {PatientVisit patientVisit,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<PatientVisitFailures, Unit>> saveFailureOrSuccessOption});

  $PatientVisitCopyWith<$Res> get patientVisit;
}

/// @nodoc
class _$PatientVisitFormStateCopyWithImpl<$Res,
        $Val extends PatientVisitFormState>
    implements $PatientVisitFormStateCopyWith<$Res> {
  _$PatientVisitFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientVisit = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      patientVisit: null == patientVisit
          ? _value.patientVisit
          : patientVisit // ignore: cast_nullable_to_non_nullable
              as PatientVisit,
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
              as Option<Either<PatientVisitFailures, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientVisitCopyWith<$Res> get patientVisit {
    return $PatientVisitCopyWith<$Res>(_value.patientVisit, (value) {
      return _then(_value.copyWith(patientVisit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PatientVisitFormStateCopyWith<$Res>
    implements $PatientVisitFormStateCopyWith<$Res> {
  factory _$$_PatientVisitFormStateCopyWith(_$_PatientVisitFormState value,
          $Res Function(_$_PatientVisitFormState) then) =
      __$$_PatientVisitFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PatientVisit patientVisit,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<PatientVisitFailures, Unit>> saveFailureOrSuccessOption});

  @override
  $PatientVisitCopyWith<$Res> get patientVisit;
}

/// @nodoc
class __$$_PatientVisitFormStateCopyWithImpl<$Res>
    extends _$PatientVisitFormStateCopyWithImpl<$Res, _$_PatientVisitFormState>
    implements _$$_PatientVisitFormStateCopyWith<$Res> {
  __$$_PatientVisitFormStateCopyWithImpl(_$_PatientVisitFormState _value,
      $Res Function(_$_PatientVisitFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientVisit = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$_PatientVisitFormState(
      patientVisit: null == patientVisit
          ? _value.patientVisit
          : patientVisit // ignore: cast_nullable_to_non_nullable
              as PatientVisit,
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
              as Option<Either<PatientVisitFailures, Unit>>,
    ));
  }
}

/// @nodoc

class _$_PatientVisitFormState implements _PatientVisitFormState {
  const _$_PatientVisitFormState(
      {required this.patientVisit,
      required this.showErrorMessages,
      required this.isUpdating,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final PatientVisit patientVisit;
  @override
  final bool showErrorMessages;
  @override
  final bool isUpdating;
  @override
  final bool isSaving;
  @override
  final Option<Either<PatientVisitFailures, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'PatientVisitFormState(patientVisit: $patientVisit, showErrorMessages: $showErrorMessages, isUpdating: $isUpdating, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PatientVisitFormState &&
            (identical(other.patientVisit, patientVisit) ||
                other.patientVisit == patientVisit) &&
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
  int get hashCode => Object.hash(runtimeType, patientVisit, showErrorMessages,
      isUpdating, isSaving, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatientVisitFormStateCopyWith<_$_PatientVisitFormState> get copyWith =>
      __$$_PatientVisitFormStateCopyWithImpl<_$_PatientVisitFormState>(
          this, _$identity);
}

abstract class _PatientVisitFormState implements PatientVisitFormState {
  const factory _PatientVisitFormState(
      {required final PatientVisit patientVisit,
      required final bool showErrorMessages,
      required final bool isUpdating,
      required final bool isSaving,
      required final Option<Either<PatientVisitFailures, Unit>>
          saveFailureOrSuccessOption}) = _$_PatientVisitFormState;

  @override
  PatientVisit get patientVisit;
  @override
  bool get showErrorMessages;
  @override
  bool get isUpdating;
  @override
  bool get isSaving;
  @override
  Option<Either<PatientVisitFailures, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_PatientVisitFormStateCopyWith<_$_PatientVisitFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
