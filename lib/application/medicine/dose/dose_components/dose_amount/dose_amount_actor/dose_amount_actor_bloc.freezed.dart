// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dose_amount_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DoseAmountActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DoseAmount doseAmount) deleted,
    required TResult Function() faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DoseAmount doseAmount)? deleted,
    TResult? Function()? faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DoseAmount doseAmount)? deleted,
    TResult Function()? faker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteDoseAmount value) deleted,
    required TResult Function(_FakeDoseAmount value) faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteDoseAmount value)? deleted,
    TResult? Function(_FakeDoseAmount value)? faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteDoseAmount value)? deleted,
    TResult Function(_FakeDoseAmount value)? faker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoseAmountActorEventCopyWith<$Res> {
  factory $DoseAmountActorEventCopyWith(DoseAmountActorEvent value,
          $Res Function(DoseAmountActorEvent) then) =
      _$DoseAmountActorEventCopyWithImpl<$Res, DoseAmountActorEvent>;
}

/// @nodoc
class _$DoseAmountActorEventCopyWithImpl<$Res,
        $Val extends DoseAmountActorEvent>
    implements $DoseAmountActorEventCopyWith<$Res> {
  _$DoseAmountActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DeleteDoseAmountCopyWith<$Res> {
  factory _$$_DeleteDoseAmountCopyWith(
          _$_DeleteDoseAmount value, $Res Function(_$_DeleteDoseAmount) then) =
      __$$_DeleteDoseAmountCopyWithImpl<$Res>;
  @useResult
  $Res call({DoseAmount doseAmount});

  $DoseAmountCopyWith<$Res> get doseAmount;
}

/// @nodoc
class __$$_DeleteDoseAmountCopyWithImpl<$Res>
    extends _$DoseAmountActorEventCopyWithImpl<$Res, _$_DeleteDoseAmount>
    implements _$$_DeleteDoseAmountCopyWith<$Res> {
  __$$_DeleteDoseAmountCopyWithImpl(
      _$_DeleteDoseAmount _value, $Res Function(_$_DeleteDoseAmount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doseAmount = null,
  }) {
    return _then(_$_DeleteDoseAmount(
      null == doseAmount
          ? _value.doseAmount
          : doseAmount // ignore: cast_nullable_to_non_nullable
              as DoseAmount,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DoseAmountCopyWith<$Res> get doseAmount {
    return $DoseAmountCopyWith<$Res>(_value.doseAmount, (value) {
      return _then(_value.copyWith(doseAmount: value));
    });
  }
}

/// @nodoc

class _$_DeleteDoseAmount implements _DeleteDoseAmount {
  const _$_DeleteDoseAmount(this.doseAmount);

  @override
  final DoseAmount doseAmount;

  @override
  String toString() {
    return 'DoseAmountActorEvent.deleted(doseAmount: $doseAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteDoseAmount &&
            (identical(other.doseAmount, doseAmount) ||
                other.doseAmount == doseAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doseAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteDoseAmountCopyWith<_$_DeleteDoseAmount> get copyWith =>
      __$$_DeleteDoseAmountCopyWithImpl<_$_DeleteDoseAmount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DoseAmount doseAmount) deleted,
    required TResult Function() faker,
  }) {
    return deleted(doseAmount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DoseAmount doseAmount)? deleted,
    TResult? Function()? faker,
  }) {
    return deleted?.call(doseAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DoseAmount doseAmount)? deleted,
    TResult Function()? faker,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(doseAmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteDoseAmount value) deleted,
    required TResult Function(_FakeDoseAmount value) faker,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteDoseAmount value)? deleted,
    TResult? Function(_FakeDoseAmount value)? faker,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteDoseAmount value)? deleted,
    TResult Function(_FakeDoseAmount value)? faker,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _DeleteDoseAmount implements DoseAmountActorEvent {
  const factory _DeleteDoseAmount(final DoseAmount doseAmount) =
      _$_DeleteDoseAmount;

  DoseAmount get doseAmount;
  @JsonKey(ignore: true)
  _$$_DeleteDoseAmountCopyWith<_$_DeleteDoseAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FakeDoseAmountCopyWith<$Res> {
  factory _$$_FakeDoseAmountCopyWith(
          _$_FakeDoseAmount value, $Res Function(_$_FakeDoseAmount) then) =
      __$$_FakeDoseAmountCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FakeDoseAmountCopyWithImpl<$Res>
    extends _$DoseAmountActorEventCopyWithImpl<$Res, _$_FakeDoseAmount>
    implements _$$_FakeDoseAmountCopyWith<$Res> {
  __$$_FakeDoseAmountCopyWithImpl(
      _$_FakeDoseAmount _value, $Res Function(_$_FakeDoseAmount) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FakeDoseAmount implements _FakeDoseAmount {
  const _$_FakeDoseAmount();

  @override
  String toString() {
    return 'DoseAmountActorEvent.faker()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FakeDoseAmount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DoseAmount doseAmount) deleted,
    required TResult Function() faker,
  }) {
    return faker();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DoseAmount doseAmount)? deleted,
    TResult? Function()? faker,
  }) {
    return faker?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DoseAmount doseAmount)? deleted,
    TResult Function()? faker,
    required TResult orElse(),
  }) {
    if (faker != null) {
      return faker();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteDoseAmount value) deleted,
    required TResult Function(_FakeDoseAmount value) faker,
  }) {
    return faker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteDoseAmount value)? deleted,
    TResult? Function(_FakeDoseAmount value)? faker,
  }) {
    return faker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteDoseAmount value)? deleted,
    TResult Function(_FakeDoseAmount value)? faker,
    required TResult orElse(),
  }) {
    if (faker != null) {
      return faker(this);
    }
    return orElse();
  }
}

