// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_hours_dose_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DayHoursDoseActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DayHoursDose dayHoursDose) deleted,
    required TResult Function() faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DayHoursDose dayHoursDose)? deleted,
    TResult? Function()? faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DayHoursDose dayHoursDose)? deleted,
    TResult Function()? faker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteDayHoursDose value) deleted,
    required TResult Function(_FakeDayHoursDose value) faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteDayHoursDose value)? deleted,
    TResult? Function(_FakeDayHoursDose value)? faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteDayHoursDose value)? deleted,
    TResult Function(_FakeDayHoursDose value)? faker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayHoursDoseActorEventCopyWith<$Res> {
  factory $DayHoursDoseActorEventCopyWith(DayHoursDoseActorEvent value,
          $Res Function(DayHoursDoseActorEvent) then) =
      _$DayHoursDoseActorEventCopyWithImpl<$Res, DayHoursDoseActorEvent>;
}

/// @nodoc
class _$DayHoursDoseActorEventCopyWithImpl<$Res,
        $Val extends DayHoursDoseActorEvent>
    implements $DayHoursDoseActorEventCopyWith<$Res> {
  _$DayHoursDoseActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DeleteDayHoursDoseImplCopyWith<$Res> {
  factory _$$DeleteDayHoursDoseImplCopyWith(_$DeleteDayHoursDoseImpl value,
          $Res Function(_$DeleteDayHoursDoseImpl) then) =
      __$$DeleteDayHoursDoseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DayHoursDose dayHoursDose});

  $DayHoursDoseCopyWith<$Res> get dayHoursDose;
}

/// @nodoc
class __$$DeleteDayHoursDoseImplCopyWithImpl<$Res>
    extends _$DayHoursDoseActorEventCopyWithImpl<$Res, _$DeleteDayHoursDoseImpl>
    implements _$$DeleteDayHoursDoseImplCopyWith<$Res> {
  __$$DeleteDayHoursDoseImplCopyWithImpl(_$DeleteDayHoursDoseImpl _value,
      $Res Function(_$DeleteDayHoursDoseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayHoursDose = null,
  }) {
    return _then(_$DeleteDayHoursDoseImpl(
      null == dayHoursDose
          ? _value.dayHoursDose
          : dayHoursDose // ignore: cast_nullable_to_non_nullable
              as DayHoursDose,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DayHoursDoseCopyWith<$Res> get dayHoursDose {
    return $DayHoursDoseCopyWith<$Res>(_value.dayHoursDose, (value) {
      return _then(_value.copyWith(dayHoursDose: value));
    });
  }
}

/// @nodoc

class _$DeleteDayHoursDoseImpl implements _DeleteDayHoursDose {
  const _$DeleteDayHoursDoseImpl(this.dayHoursDose);

  @override
  final DayHoursDose dayHoursDose;

  @override
  String toString() {
    return 'DayHoursDoseActorEvent.deleted(dayHoursDose: $dayHoursDose)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteDayHoursDoseImpl &&
            (identical(other.dayHoursDose, dayHoursDose) ||
                other.dayHoursDose == dayHoursDose));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dayHoursDose);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteDayHoursDoseImplCopyWith<_$DeleteDayHoursDoseImpl> get copyWith =>
      __$$DeleteDayHoursDoseImplCopyWithImpl<_$DeleteDayHoursDoseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DayHoursDose dayHoursDose) deleted,
    required TResult Function() faker,
  }) {
    return deleted(dayHoursDose);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DayHoursDose dayHoursDose)? deleted,
    TResult? Function()? faker,
  }) {
    return deleted?.call(dayHoursDose);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DayHoursDose dayHoursDose)? deleted,
    TResult Function()? faker,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(dayHoursDose);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteDayHoursDose value) deleted,
    required TResult Function(_FakeDayHoursDose value) faker,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteDayHoursDose value)? deleted,
    TResult? Function(_FakeDayHoursDose value)? faker,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteDayHoursDose value)? deleted,
    TResult Function(_FakeDayHoursDose value)? faker,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _DeleteDayHoursDose implements DayHoursDoseActorEvent {
  const factory _DeleteDayHoursDose(final DayHoursDose dayHoursDose) =
      _$DeleteDayHoursDoseImpl;

  DayHoursDose get dayHoursDose;
  @JsonKey(ignore: true)
  _$$DeleteDayHoursDoseImplCopyWith<_$DeleteDayHoursDoseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FakeDayHoursDoseImplCopyWith<$Res> {
  factory _$$FakeDayHoursDoseImplCopyWith(_$FakeDayHoursDoseImpl value,
          $Res Function(_$FakeDayHoursDoseImpl) then) =
      __$$FakeDayHoursDoseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FakeDayHoursDoseImplCopyWithImpl<$Res>
    extends _$DayHoursDoseActorEventCopyWithImpl<$Res, _$FakeDayHoursDoseImpl>
    implements _$$FakeDayHoursDoseImplCopyWith<$Res> {
  __$$FakeDayHoursDoseImplCopyWithImpl(_$FakeDayHoursDoseImpl _value,
      $Res Function(_$FakeDayHoursDoseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FakeDayHoursDoseImpl implements _FakeDayHoursDose {
  const _$FakeDayHoursDoseImpl();

  @override
  String toString() {
    return 'DayHoursDoseActorEvent.faker()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FakeDayHoursDoseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DayHoursDose dayHoursDose) deleted,
    required TResult Function() faker,
  }) {
    return faker();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DayHoursDose dayHoursDose)? deleted,
    TResult? Function()? faker,
  }) {
    return faker?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DayHoursDose dayHoursDose)? deleted,
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
    required TResult Function(_DeleteDayHoursDose value) deleted,
    required TResult Function(_FakeDayHoursDose value) faker,
  }) {
    return faker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteDayHoursDose value)? deleted,
    TResult? Function(_FakeDayHoursDose value)? faker,
  }) {
    return faker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteDayHoursDose value)? deleted,
    TResult Function(_FakeDayHoursDose value)? faker,
    required TResult orElse(),
  }) {
    if (faker != null) {
      return faker(this);
    }
    return orElse();
  }
}

