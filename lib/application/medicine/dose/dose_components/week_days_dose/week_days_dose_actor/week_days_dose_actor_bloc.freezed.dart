// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'week_days_dose_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeekDaysDoseActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WeekDaysDose weekDaysDose) deleted,
    required TResult Function() faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WeekDaysDose weekDaysDose)? deleted,
    TResult? Function()? faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WeekDaysDose weekDaysDose)? deleted,
    TResult Function()? faker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteWeekDays value) deleted,
    required TResult Function(_FakeWeekDaysDose value) faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteWeekDays value)? deleted,
    TResult? Function(_FakeWeekDaysDose value)? faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteWeekDays value)? deleted,
    TResult Function(_FakeWeekDaysDose value)? faker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekDaysDoseActorEventCopyWith<$Res> {
  factory $WeekDaysDoseActorEventCopyWith(WeekDaysDoseActorEvent value,
          $Res Function(WeekDaysDoseActorEvent) then) =
      _$WeekDaysDoseActorEventCopyWithImpl<$Res, WeekDaysDoseActorEvent>;
}

/// @nodoc
class _$WeekDaysDoseActorEventCopyWithImpl<$Res,
        $Val extends WeekDaysDoseActorEvent>
    implements $WeekDaysDoseActorEventCopyWith<$Res> {
  _$WeekDaysDoseActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DeleteWeekDaysCopyWith<$Res> {
  factory _$$_DeleteWeekDaysCopyWith(
          _$_DeleteWeekDays value, $Res Function(_$_DeleteWeekDays) then) =
      __$$_DeleteWeekDaysCopyWithImpl<$Res>;
  @useResult
  $Res call({WeekDaysDose weekDaysDose});

  $WeekDaysDoseCopyWith<$Res> get weekDaysDose;
}

/// @nodoc
class __$$_DeleteWeekDaysCopyWithImpl<$Res>
    extends _$WeekDaysDoseActorEventCopyWithImpl<$Res, _$_DeleteWeekDays>
    implements _$$_DeleteWeekDaysCopyWith<$Res> {
  __$$_DeleteWeekDaysCopyWithImpl(
      _$_DeleteWeekDays _value, $Res Function(_$_DeleteWeekDays) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekDaysDose = null,
  }) {
    return _then(_$_DeleteWeekDays(
      null == weekDaysDose
          ? _value.weekDaysDose
          : weekDaysDose // ignore: cast_nullable_to_non_nullable
              as WeekDaysDose,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WeekDaysDoseCopyWith<$Res> get weekDaysDose {
    return $WeekDaysDoseCopyWith<$Res>(_value.weekDaysDose, (value) {
      return _then(_value.copyWith(weekDaysDose: value));
    });
  }
}

/// @nodoc

class _$_DeleteWeekDays implements _DeleteWeekDays {
  const _$_DeleteWeekDays(this.weekDaysDose);

  @override
  final WeekDaysDose weekDaysDose;

  @override
  String toString() {
    return 'WeekDaysDoseActorEvent.deleted(weekDaysDose: $weekDaysDose)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteWeekDays &&
            (identical(other.weekDaysDose, weekDaysDose) ||
                other.weekDaysDose == weekDaysDose));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weekDaysDose);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteWeekDaysCopyWith<_$_DeleteWeekDays> get copyWith =>
      __$$_DeleteWeekDaysCopyWithImpl<_$_DeleteWeekDays>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WeekDaysDose weekDaysDose) deleted,
    required TResult Function() faker,
  }) {
    return deleted(weekDaysDose);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WeekDaysDose weekDaysDose)? deleted,
    TResult? Function()? faker,
  }) {
    return deleted?.call(weekDaysDose);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WeekDaysDose weekDaysDose)? deleted,
    TResult Function()? faker,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(weekDaysDose);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteWeekDays value) deleted,
    required TResult Function(_FakeWeekDaysDose value) faker,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteWeekDays value)? deleted,
    TResult? Function(_FakeWeekDaysDose value)? faker,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteWeekDays value)? deleted,
    TResult Function(_FakeWeekDaysDose value)? faker,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _DeleteWeekDays implements WeekDaysDoseActorEvent {
  const factory _DeleteWeekDays(final WeekDaysDose weekDaysDose) =
      _$_DeleteWeekDays;

  WeekDaysDose get weekDaysDose;
  @JsonKey(ignore: true)
  _$$_DeleteWeekDaysCopyWith<_$_DeleteWeekDays> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FakeWeekDaysDoseCopyWith<$Res> {
  factory _$$_FakeWeekDaysDoseCopyWith(
          _$_FakeWeekDaysDose value, $Res Function(_$_FakeWeekDaysDose) then) =
      __$$_FakeWeekDaysDoseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FakeWeekDaysDoseCopyWithImpl<$Res>
    extends _$WeekDaysDoseActorEventCopyWithImpl<$Res, _$_FakeWeekDaysDose>
    implements _$$_FakeWeekDaysDoseCopyWith<$Res> {
  __$$_FakeWeekDaysDoseCopyWithImpl(
      _$_FakeWeekDaysDose _value, $Res Function(_$_FakeWeekDaysDose) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FakeWeekDaysDose implements _FakeWeekDaysDose {
  const _$_FakeWeekDaysDose();

  @override
  String toString() {
    return 'WeekDaysDoseActorEvent.faker()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FakeWeekDaysDose);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WeekDaysDose weekDaysDose) deleted,
    required TResult Function() faker,
  }) {
    return faker();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WeekDaysDose weekDaysDose)? deleted,
    TResult? Function()? faker,
  }) {
    return faker?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WeekDaysDose weekDaysDose)? deleted,
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
    required TResult Function(_DeleteWeekDays value) deleted,
    required TResult Function(_FakeWeekDaysDose value) faker,
  }) {
    return faker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteWeekDays value)? deleted,
    TResult? Function(_FakeWeekDaysDose value)? faker,
  }) {
    return faker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteWeekDays value)? deleted,
    TResult Function(_FakeWeekDaysDose value)? faker,
    required TResult orElse(),
  }) {
    if (faker != null) {
      return faker(this);
    }
    return orElse();
  }
}