abstract class _FakeDoseAmount implements DoseAmountActorEvent {
  const factory _FakeDoseAmount() = _$_FakeDoseAmount;
}

/// @nodoc
mixin _$DoseAmountActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(DoseAmountFailures doseAmountFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(DoseAmountFailures doseAmountFailure) fakeFailure,
    required TResult Function() fakeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DoseAmountFailures doseAmountFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(DoseAmountFailures doseAmountFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DoseAmountFailures doseAmountFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(DoseAmountFailures doseAmountFailure)? fakeFailure,
    TResult Function()? fakeSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_FakeFailure value) fakeFailure,
    required TResult Function(_FakeSuccess value) fakeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_FakeFailure value)? fakeFailure,
    TResult? Function(_FakeSuccess value)? fakeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_FakeFailure value)? fakeFailure,
    TResult Function(_FakeSuccess value)? fakeSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoseAmountActorStateCopyWith<$Res> {
  factory $DoseAmountActorStateCopyWith(DoseAmountActorState value,
          $Res Function(DoseAmountActorState) then) =
      _$DoseAmountActorStateCopyWithImpl<$Res, DoseAmountActorState>;
}

/// @nodoc
class _$DoseAmountActorStateCopyWithImpl<$Res,
        $Val extends DoseAmountActorState>
    implements $DoseAmountActorStateCopyWith<$Res> {
  _$DoseAmountActorStateCopyWithImpl(this._value, this._then);

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
    extends _$DoseAmountActorStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'DoseAmountActorState.initial()';
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
    required TResult Function(DoseAmountFailures doseAmountFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(DoseAmountFailures doseAmountFailure) fakeFailure,
    required TResult Function() fakeSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DoseAmountFailures doseAmountFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(DoseAmountFailures doseAmountFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DoseAmountFailures doseAmountFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(DoseAmountFailures doseAmountFailure)? fakeFailure,
    TResult Function()? fakeSuccess,
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
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_FakeFailure value) fakeFailure,
    required TResult Function(_FakeSuccess value) fakeSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_FakeFailure value)? fakeFailure,
    TResult? Function(_FakeSuccess value)? fakeSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_FakeFailure value)? fakeFailure,
    TResult Function(_FakeSuccess value)? fakeSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DoseAmountActorState {
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
    extends _$DoseAmountActorStateCopyWithImpl<$Res, _$_ActionInProgress>
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
    return 'DoseAmountActorState.actionInProgress()';
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
    required TResult Function(DoseAmountFailures doseAmountFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(DoseAmountFailures doseAmountFailure) fakeFailure,
    required TResult Function() fakeSuccess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DoseAmountFailures doseAmountFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(DoseAmountFailures doseAmountFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DoseAmountFailures doseAmountFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(DoseAmountFailures doseAmountFailure)? fakeFailure,
    TResult Function()? fakeSuccess,
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
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_FakeFailure value) fakeFailure,
    required TResult Function(_FakeSuccess value) fakeSuccess,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_FakeFailure value)? fakeFailure,
    TResult? Function(_FakeSuccess value)? fakeSuccess,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_FakeFailure value)? fakeFailure,
    TResult Function(_FakeSuccess value)? fakeSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements DoseAmountActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$$_DeleteFailureCopyWith<$Res> {
  factory _$$_DeleteFailureCopyWith(
          _$_DeleteFailure value, $Res Function(_$_DeleteFailure) then) =
      __$$_DeleteFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({DoseAmountFailures doseAmountFailure});

  $DoseAmountFailuresCopyWith<$Res> get doseAmountFailure;
}

