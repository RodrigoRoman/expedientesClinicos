// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_visit_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PatientVisitActorEvent {
  PatientVisit get patientVisit => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PatientVisit patientVisit) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PatientVisit patientVisit)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PatientVisit patientVisit)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Deleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientVisitActorEventCopyWith<PatientVisitActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientVisitActorEventCopyWith<$Res> {
  factory $PatientVisitActorEventCopyWith(PatientVisitActorEvent value,
          $Res Function(PatientVisitActorEvent) then) =
      _$PatientVisitActorEventCopyWithImpl<$Res, PatientVisitActorEvent>;
  @useResult
  $Res call({PatientVisit patientVisit});

  $PatientVisitCopyWith<$Res> get patientVisit;
}

/// @nodoc
class _$PatientVisitActorEventCopyWithImpl<$Res,
        $Val extends PatientVisitActorEvent>
    implements $PatientVisitActorEventCopyWith<$Res> {
  _$PatientVisitActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientVisit = null,
  }) {
    return _then(_value.copyWith(
      patientVisit: null == patientVisit
          ? _value.patientVisit
          : patientVisit // ignore: cast_nullable_to_non_nullable
              as PatientVisit,
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
abstract class _$$_DeletedCopyWith<$Res>
    implements $PatientVisitActorEventCopyWith<$Res> {
  factory _$$_DeletedCopyWith(
          _$_Deleted value, $Res Function(_$_Deleted) then) =
      __$$_DeletedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PatientVisit patientVisit});

  @override
  $PatientVisitCopyWith<$Res> get patientVisit;
}

/// @nodoc
class __$$_DeletedCopyWithImpl<$Res>
    extends _$PatientVisitActorEventCopyWithImpl<$Res, _$_Deleted>
    implements _$$_DeletedCopyWith<$Res> {
  __$$_DeletedCopyWithImpl(_$_Deleted _value, $Res Function(_$_Deleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientVisit = null,
  }) {
    return _then(_$_Deleted(
      null == patientVisit
          ? _value.patientVisit
          : patientVisit // ignore: cast_nullable_to_non_nullable
              as PatientVisit,
    ));
  }
}

/// @nodoc

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.patientVisit);

  @override
  final PatientVisit patientVisit;

  @override
  String toString() {
    return 'PatientVisitActorEvent.deleted(patientVisit: $patientVisit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Deleted &&
            (identical(other.patientVisit, patientVisit) ||
                other.patientVisit == patientVisit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, patientVisit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeletedCopyWith<_$_Deleted> get copyWith =>
      __$$_DeletedCopyWithImpl<_$_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PatientVisit patientVisit) deleted,
  }) {
    return deleted(patientVisit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PatientVisit patientVisit)? deleted,
  }) {
    return deleted?.call(patientVisit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PatientVisit patientVisit)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(patientVisit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Deleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements PatientVisitActorEvent {
  const factory _Deleted(final PatientVisit patientVisit) = _$_Deleted;

  @override
  PatientVisit get patientVisit;
  @override
  @JsonKey(ignore: true)
  _$$_DeletedCopyWith<_$_Deleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PatientVisitActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(PatientVisitFailures patientVisitFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(PatientVisitFailures patientVisitFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(PatientVisitFailures patientVisitFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFalure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_DeleteFalure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFalure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientVisitActorStateCopyWith<$Res> {
  factory $PatientVisitActorStateCopyWith(PatientVisitActorState value,
          $Res Function(PatientVisitActorState) then) =
      _$PatientVisitActorStateCopyWithImpl<$Res, PatientVisitActorState>;
}

/// @nodoc
class _$PatientVisitActorStateCopyWithImpl<$Res,
        $Val extends PatientVisitActorState>
    implements $PatientVisitActorStateCopyWith<$Res> {
  _$PatientVisitActorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PatientVisitActorStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PatientVisitActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(PatientVisitFailures patientVisitFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(PatientVisitFailures patientVisitFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(PatientVisitFailures patientVisitFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFalure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_DeleteFalure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFalure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PatientVisitActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ActionInProgressCopyWith<$Res> {
  factory _$$_ActionInProgressCopyWith(
          _$_ActionInProgress value, $Res Function(_$_ActionInProgress) then) =
      __$$_ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ActionInProgressCopyWithImpl<$Res>
    extends _$PatientVisitActorStateCopyWithImpl<$Res, _$_ActionInProgress>
    implements _$$_ActionInProgressCopyWith<$Res> {
  __$$_ActionInProgressCopyWithImpl(
      _$_ActionInProgress _value, $Res Function(_$_ActionInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'PatientVisitActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(PatientVisitFailures patientVisitFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(PatientVisitFailures patientVisitFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(PatientVisitFailures patientVisitFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFalure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_DeleteFalure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFalure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements PatientVisitActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$$_DeleteFalureCopyWith<$Res> {
  factory _$$_DeleteFalureCopyWith(
          _$_DeleteFalure value, $Res Function(_$_DeleteFalure) then) =
      __$$_DeleteFalureCopyWithImpl<$Res>;
  @useResult
  $Res call({PatientVisitFailures patientVisitFailure});

  $PatientVisitFailuresCopyWith<$Res> get patientVisitFailure;
}

/// @nodoc
class __$$_DeleteFalureCopyWithImpl<$Res>
    extends _$PatientVisitActorStateCopyWithImpl<$Res, _$_DeleteFalure>
    implements _$$_DeleteFalureCopyWith<$Res> {
  __$$_DeleteFalureCopyWithImpl(
      _$_DeleteFalure _value, $Res Function(_$_DeleteFalure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientVisitFailure = null,
  }) {
    return _then(_$_DeleteFalure(
      null == patientVisitFailure
          ? _value.patientVisitFailure
          : patientVisitFailure // ignore: cast_nullable_to_non_nullable
              as PatientVisitFailures,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientVisitFailuresCopyWith<$Res> get patientVisitFailure {
    return $PatientVisitFailuresCopyWith<$Res>(_value.patientVisitFailure,
        (value) {
      return _then(_value.copyWith(patientVisitFailure: value));
    });
  }
}

/// @nodoc

class _$_DeleteFalure implements _DeleteFalure {
  const _$_DeleteFalure(this.patientVisitFailure);

  @override
  final PatientVisitFailures patientVisitFailure;

  @override
  String toString() {
    return 'PatientVisitActorState.deleteFailure(patientVisitFailure: $patientVisitFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteFalure &&
            (identical(other.patientVisitFailure, patientVisitFailure) ||
                other.patientVisitFailure == patientVisitFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, patientVisitFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteFalureCopyWith<_$_DeleteFalure> get copyWith =>
      __$$_DeleteFalureCopyWithImpl<_$_DeleteFalure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(PatientVisitFailures patientVisitFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return deleteFailure(patientVisitFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(PatientVisitFailures patientVisitFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
  }) {
    return deleteFailure?.call(patientVisitFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(PatientVisitFailures patientVisitFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(patientVisitFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFalure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_DeleteFalure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return deleteFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFalure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFalure implements PatientVisitActorState {
  const factory _DeleteFalure(final PatientVisitFailures patientVisitFailure) =
      _$_DeleteFalure;

  PatientVisitFailures get patientVisitFailure;
  @JsonKey(ignore: true)
  _$$_DeleteFalureCopyWith<_$_DeleteFalure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteSuccessCopyWith<$Res> {
  factory _$$_DeleteSuccessCopyWith(
          _$_DeleteSuccess value, $Res Function(_$_DeleteSuccess) then) =
      __$$_DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteSuccessCopyWithImpl<$Res>
    extends _$PatientVisitActorStateCopyWithImpl<$Res, _$_DeleteSuccess>
    implements _$$_DeleteSuccessCopyWith<$Res> {
  __$$_DeleteSuccessCopyWithImpl(
      _$_DeleteSuccess _value, $Res Function(_$_DeleteSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'PatientVisitActorState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(PatientVisitFailures patientVisitFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(PatientVisitFailures patientVisitFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(PatientVisitFailures patientVisitFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFalure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_DeleteFalure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFalure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements PatientVisitActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}
