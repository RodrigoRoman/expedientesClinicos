// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'week_days_dose_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeekDaysDoseWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(String keyword) watchFilteredStarted,
    required TResult Function(
            Either<WeekDaysDoseFailures, KtList<WeekDaysDose>>
                failureOrWeekDays)
        weekDaysDoseReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(String keyword)? watchFilteredStarted,
    TResult? Function(
            Either<WeekDaysDoseFailures, KtList<WeekDaysDose>>
                failureOrWeekDays)?
        weekDaysDoseReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String keyword)? watchFilteredStarted,
    TResult Function(
            Either<WeekDaysDoseFailures, KtList<WeekDaysDose>>
                failureOrWeekDays)?
        weekDaysDoseReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchFilteredStarted value) watchFilteredStarted,
    required TResult Function(_WeekDaysReceived value) weekDaysDoseReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult? Function(_WeekDaysReceived value)? weekDaysDoseReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult Function(_WeekDaysReceived value)? weekDaysDoseReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekDaysDoseWatcherEventCopyWith<$Res> {
  factory $WeekDaysDoseWatcherEventCopyWith(WeekDaysDoseWatcherEvent value,
          $Res Function(WeekDaysDoseWatcherEvent) then) =
      _$WeekDaysDoseWatcherEventCopyWithImpl<$Res, WeekDaysDoseWatcherEvent>;
}

