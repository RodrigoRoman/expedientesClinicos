// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dose_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DoseWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(String keyword) watchFilteredStarted,
    required TResult Function(Either<DoseFailures, KtList<Dose>> failureOrDoses)
        dosesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(String keyword)? watchFilteredStarted,
    TResult? Function(Either<DoseFailures, KtList<Dose>> failureOrDoses)?
        dosesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String keyword)? watchFilteredStarted,
    TResult Function(Either<DoseFailures, KtList<Dose>> failureOrDoses)?
        dosesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchFilteredStarted value) watchFilteredStarted,
    required TResult Function(_DosesReceived value) dosesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult? Function(_DosesReceived value)? dosesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult Function(_DosesReceived value)? dosesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoseWatcherEventCopyWith<$Res> {
  factory $DoseWatcherEventCopyWith(
          DoseWatcherEvent value, $Res Function(DoseWatcherEvent) then) =
      _$DoseWatcherEventCopyWithImpl<$Res, DoseWatcherEvent>;
}

/// @nodoc
class _$DoseWatcherEventCopyWithImpl<$Res, $Val extends DoseWatcherEvent>
    implements $DoseWatcherEventCopyWith<$Res> {
  _$DoseWatcherEventCopyWithImpl(this._value, this._then);

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
    extends _$DoseWatcherEventCopyWithImpl<$Res, _$_WatchAllStarted>
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
    return 'DoseWatcherEvent.watchAllStarted()';
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
    required TResult Function(Either<DoseFailures, KtList<Dose>> failureOrDoses)
        dosesReceived,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(String keyword)? watchFilteredStarted,
    TResult? Function(Either<DoseFailures, KtList<Dose>> failureOrDoses)?
        dosesReceived,
  }) {
    return watchAllStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String keyword)? watchFilteredStarted,
    TResult Function(Either<DoseFailures, KtList<Dose>> failureOrDoses)?
        dosesReceived,
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
    required TResult Function(_DosesReceived value) dosesReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult? Function(_DosesReceived value)? dosesReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult Function(_DosesReceived value)? dosesReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements DoseWatcherEvent {
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
    extends _$DoseWatcherEventCopyWithImpl<$Res, _$_WatchFilteredStarted>
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
    return 'DoseWatcherEvent.watchFilteredStarted(keyword: $keyword)';
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
    required TResult Function(Either<DoseFailures, KtList<Dose>> failureOrDoses)
        dosesReceived,
  }) {
    return watchFilteredStarted(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(String keyword)? watchFilteredStarted,
    TResult? Function(Either<DoseFailures, KtList<Dose>> failureOrDoses)?
        dosesReceived,
  }) {
    return watchFilteredStarted?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String keyword)? watchFilteredStarted,
    TResult Function(Either<DoseFailures, KtList<Dose>> failureOrDoses)?
        dosesReceived,
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
    required TResult Function(_DosesReceived value) dosesReceived,
  }) {
    return watchFilteredStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult? Function(_DosesReceived value)? dosesReceived,
  }) {
    return watchFilteredStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult Function(_DosesReceived value)? dosesReceived,
    required TResult orElse(),
  }) {
    if (watchFilteredStarted != null) {
      return watchFilteredStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchFilteredStarted implements DoseWatcherEvent {
  const factory _WatchFilteredStarted(final String keyword) =
      _$_WatchFilteredStarted;

  String get keyword;
  @JsonKey(ignore: true)
  _$$_WatchFilteredStartedCopyWith<_$_WatchFilteredStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DosesReceivedCopyWith<$Res> {
  factory _$$_DosesReceivedCopyWith(
          _$_DosesReceived value, $Res Function(_$_DosesReceived) then) =
      __$$_DosesReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<DoseFailures, KtList<Dose>> failureOrDoses});
}

/// @nodoc
class __$$_DosesReceivedCopyWithImpl<$Res>
    extends _$DoseWatcherEventCopyWithImpl<$Res, _$_DosesReceived>
    implements _$$_DosesReceivedCopyWith<$Res> {
  __$$_DosesReceivedCopyWithImpl(
      _$_DosesReceived _value, $Res Function(_$_DosesReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrDoses = null,
  }) {
    return _then(_$_DosesReceived(
      null == failureOrDoses
          ? _value.failureOrDoses
          : failureOrDoses // ignore: cast_nullable_to_non_nullable
              as Either<DoseFailures, KtList<Dose>>,
    ));
  }
}

/// @nodoc

class _$_DosesReceived implements _DosesReceived {
  const _$_DosesReceived(this.failureOrDoses);

  @override
  final Either<DoseFailures, KtList<Dose>> failureOrDoses;

  @override
  String toString() {
    return 'DoseWatcherEvent.dosesReceived(failureOrDoses: $failureOrDoses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DosesReceived &&
            (identical(other.failureOrDoses, failureOrDoses) ||
                other.failureOrDoses == failureOrDoses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrDoses);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DosesReceivedCopyWith<_$_DosesReceived> get copyWith =>
      __$$_DosesReceivedCopyWithImpl<_$_DosesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(String keyword) watchFilteredStarted,
    required TResult Function(Either<DoseFailures, KtList<Dose>> failureOrDoses)
        dosesReceived,
  }) {
    return dosesReceived(failureOrDoses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(String keyword)? watchFilteredStarted,
    TResult? Function(Either<DoseFailures, KtList<Dose>> failureOrDoses)?
        dosesReceived,
  }) {
    return dosesReceived?.call(failureOrDoses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String keyword)? watchFilteredStarted,
    TResult Function(Either<DoseFailures, KtList<Dose>> failureOrDoses)?
        dosesReceived,
    required TResult orElse(),
  }) {
    if (dosesReceived != null) {
      return dosesReceived(failureOrDoses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchFilteredStarted value) watchFilteredStarted,
    required TResult Function(_DosesReceived value) dosesReceived,
  }) {
    return dosesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult? Function(_DosesReceived value)? dosesReceived,
  }) {
    return dosesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult Function(_DosesReceived value)? dosesReceived,
    required TResult orElse(),
  }) {
    if (dosesReceived != null) {
      return dosesReceived(this);
    }
    return orElse();
  }
}

