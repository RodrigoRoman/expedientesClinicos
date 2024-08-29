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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$DeleteWeekDaysImplCopyWith<$Res> {
  factory _$$DeleteWeekDaysImplCopyWith(_$DeleteWeekDaysImpl value,
          $Res Function(_$DeleteWeekDaysImpl) then) =
      __$$DeleteWeekDaysImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WeekDaysDose weekDaysDose});

  $WeekDaysDoseCopyWith<$Res> get weekDaysDose;
}

/// @nodoc
class __$$DeleteWeekDaysImplCopyWithImpl<$Res>
    extends _$WeekDaysDoseActorEventCopyWithImpl<$Res, _$DeleteWeekDaysImpl>
    implements _$$DeleteWeekDaysImplCopyWith<$Res> {
  __$$DeleteWeekDaysImplCopyWithImpl(
      _$DeleteWeekDaysImpl _value, $Res Function(_$DeleteWeekDaysImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekDaysDose = null,
  }) {
    return _then(_$DeleteWeekDaysImpl(
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

class _$DeleteWeekDaysImpl implements _DeleteWeekDays {
  const _$DeleteWeekDaysImpl(this.weekDaysDose);

  @override
  final WeekDaysDose weekDaysDose;

  @override
  String toString() {
    return 'WeekDaysDoseActorEvent.deleted(weekDaysDose: $weekDaysDose)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteWeekDaysImpl &&
            (identical(other.weekDaysDose, weekDaysDose) ||
                other.weekDaysDose == weekDaysDose));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weekDaysDose);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteWeekDaysImplCopyWith<_$DeleteWeekDaysImpl> get copyWith =>
      __$$DeleteWeekDaysImplCopyWithImpl<_$DeleteWeekDaysImpl>(
          this, _$identity);

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
      _$DeleteWeekDaysImpl;

  WeekDaysDose get weekDaysDose;
  @JsonKey(ignore: true)
  _$$DeleteWeekDaysImplCopyWith<_$DeleteWeekDaysImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FakeWeekDaysDoseImplCopyWith<$Res> {
  factory _$$FakeWeekDaysDoseImplCopyWith(_$FakeWeekDaysDoseImpl value,
          $Res Function(_$FakeWeekDaysDoseImpl) then) =
      __$$FakeWeekDaysDoseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FakeWeekDaysDoseImplCopyWithImpl<$Res>
    extends _$WeekDaysDoseActorEventCopyWithImpl<$Res, _$FakeWeekDaysDoseImpl>
    implements _$$FakeWeekDaysDoseImplCopyWith<$Res> {
  __$$FakeWeekDaysDoseImplCopyWithImpl(_$FakeWeekDaysDoseImpl _value,
      $Res Function(_$FakeWeekDaysDoseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FakeWeekDaysDoseImpl implements _FakeWeekDaysDose {
  const _$FakeWeekDaysDoseImpl();

  @override
  String toString() {
    return 'WeekDaysDoseActorEvent.faker()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FakeWeekDaysDoseImpl);
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
  const factory _FakeWeekDaysDose() = _$FakeWeekDaysDoseImpl;
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
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$WeekDaysDoseActorStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'WeekDaysDoseActorState.initial()';
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
    extends _$WeekDaysDoseActorStateCopyWithImpl<$Res, _$ActionInProgressImpl>
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
    return 'WeekDaysDoseActorState.actionInProgress()';
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
  const factory _ActionInProgress() = _$ActionInProgressImpl;
}

/// @nodoc
abstract class _$$DeleteFailureImplCopyWith<$Res> {
  factory _$$DeleteFailureImplCopyWith(
          _$DeleteFailureImpl value, $Res Function(_$DeleteFailureImpl) then) =
      __$$DeleteFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WeekDaysDoseFailures weekDaysDoseFailure});

  $WeekDaysDoseFailuresCopyWith<$Res> get weekDaysDoseFailure;
}

/// @nodoc
class __$$DeleteFailureImplCopyWithImpl<$Res>
    extends _$WeekDaysDoseActorStateCopyWithImpl<$Res, _$DeleteFailureImpl>
    implements _$$DeleteFailureImplCopyWith<$Res> {
  __$$DeleteFailureImplCopyWithImpl(
      _$DeleteFailureImpl _value, $Res Function(_$DeleteFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekDaysDoseFailure = null,
  }) {
    return _then(_$DeleteFailureImpl(
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

class _$DeleteFailureImpl implements _DeleteFailure {
  const _$DeleteFailureImpl(this.weekDaysDoseFailure);

  @override
  final WeekDaysDoseFailures weekDaysDoseFailure;

  @override
  String toString() {
    return 'WeekDaysDoseActorState.deleteFailure(weekDaysDoseFailure: $weekDaysDoseFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFailureImpl &&
            (identical(other.weekDaysDoseFailure, weekDaysDoseFailure) ||
                other.weekDaysDoseFailure == weekDaysDoseFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weekDaysDoseFailure);

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
      _$DeleteFailureImpl;

  WeekDaysDoseFailures get weekDaysDoseFailure;
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
    extends _$WeekDaysDoseActorStateCopyWithImpl<$Res, _$DeleteSuccessImpl>
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
    return 'WeekDaysDoseActorState.deleteSuccess()';
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
  const factory _DeleteSuccess() = _$DeleteSuccessImpl;
}

/// @nodoc
abstract class _$$FakeFailureImplCopyWith<$Res> {
  factory _$$FakeFailureImplCopyWith(
          _$FakeFailureImpl value, $Res Function(_$FakeFailureImpl) then) =
      __$$FakeFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WeekDaysDoseFailures weekDaysDoseFailure});

  $WeekDaysDoseFailuresCopyWith<$Res> get weekDaysDoseFailure;
}

/// @nodoc
class __$$FakeFailureImplCopyWithImpl<$Res>
    extends _$WeekDaysDoseActorStateCopyWithImpl<$Res, _$FakeFailureImpl>
    implements _$$FakeFailureImplCopyWith<$Res> {
  __$$FakeFailureImplCopyWithImpl(
      _$FakeFailureImpl _value, $Res Function(_$FakeFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekDaysDoseFailure = null,
  }) {
    return _then(_$FakeFailureImpl(
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

class _$FakeFailureImpl implements _FakeFailure {
  const _$FakeFailureImpl(this.weekDaysDoseFailure);

  @override
  final WeekDaysDoseFailures weekDaysDoseFailure;

  @override
  String toString() {
    return 'WeekDaysDoseActorState.fakeFailure(weekDaysDoseFailure: $weekDaysDoseFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FakeFailureImpl &&
            (identical(other.weekDaysDoseFailure, weekDaysDoseFailure) ||
                other.weekDaysDoseFailure == weekDaysDoseFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weekDaysDoseFailure);

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
      _$FakeFailureImpl;

  WeekDaysDoseFailures get weekDaysDoseFailure;
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
    extends _$WeekDaysDoseActorStateCopyWithImpl<$Res, _$FakeSuccessImpl>
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
    return 'WeekDaysDoseActorState.fakeSuccess()';
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
  const factory _FakeSuccess() = _$FakeSuccessImpl;
}