abstract class _FakeDayHoursDose implements DayHoursDoseActorEvent {
  const factory _FakeDayHoursDose() = _$FakeDayHoursDoseImpl;
}

/// @nodoc
mixin _$DayHoursDoseActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(DayHoursDoseFailures dayHoursDoseFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(DayHoursDoseFailures dayHoursDoseFailure)
        fakeFailure,
    required TResult Function() fakeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DayHoursDoseFailures dayHoursDoseFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(DayHoursDoseFailures dayHoursDoseFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DayHoursDoseFailures dayHoursDoseFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(DayHoursDoseFailures dayHoursDoseFailure)? fakeFailure,
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
abstract class $DayHoursDoseActorStateCopyWith<$Res> {
  factory $DayHoursDoseActorStateCopyWith(DayHoursDoseActorState value,
          $Res Function(DayHoursDoseActorState) then) =
      _$DayHoursDoseActorStateCopyWithImpl<$Res, DayHoursDoseActorState>;
}

/// @nodoc
class _$DayHoursDoseActorStateCopyWithImpl<$Res,
        $Val extends DayHoursDoseActorState>
    implements $DayHoursDoseActorStateCopyWith<$Res> {
  _$DayHoursDoseActorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DayHoursDoseActorStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DayHoursDoseActorState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(DayHoursDoseFailures dayHoursDoseFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(DayHoursDoseFailures dayHoursDoseFailure)
        fakeFailure,
    required TResult Function() fakeSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DayHoursDoseFailures dayHoursDoseFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(DayHoursDoseFailures dayHoursDoseFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DayHoursDoseFailures dayHoursDoseFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(DayHoursDoseFailures dayHoursDoseFailure)? fakeFailure,
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

abstract class _Initial implements DayHoursDoseActorState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ActionInProgressImplCopyWith<$Res> {
  factory _$$ActionInProgressImplCopyWith(_$ActionInProgressImpl value,
          $Res Function(_$ActionInProgressImpl) then) =
      __$$ActionInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActionInProgressImplCopyWithImpl<$Res>
    extends _$DayHoursDoseActorStateCopyWithImpl<$Res, _$ActionInProgressImpl>
    implements _$$ActionInProgressImplCopyWith<$Res> {
  __$$ActionInProgressImplCopyWithImpl(_$ActionInProgressImpl _value,
      $Res Function(_$ActionInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActionInProgressImpl implements _ActionInProgress {
  const _$ActionInProgressImpl();

  @override
  String toString() {
    return 'DayHoursDoseActorState.actionInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActionInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(DayHoursDoseFailures dayHoursDoseFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(DayHoursDoseFailures dayHoursDoseFailure)
        fakeFailure,
    required TResult Function() fakeSuccess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DayHoursDoseFailures dayHoursDoseFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(DayHoursDoseFailures dayHoursDoseFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DayHoursDoseFailures dayHoursDoseFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(DayHoursDoseFailures dayHoursDoseFailure)? fakeFailure,
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

abstract class _ActionInProgress implements DayHoursDoseActorState {
  const factory _ActionInProgress() = _$ActionInProgressImpl;
}

/// @nodoc
abstract class _$$DeleteFailureImplCopyWith<$Res> {
  factory _$$DeleteFailureImplCopyWith(
          _$DeleteFailureImpl value, $Res Function(_$DeleteFailureImpl) then) =
      __$$DeleteFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DayHoursDoseFailures dayHoursDoseFailure});

  $DayHoursDoseFailuresCopyWith<$Res> get dayHoursDoseFailure;
}

/// @nodoc
class __$$DeleteFailureImplCopyWithImpl<$Res>
    extends _$DayHoursDoseActorStateCopyWithImpl<$Res, _$DeleteFailureImpl>
    implements _$$DeleteFailureImplCopyWith<$Res> {
  __$$DeleteFailureImplCopyWithImpl(
      _$DeleteFailureImpl _value, $Res Function(_$DeleteFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayHoursDoseFailure = null,
  }) {
    return _then(_$DeleteFailureImpl(
      null == dayHoursDoseFailure
          ? _value.dayHoursDoseFailure
          : dayHoursDoseFailure // ignore: cast_nullable_to_non_nullable
              as DayHoursDoseFailures,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DayHoursDoseFailuresCopyWith<$Res> get dayHoursDoseFailure {
    return $DayHoursDoseFailuresCopyWith<$Res>(_value.dayHoursDoseFailure,
        (value) {
      return _then(_value.copyWith(dayHoursDoseFailure: value));
    });
  }
}

/// @nodoc

class _$DeleteFailureImpl implements _DeleteFailure {
  const _$DeleteFailureImpl(this.dayHoursDoseFailure);

  @override
  final DayHoursDoseFailures dayHoursDoseFailure;

  @override
  String toString() {
    return 'DayHoursDoseActorState.deleteFailure(dayHoursDoseFailure: $dayHoursDoseFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFailureImpl &&
            (identical(other.dayHoursDoseFailure, dayHoursDoseFailure) ||
                other.dayHoursDoseFailure == dayHoursDoseFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dayHoursDoseFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFailureImplCopyWith<_$DeleteFailureImpl> get copyWith =>
      __$$DeleteFailureImplCopyWithImpl<_$DeleteFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(DayHoursDoseFailures dayHoursDoseFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(DayHoursDoseFailures dayHoursDoseFailure)
        fakeFailure,
    required TResult Function() fakeSuccess,
  }) {
    return deleteFailure(dayHoursDoseFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DayHoursDoseFailures dayHoursDoseFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(DayHoursDoseFailures dayHoursDoseFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return deleteFailure?.call(dayHoursDoseFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DayHoursDoseFailures dayHoursDoseFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(DayHoursDoseFailures dayHoursDoseFailure)? fakeFailure,
    TResult Function()? fakeSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(dayHoursDoseFailure);
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

abstract class _DeleteFailure implements DayHoursDoseActorState {
  const factory _DeleteFailure(final DayHoursDoseFailures dayHoursDoseFailure) =
      _$DeleteFailureImpl;

  DayHoursDoseFailures get dayHoursDoseFailure;
  @JsonKey(ignore: true)
  _$$DeleteFailureImplCopyWith<_$DeleteFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteSuccessImplCopyWith<$Res> {
  factory _$$DeleteSuccessImplCopyWith(
          _$DeleteSuccessImpl value, $Res Function(_$DeleteSuccessImpl) then) =
      __$$DeleteSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteSuccessImplCopyWithImpl<$Res>
    extends _$DayHoursDoseActorStateCopyWithImpl<$Res, _$DeleteSuccessImpl>
    implements _$$DeleteSuccessImplCopyWith<$Res> {
  __$$DeleteSuccessImplCopyWithImpl(
      _$DeleteSuccessImpl _value, $Res Function(_$DeleteSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteSuccessImpl implements _DeleteSuccess {
  const _$DeleteSuccessImpl();

  @override
  String toString() {
    return 'DayHoursDoseActorState.deleteSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(DayHoursDoseFailures dayHoursDoseFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(DayHoursDoseFailures dayHoursDoseFailure)
        fakeFailure,
    required TResult Function() fakeSuccess,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DayHoursDoseFailures dayHoursDoseFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(DayHoursDoseFailures dayHoursDoseFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DayHoursDoseFailures dayHoursDoseFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(DayHoursDoseFailures dayHoursDoseFailure)? fakeFailure,
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

abstract class _DeleteSuccess implements DayHoursDoseActorState {
  const factory _DeleteSuccess() = _$DeleteSuccessImpl;
}

/// @nodoc
abstract class _$$FakeFailureImplCopyWith<$Res> {
  factory _$$FakeFailureImplCopyWith(
          _$FakeFailureImpl value, $Res Function(_$FakeFailureImpl) then) =
      __$$FakeFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DayHoursDoseFailures dayHoursDoseFailure});

  $DayHoursDoseFailuresCopyWith<$Res> get dayHoursDoseFailure;
}

/// @nodoc
class __$$FakeFailureImplCopyWithImpl<$Res>
    extends _$DayHoursDoseActorStateCopyWithImpl<$Res, _$FakeFailureImpl>
    implements _$$FakeFailureImplCopyWith<$Res> {
  __$$FakeFailureImplCopyWithImpl(
      _$FakeFailureImpl _value, $Res Function(_$FakeFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayHoursDoseFailure = null,
  }) {
    return _then(_$FakeFailureImpl(
      null == dayHoursDoseFailure
          ? _value.dayHoursDoseFailure
          : dayHoursDoseFailure // ignore: cast_nullable_to_non_nullable
              as DayHoursDoseFailures,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DayHoursDoseFailuresCopyWith<$Res> get dayHoursDoseFailure {
    return $DayHoursDoseFailuresCopyWith<$Res>(_value.dayHoursDoseFailure,
        (value) {
      return _then(_value.copyWith(dayHoursDoseFailure: value));
    });
  }
}

/// @nodoc

class _$FakeFailureImpl implements _FakeFailure {
  const _$FakeFailureImpl(this.dayHoursDoseFailure);

  @override
  final DayHoursDoseFailures dayHoursDoseFailure;

  @override
  String toString() {
    return 'DayHoursDoseActorState.fakeFailure(dayHoursDoseFailure: $dayHoursDoseFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FakeFailureImpl &&
            (identical(other.dayHoursDoseFailure, dayHoursDoseFailure) ||
                other.dayHoursDoseFailure == dayHoursDoseFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dayHoursDoseFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FakeFailureImplCopyWith<_$FakeFailureImpl> get copyWith =>
      __$$FakeFailureImplCopyWithImpl<_$FakeFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(DayHoursDoseFailures dayHoursDoseFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(DayHoursDoseFailures dayHoursDoseFailure)
        fakeFailure,
    required TResult Function() fakeSuccess,
  }) {
    return fakeFailure(dayHoursDoseFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DayHoursDoseFailures dayHoursDoseFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(DayHoursDoseFailures dayHoursDoseFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return fakeFailure?.call(dayHoursDoseFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DayHoursDoseFailures dayHoursDoseFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(DayHoursDoseFailures dayHoursDoseFailure)? fakeFailure,
    TResult Function()? fakeSuccess,
    required TResult orElse(),
  }) {
    if (fakeFailure != null) {
      return fakeFailure(dayHoursDoseFailure);
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

abstract class _FakeFailure implements DayHoursDoseActorState {
  const factory _FakeFailure(final DayHoursDoseFailures dayHoursDoseFailure) =
      _$FakeFailureImpl;

  DayHoursDoseFailures get dayHoursDoseFailure;
  @JsonKey(ignore: true)
  _$$FakeFailureImplCopyWith<_$FakeFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FakeSuccessImplCopyWith<$Res> {
  factory _$$FakeSuccessImplCopyWith(
          _$FakeSuccessImpl value, $Res Function(_$FakeSuccessImpl) then) =
      __$$FakeSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FakeSuccessImplCopyWithImpl<$Res>
    extends _$DayHoursDoseActorStateCopyWithImpl<$Res, _$FakeSuccessImpl>
    implements _$$FakeSuccessImplCopyWith<$Res> {
  __$$FakeSuccessImplCopyWithImpl(
      _$FakeSuccessImpl _value, $Res Function(_$FakeSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FakeSuccessImpl implements _FakeSuccess {
  const _$FakeSuccessImpl();

  @override
  String toString() {
    return 'DayHoursDoseActorState.fakeSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FakeSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(DayHoursDoseFailures dayHoursDoseFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(DayHoursDoseFailures dayHoursDoseFailure)
        fakeFailure,
    required TResult Function() fakeSuccess,
  }) {
    return fakeSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DayHoursDoseFailures dayHoursDoseFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(DayHoursDoseFailures dayHoursDoseFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return fakeSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DayHoursDoseFailures dayHoursDoseFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(DayHoursDoseFailures dayHoursDoseFailure)? fakeFailure,
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

abstract class _FakeSuccess implements DayHoursDoseActorState {
  const factory _FakeSuccess() = _$FakeSuccessImpl;
}
