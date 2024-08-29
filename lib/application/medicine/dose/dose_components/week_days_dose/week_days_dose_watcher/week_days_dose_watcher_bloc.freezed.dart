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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$WatchAllStartedImplCopyWith<$Res> {
  factory _$$WatchAllStartedImplCopyWith(_$WatchAllStartedImpl value,
          $Res Function(_$WatchAllStartedImpl) then) =
      __$$WatchAllStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchAllStartedImplCopyWithImpl<$Res>
    extends _$WeekDaysDoseWatcherEventCopyWithImpl<$Res, _$WatchAllStartedImpl>
    implements _$$WatchAllStartedImplCopyWith<$Res> {
  __$$WatchAllStartedImplCopyWithImpl(
      _$WatchAllStartedImpl _value, $Res Function(_$WatchAllStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WatchAllStartedImpl implements _WatchAllStarted {
  const _$WatchAllStartedImpl();

  @override
  String toString() {
    return 'WeekDaysDoseWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WatchAllStartedImpl);
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
  const factory _WatchAllStarted() = _$WatchAllStartedImpl;
}

/// @nodoc
abstract class _$$WatchFilteredStartedImplCopyWith<$Res> {
  factory _$$WatchFilteredStartedImplCopyWith(_$WatchFilteredStartedImpl value,
          $Res Function(_$WatchFilteredStartedImpl) then) =
      __$$WatchFilteredStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String keyword});
}

/// @nodoc
class __$$WatchFilteredStartedImplCopyWithImpl<$Res>
    extends _$WeekDaysDoseWatcherEventCopyWithImpl<$Res,
        _$WatchFilteredStartedImpl>
    implements _$$WatchFilteredStartedImplCopyWith<$Res> {
  __$$WatchFilteredStartedImplCopyWithImpl(_$WatchFilteredStartedImpl _value,
      $Res Function(_$WatchFilteredStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
  }) {
    return _then(_$WatchFilteredStartedImpl(
      null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WatchFilteredStartedImpl implements _WatchFilteredStarted {
  const _$WatchFilteredStartedImpl(this.keyword);

  @override
  final String keyword;

  @override
  String toString() {
    return 'WeekDaysDoseWatcherEvent.watchFilteredStarted(keyword: $keyword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchFilteredStartedImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchFilteredStartedImplCopyWith<_$WatchFilteredStartedImpl>
      get copyWith =>
          __$$WatchFilteredStartedImplCopyWithImpl<_$WatchFilteredStartedImpl>(
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
      _$WatchFilteredStartedImpl;

  String get keyword;
  @JsonKey(ignore: true)
  _$$WatchFilteredStartedImplCopyWith<_$WatchFilteredStartedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeekDaysReceivedImplCopyWith<$Res> {
  factory _$$WeekDaysReceivedImplCopyWith(_$WeekDaysReceivedImpl value,
          $Res Function(_$WeekDaysReceivedImpl) then) =
      __$$WeekDaysReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Either<WeekDaysDoseFailures, KtList<WeekDaysDose>> failureOrWeekDays});
}

/// @nodoc
class __$$WeekDaysReceivedImplCopyWithImpl<$Res>
    extends _$WeekDaysDoseWatcherEventCopyWithImpl<$Res, _$WeekDaysReceivedImpl>
    implements _$$WeekDaysReceivedImplCopyWith<$Res> {
  __$$WeekDaysReceivedImplCopyWithImpl(_$WeekDaysReceivedImpl _value,
      $Res Function(_$WeekDaysReceivedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrWeekDays = null,
  }) {
    return _then(_$WeekDaysReceivedImpl(
      null == failureOrWeekDays
          ? _value.failureOrWeekDays
          : failureOrWeekDays // ignore: cast_nullable_to_non_nullable
              as Either<WeekDaysDoseFailures, KtList<WeekDaysDose>>,
    ));
  }
}

/// @nodoc

class _$WeekDaysReceivedImpl implements _WeekDaysReceived {
  const _$WeekDaysReceivedImpl(this.failureOrWeekDays);

  @override
  final Either<WeekDaysDoseFailures, KtList<WeekDaysDose>> failureOrWeekDays;

  @override
  String toString() {
    return 'WeekDaysDoseWatcherEvent.weekDaysDoseReceived(failureOrWeekDays: $failureOrWeekDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekDaysReceivedImpl &&
            (identical(other.failureOrWeekDays, failureOrWeekDays) ||
                other.failureOrWeekDays == failureOrWeekDays));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrWeekDays);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekDaysReceivedImplCopyWith<_$WeekDaysReceivedImpl> get copyWith =>
      __$$WeekDaysReceivedImplCopyWithImpl<_$WeekDaysReceivedImpl>(
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
          failureOrWeekDays) = _$WeekDaysReceivedImpl;

  Either<WeekDaysDoseFailures, KtList<WeekDaysDose>> get failureOrWeekDays;
  @JsonKey(ignore: true)
  _$$WeekDaysReceivedImplCopyWith<_$WeekDaysReceivedImpl> get copyWith =>
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
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$WeekDaysDoseWatcherStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'WeekDaysDoseWatcherState.initial()';
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
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$WeekDaysDoseWatcherStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadInProgressImpl implements _LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString() {
    return 'WeekDaysDoseWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadInProgressImpl);
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
  const factory _LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<$Res> {
  factory _$$LoadSuccessImplCopyWith(
          _$LoadSuccessImpl value, $Res Function(_$LoadSuccessImpl) then) =
      __$$LoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({KtList<WeekDaysDose> weekDaysDose});
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<$Res>
    extends _$WeekDaysDoseWatcherStateCopyWithImpl<$Res, _$LoadSuccessImpl>
    implements _$$LoadSuccessImplCopyWith<$Res> {
  __$$LoadSuccessImplCopyWithImpl(
      _$LoadSuccessImpl _value, $Res Function(_$LoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekDaysDose = null,
  }) {
    return _then(_$LoadSuccessImpl(
      null == weekDaysDose
          ? _value.weekDaysDose
          : weekDaysDose // ignore: cast_nullable_to_non_nullable
              as KtList<WeekDaysDose>,
    ));
  }
}

/// @nodoc

class _$LoadSuccessImpl implements _LoadSuccess {
  const _$LoadSuccessImpl(this.weekDaysDose);

  @override
  final KtList<WeekDaysDose> weekDaysDose;

  @override
  String toString() {
    return 'WeekDaysDoseWatcherState.loadSuccess(weekDaysDose: $weekDaysDose)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessImpl &&
            (identical(other.weekDaysDose, weekDaysDose) ||
                other.weekDaysDose == weekDaysDose));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weekDaysDose);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      __$$LoadSuccessImplCopyWithImpl<_$LoadSuccessImpl>(this, _$identity);

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
      _$LoadSuccessImpl;

  KtList<WeekDaysDose> get weekDaysDose;
  @JsonKey(ignore: true)
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeekDaysDoseFailureImplCopyWith<$Res> {
  factory _$$WeekDaysDoseFailureImplCopyWith(_$WeekDaysDoseFailureImpl value,
          $Res Function(_$WeekDaysDoseFailureImpl) then) =
      __$$WeekDaysDoseFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WeekDaysDoseFailures weekDaysDoseFailure});

  $WeekDaysDoseFailuresCopyWith<$Res> get weekDaysDoseFailure;
}

/// @nodoc
class __$$WeekDaysDoseFailureImplCopyWithImpl<$Res>
    extends _$WeekDaysDoseWatcherStateCopyWithImpl<$Res,
        _$WeekDaysDoseFailureImpl>
    implements _$$WeekDaysDoseFailureImplCopyWith<$Res> {
  __$$WeekDaysDoseFailureImplCopyWithImpl(_$WeekDaysDoseFailureImpl _value,
      $Res Function(_$WeekDaysDoseFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekDaysDoseFailure = null,
  }) {
    return _then(_$WeekDaysDoseFailureImpl(
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

class _$WeekDaysDoseFailureImpl implements _WeekDaysDoseFailure {
  const _$WeekDaysDoseFailureImpl(this.weekDaysDoseFailure);

  @override
  final WeekDaysDoseFailures weekDaysDoseFailure;

  @override
  String toString() {
    return 'WeekDaysDoseWatcherState.loadFailure(weekDaysDoseFailure: $weekDaysDoseFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekDaysDoseFailureImpl &&
            (identical(other.weekDaysDoseFailure, weekDaysDoseFailure) ||
                other.weekDaysDoseFailure == weekDaysDoseFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weekDaysDoseFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekDaysDoseFailureImplCopyWith<_$WeekDaysDoseFailureImpl> get copyWith =>
      __$$WeekDaysDoseFailureImplCopyWithImpl<_$WeekDaysDoseFailureImpl>(
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
          final WeekDaysDoseFailures weekDaysDoseFailure) =
      _$WeekDaysDoseFailureImpl;

  WeekDaysDoseFailures get weekDaysDoseFailure;
  @JsonKey(ignore: true)
  _$$WeekDaysDoseFailureImplCopyWith<_$WeekDaysDoseFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