abstract class _DosesReceived implements DoseWatcherEvent {
  const factory _DosesReceived(
          final Either<DoseFailures, KtList<Dose>> failureOrDoses) =
      _$_DosesReceived;

  Either<DoseFailures, KtList<Dose>> get failureOrDoses;
  @JsonKey(ignore: true)
  _$$_DosesReceivedCopyWith<_$_DosesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DoseWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Dose> dose) loadSuccess,
    required TResult Function(DoseFailures medicineFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<Dose> dose)? loadSuccess,
    TResult? Function(DoseFailures medicineFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Dose> dose)? loadSuccess,
    TResult Function(DoseFailures medicineFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_DoseFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_DoseFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_DoseFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoseWatcherStateCopyWith<$Res> {
  factory $DoseWatcherStateCopyWith(
          DoseWatcherState value, $Res Function(DoseWatcherState) then) =
      _$DoseWatcherStateCopyWithImpl<$Res, DoseWatcherState>;
}

/// @nodoc
class _$DoseWatcherStateCopyWithImpl<$Res, $Val extends DoseWatcherState>
    implements $DoseWatcherStateCopyWith<$Res> {
  _$DoseWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$DoseWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'DoseWatcherState.initial()';
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
    required TResult Function(KtList<Dose> dose) loadSuccess,
    required TResult Function(DoseFailures medicineFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<Dose> dose)? loadSuccess,
    TResult? Function(DoseFailures medicineFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Dose> dose)? loadSuccess,
    TResult Function(DoseFailures medicineFailure)? loadFailure,
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
    required TResult Function(_DoseFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_DoseFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_DoseFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DoseWatcherState {
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
    extends _$DoseWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
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
    return 'DoseWatcherState.loadInProgress()';
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
    required TResult Function(KtList<Dose> dose) loadSuccess,
    required TResult Function(DoseFailures medicineFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<Dose> dose)? loadSuccess,
    TResult? Function(DoseFailures medicineFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Dose> dose)? loadSuccess,
    TResult Function(DoseFailures medicineFailure)? loadFailure,
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
    required TResult Function(_DoseFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_DoseFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_DoseFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements DoseWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({KtList<Dose> dose});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$DoseWatcherStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dose = null,
  }) {
    return _then(_$_LoadSuccess(
      null == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as KtList<Dose>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.dose);

  @override
  final KtList<Dose> dose;

  @override
  String toString() {
    return 'DoseWatcherState.loadSuccess(dose: $dose)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            (identical(other.dose, dose) || other.dose == dose));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dose);

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
    required TResult Function(KtList<Dose> dose) loadSuccess,
    required TResult Function(DoseFailures medicineFailure) loadFailure,
  }) {
    return loadSuccess(dose);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<Dose> dose)? loadSuccess,
    TResult? Function(DoseFailures medicineFailure)? loadFailure,
  }) {
    return loadSuccess?.call(dose);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Dose> dose)? loadSuccess,
    TResult Function(DoseFailures medicineFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(dose);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_DoseFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_DoseFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_DoseFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements DoseWatcherState {
  const factory _LoadSuccess(final KtList<Dose> dose) = _$_LoadSuccess;

  KtList<Dose> get dose;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DoseFailureCopyWith<$Res> {
  factory _$$_DoseFailureCopyWith(
          _$_DoseFailure value, $Res Function(_$_DoseFailure) then) =
      __$$_DoseFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({DoseFailures medicineFailure});

  $DoseFailuresCopyWith<$Res> get medicineFailure;
}

/// @nodoc
class __$$_DoseFailureCopyWithImpl<$Res>
    extends _$DoseWatcherStateCopyWithImpl<$Res, _$_DoseFailure>
    implements _$$_DoseFailureCopyWith<$Res> {
  __$$_DoseFailureCopyWithImpl(
      _$_DoseFailure _value, $Res Function(_$_DoseFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicineFailure = null,
  }) {
    return _then(_$_DoseFailure(
      null == medicineFailure
          ? _value.medicineFailure
          : medicineFailure // ignore: cast_nullable_to_non_nullable
              as DoseFailures,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DoseFailuresCopyWith<$Res> get medicineFailure {
    return $DoseFailuresCopyWith<$Res>(_value.medicineFailure, (value) {
      return _then(_value.copyWith(medicineFailure: value));
    });
  }
}

/// @nodoc

class _$_DoseFailure implements _DoseFailure {
  const _$_DoseFailure(this.medicineFailure);

  @override
  final DoseFailures medicineFailure;

  @override
  String toString() {
    return 'DoseWatcherState.loadFailure(medicineFailure: $medicineFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoseFailure &&
            (identical(other.medicineFailure, medicineFailure) ||
                other.medicineFailure == medicineFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, medicineFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DoseFailureCopyWith<_$_DoseFailure> get copyWith =>
      __$$_DoseFailureCopyWithImpl<_$_DoseFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Dose> dose) loadSuccess,
    required TResult Function(DoseFailures medicineFailure) loadFailure,
  }) {
    return loadFailure(medicineFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<Dose> dose)? loadSuccess,
    TResult? Function(DoseFailures medicineFailure)? loadFailure,
  }) {
    return loadFailure?.call(medicineFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Dose> dose)? loadSuccess,
    TResult Function(DoseFailures medicineFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(medicineFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_DoseFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_DoseFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_DoseFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _DoseFailure implements DoseWatcherState {
  const factory _DoseFailure(final DoseFailures medicineFailure) =
      _$_DoseFailure;

  DoseFailures get medicineFailure;
  @JsonKey(ignore: true)
  _$$_DoseFailureCopyWith<_$_DoseFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
