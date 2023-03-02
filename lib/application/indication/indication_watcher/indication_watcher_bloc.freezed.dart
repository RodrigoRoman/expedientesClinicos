// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'indication_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IndicationWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(String keyword) watchFilteredStarted,
    required TResult Function(
            Either<IndicationFailure, KtList<Indication>> failureOrUnit)
        indicationReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(String keyword)? watchFilteredStarted,
    TResult? Function(
            Either<IndicationFailure, KtList<Indication>> failureOrUnit)?
        indicationReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String keyword)? watchFilteredStarted,
    TResult Function(
            Either<IndicationFailure, KtList<Indication>> failureOrUnit)?
        indicationReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchFilteredStarted value) watchFilteredStarted,
    required TResult Function(_IndicationReceived value) indicationReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult? Function(_IndicationReceived value)? indicationReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult Function(_IndicationReceived value)? indicationReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndicationWatcherEventCopyWith<$Res> {
  factory $IndicationWatcherEventCopyWith(IndicationWatcherEvent value,
          $Res Function(IndicationWatcherEvent) then) =
      _$IndicationWatcherEventCopyWithImpl<$Res, IndicationWatcherEvent>;
}

/// @nodoc
class _$IndicationWatcherEventCopyWithImpl<$Res,
        $Val extends IndicationWatcherEvent>
    implements $IndicationWatcherEventCopyWith<$Res> {
  _$IndicationWatcherEventCopyWithImpl(this._value, this._then);

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
    extends _$IndicationWatcherEventCopyWithImpl<$Res, _$_WatchAllStarted>
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
    return 'IndicationWatcherEvent.watchAllStarted()';
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
            Either<IndicationFailure, KtList<Indication>> failureOrUnit)
        indicationReceived,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(String keyword)? watchFilteredStarted,
    TResult? Function(
            Either<IndicationFailure, KtList<Indication>> failureOrUnit)?
        indicationReceived,
  }) {
    return watchAllStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String keyword)? watchFilteredStarted,
    TResult Function(
            Either<IndicationFailure, KtList<Indication>> failureOrUnit)?
        indicationReceived,
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
    required TResult Function(_IndicationReceived value) indicationReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult? Function(_IndicationReceived value)? indicationReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult Function(_IndicationReceived value)? indicationReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements IndicationWatcherEvent {
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
    extends _$IndicationWatcherEventCopyWithImpl<$Res, _$_WatchFilteredStarted>
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
    return 'IndicationWatcherEvent.watchFilteredStarted(keyword: $keyword)';
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
            Either<IndicationFailure, KtList<Indication>> failureOrUnit)
        indicationReceived,
  }) {
    return watchFilteredStarted(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(String keyword)? watchFilteredStarted,
    TResult? Function(
            Either<IndicationFailure, KtList<Indication>> failureOrUnit)?
        indicationReceived,
  }) {
    return watchFilteredStarted?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String keyword)? watchFilteredStarted,
    TResult Function(
            Either<IndicationFailure, KtList<Indication>> failureOrUnit)?
        indicationReceived,
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
    required TResult Function(_IndicationReceived value) indicationReceived,
  }) {
    return watchFilteredStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult? Function(_IndicationReceived value)? indicationReceived,
  }) {
    return watchFilteredStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult Function(_IndicationReceived value)? indicationReceived,
    required TResult orElse(),
  }) {
    if (watchFilteredStarted != null) {
      return watchFilteredStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchFilteredStarted implements IndicationWatcherEvent {
  const factory _WatchFilteredStarted(final String keyword) =
      _$_WatchFilteredStarted;

  String get keyword;
  @JsonKey(ignore: true)
  _$$_WatchFilteredStartedCopyWith<_$_WatchFilteredStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IndicationReceivedCopyWith<$Res> {
  factory _$$_IndicationReceivedCopyWith(_$_IndicationReceived value,
          $Res Function(_$_IndicationReceived) then) =
      __$$_IndicationReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<IndicationFailure, KtList<Indication>> failureOrUnit});
}

/// @nodoc
class __$$_IndicationReceivedCopyWithImpl<$Res>
    extends _$IndicationWatcherEventCopyWithImpl<$Res, _$_IndicationReceived>
    implements _$$_IndicationReceivedCopyWith<$Res> {
  __$$_IndicationReceivedCopyWithImpl(
      _$_IndicationReceived _value, $Res Function(_$_IndicationReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrUnit = null,
  }) {
    return _then(_$_IndicationReceived(
      null == failureOrUnit
          ? _value.failureOrUnit
          : failureOrUnit // ignore: cast_nullable_to_non_nullable
              as Either<IndicationFailure, KtList<Indication>>,
    ));
  }
}

/// @nodoc

class _$_IndicationReceived implements _IndicationReceived {
  const _$_IndicationReceived(this.failureOrUnit);

  @override
  final Either<IndicationFailure, KtList<Indication>> failureOrUnit;

  @override
  String toString() {
    return 'IndicationWatcherEvent.indicationReceived(failureOrUnit: $failureOrUnit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IndicationReceived &&
            (identical(other.failureOrUnit, failureOrUnit) ||
                other.failureOrUnit == failureOrUnit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrUnit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IndicationReceivedCopyWith<_$_IndicationReceived> get copyWith =>
      __$$_IndicationReceivedCopyWithImpl<_$_IndicationReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(String keyword) watchFilteredStarted,
    required TResult Function(
            Either<IndicationFailure, KtList<Indication>> failureOrUnit)
        indicationReceived,
  }) {
    return indicationReceived(failureOrUnit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(String keyword)? watchFilteredStarted,
    TResult? Function(
            Either<IndicationFailure, KtList<Indication>> failureOrUnit)?
        indicationReceived,
  }) {
    return indicationReceived?.call(failureOrUnit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String keyword)? watchFilteredStarted,
    TResult Function(
            Either<IndicationFailure, KtList<Indication>> failureOrUnit)?
        indicationReceived,
    required TResult orElse(),
  }) {
    if (indicationReceived != null) {
      return indicationReceived(failureOrUnit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchFilteredStarted value) watchFilteredStarted,
    required TResult Function(_IndicationReceived value) indicationReceived,
  }) {
    return indicationReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult? Function(_IndicationReceived value)? indicationReceived,
  }) {
    return indicationReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult Function(_IndicationReceived value)? indicationReceived,
    required TResult orElse(),
  }) {
    if (indicationReceived != null) {
      return indicationReceived(this);
    }
    return orElse();
  }
}