/// @nodoc
class _$WeekDaysDoseWatcherEventCopyWithImpl<$Res,
        $Val extends WeekDaysDoseWatcherEvent>
    implements $WeekDaysDoseWatcherEventCopyWith<$Res> {
  _$WeekDaysDoseWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WatchAllStartedCopyWith<$Res> {
  factory _$$_WatchAllStartedCopyWith(
          _$_WatchAllStarted value, $Res Function(_$_WatchAllStarted) then) =
      __$$_WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchAllStartedCopyWithImpl<$Res>
    extends _$WeekDaysDoseWatcherEventCopyWithImpl<$Res, _$_WatchAllStarted>
    implements _$$_WatchAllStartedCopyWith<$Res> {
  __$$_WatchAllStartedCopyWithImpl(
      _$_WatchAllStarted _value, $Res Function(_$_WatchAllStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'WeekDaysDoseWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(String keyword) watchFilteredStarted,
    required TResult Function(
            Either<WeekDaysDoseFailures, KtList<WeekDaysDose>>
                failureOrWeekDays)
        weekDaysDoseReceived,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(String keyword)? watchFilteredStarted,
    TResult? Function(
            Either<WeekDaysDoseFailures, KtList<WeekDaysDose>>
                failureOrWeekDays)?
        weekDaysDoseReceived,
  }) {
    return watchAllStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String keyword)? watchFilteredStarted,
    TResult Function(
            Either<WeekDaysDoseFailures, KtList<WeekDaysDose>>
                failureOrWeekDays)?
        weekDaysDoseReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchFilteredStarted value) watchFilteredStarted,
    required TResult Function(_WeekDaysReceived value) weekDaysDoseReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult? Function(_WeekDaysReceived value)? weekDaysDoseReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult Function(_WeekDaysReceived value)? weekDaysDoseReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements WeekDaysDoseWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$$_WatchFilteredStartedCopyWith<$Res> {
  factory _$$_WatchFilteredStartedCopyWith(_$_WatchFilteredStarted value,
          $Res Function(_$_WatchFilteredStarted) then) =
      __$$_WatchFilteredStartedCopyWithImpl<$Res>;
  @useResult
  $Res call({String keyword});
}

/// @nodoc
class __$$_WatchFilteredStartedCopyWithImpl<$Res>
    extends _$WeekDaysDoseWatcherEventCopyWithImpl<$Res,
        _$_WatchFilteredStarted>
    implements _$$_WatchFilteredStartedCopyWith<$Res> {
  __$$_WatchFilteredStartedCopyWithImpl(_$_WatchFilteredStarted _value,
      $Res Function(_$_WatchFilteredStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
  }) {
    return _then(_$_WatchFilteredStarted(
      null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WatchFilteredStarted implements _WatchFilteredStarted {
  const _$_WatchFilteredStarted(this.keyword);

  @override
  final String keyword;

  @override
  String toString() {
    return 'WeekDaysDoseWatcherEvent.watchFilteredStarted(keyword: $keyword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchFilteredStarted &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WatchFilteredStartedCopyWith<_$_WatchFilteredStarted> get copyWith =>
      __$$_WatchFilteredStartedCopyWithImpl<_$_WatchFilteredStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(String keyword) watchFilteredStarted,
    required TResult Function(
            Either<WeekDaysDoseFailures, KtList<WeekDaysDose>>
                failureOrWeekDays)
        weekDaysDoseReceived,
  }) {
    return watchFilteredStarted(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(String keyword)? watchFilteredStarted,
    TResult? Function(
            Either<WeekDaysDoseFailures, KtList<WeekDaysDose>>
                failureOrWeekDays)?
        weekDaysDoseReceived,
  }) {
    return watchFilteredStarted?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String keyword)? watchFilteredStarted,
    TResult Function(
            Either<WeekDaysDoseFailures, KtList<WeekDaysDose>>
                failureOrWeekDays)?
        weekDaysDoseReceived,
    required TResult orElse(),
  }) {
    if (watchFilteredStarted != null) {
      return watchFilteredStarted(keyword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchFilteredStarted value) watchFilteredStarted,
    required TResult Function(_WeekDaysReceived value) weekDaysDoseReceived,
  }) {
    return watchFilteredStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult? Function(_WeekDaysReceived value)? weekDaysDoseReceived,
  }) {
    return watchFilteredStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult Function(_WeekDaysReceived value)? weekDaysDoseReceived,
    required TResult orElse(),
  }) {
    if (watchFilteredStarted != null) {
      return watchFilteredStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchFilteredStarted implements WeekDaysDoseWatcherEvent {
  const factory _WatchFilteredStarted(final String keyword) =
      _$_WatchFilteredStarted;

  String get keyword;
  @JsonKey(ignore: true)
  _$$_WatchFilteredStartedCopyWith<_$_WatchFilteredStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WeekDaysReceivedCopyWith<$Res> {
  factory _$$_WeekDaysReceivedCopyWith(
          _$_WeekDaysReceived value, $Res Function(_$_WeekDaysReceived) then) =
      __$$_WeekDaysReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Either<WeekDaysDoseFailures, KtList<WeekDaysDose>> failureOrWeekDays});
}

/// @nodoc
class __$$_WeekDaysReceivedCopyWithImpl<$Res>
    extends _$WeekDaysDoseWatcherEventCopyWithImpl<$Res, _$_WeekDaysReceived>
    implements _$$_WeekDaysReceivedCopyWith<$Res> {
  __$$_WeekDaysReceivedCopyWithImpl(
      _$_WeekDaysReceived _value, $Res Function(_$_WeekDaysReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrWeekDays = null,
  }) {
    return _then(_$_WeekDaysReceived(
      null == failureOrWeekDays
          ? _value.failureOrWeekDays
          : failureOrWeekDays // ignore: cast_nullable_to_non_nullable
              as Either<WeekDaysDoseFailures, KtList<WeekDaysDose>>,
    ));
  }
}

/// @nodoc

class _$_WeekDaysReceived implements _WeekDaysReceived {
  const _$_WeekDaysReceived(this.failureOrWeekDays);

  @override
  final Either<WeekDaysDoseFailures, KtList<WeekDaysDose>> failureOrWeekDays;

  @override
  String toString() {
    return 'WeekDaysDoseWatcherEvent.weekDaysDoseReceived(failureOrWeekDays: $failureOrWeekDays)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeekDaysReceived &&
            (identical(other.failureOrWeekDays, failureOrWeekDays) ||
                other.failureOrWeekDays == failureOrWeekDays));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrWeekDays);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeekDaysReceivedCopyWith<_$_WeekDaysReceived> get copyWith =>
      __$$_WeekDaysReceivedCopyWithImpl<_$_WeekDaysReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(String keyword) watchFilteredStarted,
    required TResult Function(
            Either<WeekDaysDoseFailures, KtList<WeekDaysDose>>
                failureOrWeekDays)
        weekDaysDoseReceived,
  }) {
    return weekDaysDoseReceived(failureOrWeekDays);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(String keyword)? watchFilteredStarted,
    TResult? Function(
            Either<WeekDaysDoseFailures, KtList<WeekDaysDose>>
                failureOrWeekDays)?
        weekDaysDoseReceived,
  }) {
    return weekDaysDoseReceived?.call(failureOrWeekDays);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String keyword)? watchFilteredStarted,
    TResult Function(
            Either<WeekDaysDoseFailures, KtList<WeekDaysDose>>
                failureOrWeekDays)?
        weekDaysDoseReceived,
    required TResult orElse(),
  }) {
    if (weekDaysDoseReceived != null) {
      return weekDaysDoseReceived(failureOrWeekDays);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchFilteredStarted value) watchFilteredStarted,
    required TResult Function(_WeekDaysReceived value) weekDaysDoseReceived,
  }) {
    return weekDaysDoseReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult? Function(_WeekDaysReceived value)? weekDaysDoseReceived,
  }) {
    return weekDaysDoseReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult Function(_WeekDaysReceived value)? weekDaysDoseReceived,
    required TResult orElse(),
  }) {
    if (weekDaysDoseReceived != null) {
      return weekDaysDoseReceived(this);
    }
    return orElse();
  }
}