abstract class _FakeWeekDaysDose implements WeekDaysDoseActorEvent {
  const factory _FakeWeekDaysDose() = _$_FakeWeekDaysDose;
}

/// @nodoc
mixin _$WeekDaysDoseActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)
        fakeFailure,
    required TResult Function() fakeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(WeekDaysDoseFailures weekDaysDoseFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(WeekDaysDoseFailures weekDaysDoseFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)? fakeFailure,
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
abstract class $WeekDaysDoseActorStateCopyWith<$Res> {
  factory $WeekDaysDoseActorStateCopyWith(WeekDaysDoseActorState value,
          $Res Function(WeekDaysDoseActorState) then) =
      _$WeekDaysDoseActorStateCopyWithImpl<$Res, WeekDaysDoseActorState>;
}

/// @nodoc
class _$WeekDaysDoseActorStateCopyWithImpl<$Res,
        $Val extends WeekDaysDoseActorState>
    implements $WeekDaysDoseActorStateCopyWith<$Res> {
  _$WeekDaysDoseActorStateCopyWithImpl(this._value, this._then);

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
    extends _$WeekDaysDoseActorStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'WeekDaysDoseActorState.initial()';
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
    required TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)
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
    TResult? Function(WeekDaysDoseFailures weekDaysDoseFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(WeekDaysDoseFailures weekDaysDoseFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)? fakeFailure,
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

abstract class _Initial implements WeekDaysDoseActorState {
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
    extends _$WeekDaysDoseActorStateCopyWithImpl<$Res, _$_ActionInProgress>
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
    return 'WeekDaysDoseActorState.actionInProgress()';
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
    required TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)
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
    TResult? Function(WeekDaysDoseFailures weekDaysDoseFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(WeekDaysDoseFailures weekDaysDoseFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)? fakeFailure,
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

abstract class _ActionInProgress implements WeekDaysDoseActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$$_DeleteFailureCopyWith<$Res> {
  factory _$$_DeleteFailureCopyWith(
          _$_DeleteFailure value, $Res Function(_$_DeleteFailure) then) =
      __$$_DeleteFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({WeekDaysDoseFailures weekDaysDoseFailure});

  $WeekDaysDoseFailuresCopyWith<$Res> get weekDaysDoseFailure;
}

/// @nodoc
class __$$_DeleteFailureCopyWithImpl<$Res>
    extends _$WeekDaysDoseActorStateCopyWithImpl<$Res, _$_DeleteFailure>
    implements _$$_DeleteFailureCopyWith<$Res> {
  __$$_DeleteFailureCopyWithImpl(
      _$_DeleteFailure _value, $Res Function(_$_DeleteFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekDaysDoseFailure = null,
  }) {
    return _then(_$_DeleteFailure(
      null == weekDaysDoseFailure
          ? _value.weekDaysDoseFailure
          : weekDaysDoseFailure // ignore: cast_nullable_to_non_nullable
              as WeekDaysDoseFailures,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WeekDaysDoseFailuresCopyWith<$Res> get weekDaysDoseFailure {
    return $WeekDaysDoseFailuresCopyWith<$Res>(_value.weekDaysDoseFailure,
        (value) {
      return _then(_value.copyWith(weekDaysDoseFailure: value));
    });
  }
}

/// @nodoc

class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.weekDaysDoseFailure);

  @override
  final WeekDaysDoseFailures weekDaysDoseFailure;

  @override
  String toString() {
    return 'WeekDaysDoseActorState.deleteFailure(weekDaysDoseFailure: $weekDaysDoseFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteFailure &&
            (identical(other.weekDaysDoseFailure, weekDaysDoseFailure) ||
                other.weekDaysDoseFailure == weekDaysDoseFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weekDaysDoseFailure);

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
    required TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)
        fakeFailure,
    required TResult Function() fakeSuccess,
  }) {
    return deleteFailure(weekDaysDoseFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(WeekDaysDoseFailures weekDaysDoseFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(WeekDaysDoseFailures weekDaysDoseFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return deleteFailure?.call(weekDaysDoseFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)? fakeFailure,
    TResult Function()? fakeSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(weekDaysDoseFailure);
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

abstract class _DeleteFailure implements WeekDaysDoseActorState {
  const factory _DeleteFailure(final WeekDaysDoseFailures weekDaysDoseFailure) =
      _$_DeleteFailure;

  WeekDaysDoseFailures get weekDaysDoseFailure;
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
    extends _$WeekDaysDoseActorStateCopyWithImpl<$Res, _$_DeleteSuccess>
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
    return 'WeekDaysDoseActorState.deleteSuccess()';
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
    required TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)
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
    TResult? Function(WeekDaysDoseFailures weekDaysDoseFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(WeekDaysDoseFailures weekDaysDoseFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)? fakeFailure,
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

abstract class _DeleteSuccess implements WeekDaysDoseActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}

/// @nodoc
abstract class _$$_FakeFailureCopyWith<$Res> {
  factory _$$_FakeFailureCopyWith(
          _$_FakeFailure value, $Res Function(_$_FakeFailure) then) =
      __$$_FakeFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({WeekDaysDoseFailures weekDaysDoseFailure});

  $WeekDaysDoseFailuresCopyWith<$Res> get weekDaysDoseFailure;
}

/// @nodoc
class __$$_FakeFailureCopyWithImpl<$Res>
    extends _$WeekDaysDoseActorStateCopyWithImpl<$Res, _$_FakeFailure>
    implements _$$_FakeFailureCopyWith<$Res> {
  __$$_FakeFailureCopyWithImpl(
      _$_FakeFailure _value, $Res Function(_$_FakeFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekDaysDoseFailure = null,
  }) {
    return _then(_$_FakeFailure(
      null == weekDaysDoseFailure
          ? _value.weekDaysDoseFailure
          : weekDaysDoseFailure // ignore: cast_nullable_to_non_nullable
              as WeekDaysDoseFailures,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WeekDaysDoseFailuresCopyWith<$Res> get weekDaysDoseFailure {
    return $WeekDaysDoseFailuresCopyWith<$Res>(_value.weekDaysDoseFailure,
        (value) {
      return _then(_value.copyWith(weekDaysDoseFailure: value));
    });
  }
}

/// @nodoc

class _$_FakeFailure implements _FakeFailure {
  const _$_FakeFailure(this.weekDaysDoseFailure);

  @override
  final WeekDaysDoseFailures weekDaysDoseFailure;

  @override
  String toString() {
    return 'WeekDaysDoseActorState.fakeFailure(weekDaysDoseFailure: $weekDaysDoseFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FakeFailure &&
            (identical(other.weekDaysDoseFailure, weekDaysDoseFailure) ||
                other.weekDaysDoseFailure == weekDaysDoseFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weekDaysDoseFailure);

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
    required TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)
        fakeFailure,
    required TResult Function() fakeSuccess,
  }) {
    return fakeFailure(weekDaysDoseFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(WeekDaysDoseFailures weekDaysDoseFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(WeekDaysDoseFailures weekDaysDoseFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return fakeFailure?.call(weekDaysDoseFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)? fakeFailure,
    TResult Function()? fakeSuccess,
    required TResult orElse(),
  }) {
    if (fakeFailure != null) {
      return fakeFailure(weekDaysDoseFailure);
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

abstract class _FakeFailure implements WeekDaysDoseActorState {
  const factory _FakeFailure(final WeekDaysDoseFailures weekDaysDoseFailure) =
      _$_FakeFailure;

  WeekDaysDoseFailures get weekDaysDoseFailure;
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
    extends _$WeekDaysDoseActorStateCopyWithImpl<$Res, _$_FakeSuccess>
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
    return 'WeekDaysDoseActorState.fakeSuccess()';
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
    required TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)
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
    TResult? Function(WeekDaysDoseFailures weekDaysDoseFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(WeekDaysDoseFailures weekDaysDoseFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return fakeSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)? fakeFailure,
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

abstract class _FakeSuccess implements WeekDaysDoseActorState {
  const factory _FakeSuccess() = _$_FakeSuccess;
}