abstract class _IndicationReceived implements IndicationWatcherEvent {
  const factory _IndicationReceived(
          final Either<IndicationFailure, KtList<Indication>> failureOrUnit) =
      _$_IndicationReceived;

  Either<IndicationFailure, KtList<Indication>> get failureOrUnit;
  @JsonKey(ignore: true)
  _$$_IndicationReceivedCopyWith<_$_IndicationReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IndicationWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Indication> indication) loadSuccess,
    required TResult Function(IndicationFailure indicationFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<Indication> indication)? loadSuccess,
    TResult? Function(IndicationFailure indicationFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Indication> indication)? loadSuccess,
    TResult Function(IndicationFailure indicationFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndicationWatcherStateCopyWith<$Res> {
  factory $IndicationWatcherStateCopyWith(IndicationWatcherState value,
          $Res Function(IndicationWatcherState) then) =
      _$IndicationWatcherStateCopyWithImpl<$Res, IndicationWatcherState>;
}

/// @nodoc
class _$IndicationWatcherStateCopyWithImpl<$Res,
        $Val extends IndicationWatcherState>
    implements $IndicationWatcherStateCopyWith<$Res> {
  _$IndicationWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$IndicationWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'IndicationWatcherState.initial()';
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
    required TResult Function(KtList<Indication> indication) loadSuccess,
    required TResult Function(IndicationFailure indicationFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<Indication> indication)? loadSuccess,
    TResult? Function(IndicationFailure indicationFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Indication> indication)? loadSuccess,
    TResult Function(IndicationFailure indicationFailure)? loadFailure,
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
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements IndicationWatcherState {
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
    extends _$IndicationWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
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
    return 'IndicationWatcherState.loadInProgress()';
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
    required TResult Function(KtList<Indication> indication) loadSuccess,
    required TResult Function(IndicationFailure indicationFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<Indication> indication)? loadSuccess,
    TResult? Function(IndicationFailure indicationFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Indication> indication)? loadSuccess,
    TResult Function(IndicationFailure indicationFailure)? loadFailure,
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
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements IndicationWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({KtList<Indication> indication});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$IndicationWatcherStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indication = null,
  }) {
    return _then(_$_LoadSuccess(
      null == indication
          ? _value.indication
          : indication // ignore: cast_nullable_to_non_nullable
              as KtList<Indication>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.indication);

  @override
  final KtList<Indication> indication;

  @override
  String toString() {
    return 'IndicationWatcherState.loadSuccess(indication: $indication)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            (identical(other.indication, indication) ||
                other.indication == indication));
  }

  @override
  int get hashCode => Object.hash(runtimeType, indication);

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
    required TResult Function(KtList<Indication> indication) loadSuccess,
    required TResult Function(IndicationFailure indicationFailure) loadFailure,
  }) {
    return loadSuccess(indication);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<Indication> indication)? loadSuccess,
    TResult? Function(IndicationFailure indicationFailure)? loadFailure,
  }) {
    return loadSuccess?.call(indication);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Indication> indication)? loadSuccess,
    TResult Function(IndicationFailure indicationFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(indication);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements IndicationWatcherState {
  const factory _LoadSuccess(final KtList<Indication> indication) =
      _$_LoadSuccess;

  KtList<Indication> get indication;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({IndicationFailure indicationFailure});

  $IndicationFailureCopyWith<$Res> get indicationFailure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$IndicationWatcherStateCopyWithImpl<$Res, _$_LoadFailure>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indicationFailure = null,
  }) {
    return _then(_$_LoadFailure(
      null == indicationFailure
          ? _value.indicationFailure
          : indicationFailure // ignore: cast_nullable_to_non_nullable
              as IndicationFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $IndicationFailureCopyWith<$Res> get indicationFailure {
    return $IndicationFailureCopyWith<$Res>(_value.indicationFailure, (value) {
      return _then(_value.copyWith(indicationFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.indicationFailure);

  @override
  final IndicationFailure indicationFailure;

  @override
  String toString() {
    return 'IndicationWatcherState.loadFailure(indicationFailure: $indicationFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            (identical(other.indicationFailure, indicationFailure) ||
                other.indicationFailure == indicationFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, indicationFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Indication> indication) loadSuccess,
    required TResult Function(IndicationFailure indicationFailure) loadFailure,
  }) {
    return loadFailure(indicationFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<Indication> indication)? loadSuccess,
    TResult? Function(IndicationFailure indicationFailure)? loadFailure,
  }) {
    return loadFailure?.call(indicationFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Indication> indication)? loadSuccess,
    TResult Function(IndicationFailure indicationFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(indicationFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements IndicationWatcherState {
  const factory _LoadFailure(final IndicationFailure indicationFailure) =
      _$_LoadFailure;

  IndicationFailure get indicationFailure;
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