abstract class _WeekDaysReceived implements WeekDaysDoseWatcherEvent {
  const factory _WeekDaysReceived(
      final Either<WeekDaysDoseFailures, KtList<WeekDaysDose>>
          failureOrWeekDays) = _$_WeekDaysReceived;

  Either<WeekDaysDoseFailures, KtList<WeekDaysDose>> get failureOrWeekDays;
  @JsonKey(ignore: true)
  _$$_WeekDaysReceivedCopyWith<_$_WeekDaysReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeekDaysDoseWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<WeekDaysDose> weekDaysDose) loadSuccess,
    required TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<WeekDaysDose> weekDaysDose)? loadSuccess,
    TResult? Function(WeekDaysDoseFailures weekDaysDoseFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<WeekDaysDose> weekDaysDose)? loadSuccess,
    TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_WeekDaysDoseFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_WeekDaysDoseFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_WeekDaysDoseFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekDaysDoseWatcherStateCopyWith<$Res> {
  factory $WeekDaysDoseWatcherStateCopyWith(WeekDaysDoseWatcherState value,
          $Res Function(WeekDaysDoseWatcherState) then) =
      _$WeekDaysDoseWatcherStateCopyWithImpl<$Res, WeekDaysDoseWatcherState>;
}

/// @nodoc
class _$WeekDaysDoseWatcherStateCopyWithImpl<$Res,
        $Val extends WeekDaysDoseWatcherState>
    implements $WeekDaysDoseWatcherStateCopyWith<$Res> {
  _$WeekDaysDoseWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$WeekDaysDoseWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'WeekDaysDoseWatcherState.initial()';
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
    required TResult Function() loadInProgress,
    required TResult Function(KtList<WeekDaysDose> weekDaysDose) loadSuccess,
    required TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)
        loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<WeekDaysDose> weekDaysDose)? loadSuccess,
    TResult? Function(WeekDaysDoseFailures weekDaysDoseFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<WeekDaysDose> weekDaysDose)? loadSuccess,
    TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)? loadFailure,
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
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_WeekDaysDoseFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_WeekDaysDoseFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_WeekDaysDoseFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WeekDaysDoseWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$WeekDaysDoseWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'WeekDaysDoseWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<WeekDaysDose> weekDaysDose) loadSuccess,
    required TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)
        loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<WeekDaysDose> weekDaysDose)? loadSuccess,
    TResult? Function(WeekDaysDoseFailures weekDaysDoseFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<WeekDaysDose> weekDaysDose)? loadSuccess,
    TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_WeekDaysDoseFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_WeekDaysDoseFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_WeekDaysDoseFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements WeekDaysDoseWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({KtList<WeekDaysDose> weekDaysDose});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$WeekDaysDoseWatcherStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekDaysDose = null,
  }) {
    return _then(_$_LoadSuccess(
      null == weekDaysDose
          ? _value.weekDaysDose
          : weekDaysDose // ignore: cast_nullable_to_non_nullable
              as KtList<WeekDaysDose>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.weekDaysDose);

  @override
  final KtList<WeekDaysDose> weekDaysDose;

  @override
  String toString() {
    return 'WeekDaysDoseWatcherState.loadSuccess(weekDaysDose: $weekDaysDose)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            (identical(other.weekDaysDose, weekDaysDose) ||
                other.weekDaysDose == weekDaysDose));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weekDaysDose);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<WeekDaysDose> weekDaysDose) loadSuccess,
    required TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)
        loadFailure,
  }) {
    return loadSuccess(weekDaysDose);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<WeekDaysDose> weekDaysDose)? loadSuccess,
    TResult? Function(WeekDaysDoseFailures weekDaysDoseFailure)? loadFailure,
  }) {
    return loadSuccess?.call(weekDaysDose);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<WeekDaysDose> weekDaysDose)? loadSuccess,
    TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(weekDaysDose);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_WeekDaysDoseFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_WeekDaysDoseFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_WeekDaysDoseFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements WeekDaysDoseWatcherState {
  const factory _LoadSuccess(final KtList<WeekDaysDose> weekDaysDose) =
      _$_LoadSuccess;

  KtList<WeekDaysDose> get weekDaysDose;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WeekDaysDoseFailureCopyWith<$Res> {
  factory _$$_WeekDaysDoseFailureCopyWith(_$_WeekDaysDoseFailure value,
          $Res Function(_$_WeekDaysDoseFailure) then) =
      __$$_WeekDaysDoseFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({WeekDaysDoseFailures weekDaysDoseFailure});

  $WeekDaysDoseFailuresCopyWith<$Res> get weekDaysDoseFailure;
}

/// @nodoc
class __$$_WeekDaysDoseFailureCopyWithImpl<$Res>
    extends _$WeekDaysDoseWatcherStateCopyWithImpl<$Res, _$_WeekDaysDoseFailure>
    implements _$$_WeekDaysDoseFailureCopyWith<$Res> {
  __$$_WeekDaysDoseFailureCopyWithImpl(_$_WeekDaysDoseFailure _value,
      $Res Function(_$_WeekDaysDoseFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekDaysDoseFailure = null,
  }) {
    return _then(_$_WeekDaysDoseFailure(
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

class _$_WeekDaysDoseFailure implements _WeekDaysDoseFailure {
  const _$_WeekDaysDoseFailure(this.weekDaysDoseFailure);

  @override
  final WeekDaysDoseFailures weekDaysDoseFailure;

  @override
  String toString() {
    return 'WeekDaysDoseWatcherState.loadFailure(weekDaysDoseFailure: $weekDaysDoseFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeekDaysDoseFailure &&
            (identical(other.weekDaysDoseFailure, weekDaysDoseFailure) ||
                other.weekDaysDoseFailure == weekDaysDoseFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weekDaysDoseFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeekDaysDoseFailureCopyWith<_$_WeekDaysDoseFailure> get copyWith =>
      __$$_WeekDaysDoseFailureCopyWithImpl<_$_WeekDaysDoseFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<WeekDaysDose> weekDaysDose) loadSuccess,
    required TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)
        loadFailure,
  }) {
    return loadFailure(weekDaysDoseFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<WeekDaysDose> weekDaysDose)? loadSuccess,
    TResult? Function(WeekDaysDoseFailures weekDaysDoseFailure)? loadFailure,
  }) {
    return loadFailure?.call(weekDaysDoseFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<WeekDaysDose> weekDaysDose)? loadSuccess,
    TResult Function(WeekDaysDoseFailures weekDaysDoseFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(weekDaysDoseFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_WeekDaysDoseFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_WeekDaysDoseFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_WeekDaysDoseFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _WeekDaysDoseFailure implements WeekDaysDoseWatcherState {
  const factory _WeekDaysDoseFailure(
      final WeekDaysDoseFailures weekDaysDoseFailure) = _$_WeekDaysDoseFailure;

  WeekDaysDoseFailures get weekDaysDoseFailure;
  @JsonKey(ignore: true)
  _$$_WeekDaysDoseFailureCopyWith<_$_WeekDaysDoseFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