/// @nodoc
class __$$_DeleteFailureCopyWithImpl<$Res>
    extends _$DoseAmountActorStateCopyWithImpl<$Res, _$_DeleteFailure>
    implements _$$_DeleteFailureCopyWith<$Res> {
  __$$_DeleteFailureCopyWithImpl(
      _$_DeleteFailure _value, $Res Function(_$_DeleteFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doseAmountFailure = null,
  }) {
    return _then(_$_DeleteFailure(
      null == doseAmountFailure
          ? _value.doseAmountFailure
          : doseAmountFailure // ignore: cast_nullable_to_non_nullable
              as DoseAmountFailures,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DoseAmountFailuresCopyWith<$Res> get doseAmountFailure {
    return $DoseAmountFailuresCopyWith<$Res>(_value.doseAmountFailure, (value) {
      return _then(_value.copyWith(doseAmountFailure: value));
    });
  }
}

/// @nodoc

class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.doseAmountFailure);

  @override
  final DoseAmountFailures doseAmountFailure;

  @override
  String toString() {
    return 'DoseAmountActorState.deleteFailure(doseAmountFailure: $doseAmountFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteFailure &&
            (identical(other.doseAmountFailure, doseAmountFailure) ||
                other.doseAmountFailure == doseAmountFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doseAmountFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteFailureCopyWith<_$_DeleteFailure> get copyWith =>
      __$$_DeleteFailureCopyWithImpl<_$_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(DoseAmountFailures doseAmountFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(DoseAmountFailures doseAmountFailure) fakeFailure,
    required TResult Function() fakeSuccess,
  }) {
    return deleteFailure(doseAmountFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DoseAmountFailures doseAmountFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(DoseAmountFailures doseAmountFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return deleteFailure?.call(doseAmountFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DoseAmountFailures doseAmountFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(DoseAmountFailures doseAmountFailure)? fakeFailure,
    TResult Function()? fakeSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(doseAmountFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_FakeFailure value) fakeFailure,
    required TResult Function(_FakeSuccess value) fakeSuccess,
  }) {
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_FakeFailure value)? fakeFailure,
    TResult? Function(_FakeSuccess value)? fakeSuccess,
  }) {
    return deleteFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_FakeFailure value)? fakeFailure,
    TResult Function(_FakeSuccess value)? fakeSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements DoseAmountActorState {
  const factory _DeleteFailure(final DoseAmountFailures doseAmountFailure) =
      _$_DeleteFailure;

  DoseAmountFailures get doseAmountFailure;
  @JsonKey(ignore: true)
  _$$_DeleteFailureCopyWith<_$_DeleteFailure> get copyWith =>
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
    extends _$DoseAmountActorStateCopyWithImpl<$Res, _$_DeleteSuccess>
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
    return 'DoseAmountActorState.deleteSuccess()';
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
    required TResult Function(DoseAmountFailures doseAmountFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(DoseAmountFailures doseAmountFailure) fakeFailure,
    required TResult Function() fakeSuccess,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DoseAmountFailures doseAmountFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(DoseAmountFailures doseAmountFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DoseAmountFailures doseAmountFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(DoseAmountFailures doseAmountFailure)? fakeFailure,
    TResult Function()? fakeSuccess,
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
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_FakeFailure value) fakeFailure,
    required TResult Function(_FakeSuccess value) fakeSuccess,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_FakeFailure value)? fakeFailure,
    TResult? Function(_FakeSuccess value)? fakeSuccess,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_FakeFailure value)? fakeFailure,
    TResult Function(_FakeSuccess value)? fakeSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements DoseAmountActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}

/// @nodoc
abstract class _$$_FakeFailureCopyWith<$Res> {
  factory _$$_FakeFailureCopyWith(
          _$_FakeFailure value, $Res Function(_$_FakeFailure) then) =
      __$$_FakeFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({DoseAmountFailures doseAmountFailure});

  $DoseAmountFailuresCopyWith<$Res> get doseAmountFailure;
}

/// @nodoc
class __$$_FakeFailureCopyWithImpl<$Res>
    extends _$DoseAmountActorStateCopyWithImpl<$Res, _$_FakeFailure>
    implements _$$_FakeFailureCopyWith<$Res> {
  __$$_FakeFailureCopyWithImpl(
      _$_FakeFailure _value, $Res Function(_$_FakeFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doseAmountFailure = null,
  }) {
    return _then(_$_FakeFailure(
      null == doseAmountFailure
          ? _value.doseAmountFailure
          : doseAmountFailure // ignore: cast_nullable_to_non_nullable
              as DoseAmountFailures,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DoseAmountFailuresCopyWith<$Res> get doseAmountFailure {
    return $DoseAmountFailuresCopyWith<$Res>(_value.doseAmountFailure, (value) {
      return _then(_value.copyWith(doseAmountFailure: value));
    });
  }
}

/// @nodoc

class _$_FakeFailure implements _FakeFailure {
  const _$_FakeFailure(this.doseAmountFailure);

  @override
  final DoseAmountFailures doseAmountFailure;

  @override
  String toString() {
    return 'DoseAmountActorState.fakeFailure(doseAmountFailure: $doseAmountFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FakeFailure &&
            (identical(other.doseAmountFailure, doseAmountFailure) ||
                other.doseAmountFailure == doseAmountFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doseAmountFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FakeFailureCopyWith<_$_FakeFailure> get copyWith =>
      __$$_FakeFailureCopyWithImpl<_$_FakeFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(DoseAmountFailures doseAmountFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(DoseAmountFailures doseAmountFailure) fakeFailure,
    required TResult Function() fakeSuccess,
  }) {
    return fakeFailure(doseAmountFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DoseAmountFailures doseAmountFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(DoseAmountFailures doseAmountFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return fakeFailure?.call(doseAmountFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DoseAmountFailures doseAmountFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(DoseAmountFailures doseAmountFailure)? fakeFailure,
    TResult Function()? fakeSuccess,
    required TResult orElse(),
  }) {
    if (fakeFailure != null) {
      return fakeFailure(doseAmountFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_FakeFailure value) fakeFailure,
    required TResult Function(_FakeSuccess value) fakeSuccess,
  }) {
    return fakeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_FakeFailure value)? fakeFailure,
    TResult? Function(_FakeSuccess value)? fakeSuccess,
  }) {
    return fakeFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_FakeFailure value)? fakeFailure,
    TResult Function(_FakeSuccess value)? fakeSuccess,
    required TResult orElse(),
  }) {
    if (fakeFailure != null) {
      return fakeFailure(this);
    }
    return orElse();
  }
}

abstract class _FakeFailure implements DoseAmountActorState {
  const factory _FakeFailure(final DoseAmountFailures doseAmountFailure) =
      _$_FakeFailure;

  DoseAmountFailures get doseAmountFailure;
  @JsonKey(ignore: true)
  _$$_FakeFailureCopyWith<_$_FakeFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FakeSuccessCopyWith<$Res> {
  factory _$$_FakeSuccessCopyWith(
          _$_FakeSuccess value, $Res Function(_$_FakeSuccess) then) =
      __$$_FakeSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FakeSuccessCopyWithImpl<$Res>
    extends _$DoseAmountActorStateCopyWithImpl<$Res, _$_FakeSuccess>
    implements _$$_FakeSuccessCopyWith<$Res> {
  __$$_FakeSuccessCopyWithImpl(
      _$_FakeSuccess _value, $Res Function(_$_FakeSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FakeSuccess implements _FakeSuccess {
  const _$_FakeSuccess();

  @override
  String toString() {
    return 'DoseAmountActorState.fakeSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FakeSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(DoseAmountFailures doseAmountFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(DoseAmountFailures doseAmountFailure) fakeFailure,
    required TResult Function() fakeSuccess,
  }) {
    return fakeSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DoseAmountFailures doseAmountFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(DoseAmountFailures doseAmountFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return fakeSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DoseAmountFailures doseAmountFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(DoseAmountFailures doseAmountFailure)? fakeFailure,
    TResult Function()? fakeSuccess,
    required TResult orElse(),
  }) {
    if (fakeSuccess != null) {
      return fakeSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_FakeFailure value) fakeFailure,
    required TResult Function(_FakeSuccess value) fakeSuccess,
  }) {
    return fakeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_FakeFailure value)? fakeFailure,
    TResult? Function(_FakeSuccess value)? fakeSuccess,
  }) {
    return fakeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_FakeFailure value)? fakeFailure,
    TResult Function(_FakeSuccess value)? fakeSuccess,
    required TResult orElse(),
  }) {
    if (fakeSuccess != null) {
      return fakeSuccess(this);
    }
    return orElse();
  }
}

abstract class _FakeSuccess implements DoseAmountActorState {
  const factory _FakeSuccess() = _$_FakeSuccess;
}
