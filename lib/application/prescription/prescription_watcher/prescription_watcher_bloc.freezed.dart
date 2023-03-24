// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prescription_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PrescriptionWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(String keyword) watchFilteredStarted,
    required TResult Function(
            Either<PrescriptionFailures, KtList<Prescription>>
                failureOrPrescriptions)
        prescriptionsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(String keyword)? watchFilteredStarted,
    TResult? Function(
            Either<PrescriptionFailures, KtList<Prescription>>
                failureOrPrescriptions)?
        prescriptionsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String keyword)? watchFilteredStarted,
    TResult Function(
            Either<PrescriptionFailures, KtList<Prescription>>
                failureOrPrescriptions)?
        prescriptionsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchFilteredStarted value) watchFilteredStarted,
    required TResult Function(_PrescriptionsReceived value)
        prescriptionsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult? Function(_PrescriptionsReceived value)? prescriptionsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult Function(_PrescriptionsReceived value)? prescriptionsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrescriptionWatcherEventCopyWith<$Res> {
  factory $PrescriptionWatcherEventCopyWith(PrescriptionWatcherEvent value,
          $Res Function(PrescriptionWatcherEvent) then) =
      _$PrescriptionWatcherEventCopyWithImpl<$Res, PrescriptionWatcherEvent>;
}

/// @nodoc
class _$PrescriptionWatcherEventCopyWithImpl<$Res,
        $Val extends PrescriptionWatcherEvent>
    implements $PrescriptionWatcherEventCopyWith<$Res> {
  _$PrescriptionWatcherEventCopyWithImpl(this._value, this._then);

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
    extends _$PrescriptionWatcherEventCopyWithImpl<$Res, _$_WatchAllStarted>
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
    return 'PrescriptionWatcherEvent.watchAllStarted()';
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
            Either<PrescriptionFailures, KtList<Prescription>>
                failureOrPrescriptions)
        prescriptionsReceived,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(String keyword)? watchFilteredStarted,
    TResult? Function(
            Either<PrescriptionFailures, KtList<Prescription>>
                failureOrPrescriptions)?
        prescriptionsReceived,
  }) {
    return watchAllStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String keyword)? watchFilteredStarted,
    TResult Function(
            Either<PrescriptionFailures, KtList<Prescription>>
                failureOrPrescriptions)?
        prescriptionsReceived,
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
    required TResult Function(_PrescriptionsReceived value)
        prescriptionsReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult? Function(_PrescriptionsReceived value)? prescriptionsReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult Function(_PrescriptionsReceived value)? prescriptionsReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements PrescriptionWatcherEvent {
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
    extends _$PrescriptionWatcherEventCopyWithImpl<$Res,
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
    return 'PrescriptionWatcherEvent.watchFilteredStarted(keyword: $keyword)';
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
            Either<PrescriptionFailures, KtList<Prescription>>
                failureOrPrescriptions)
        prescriptionsReceived,
  }) {
    return watchFilteredStarted(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(String keyword)? watchFilteredStarted,
    TResult? Function(
            Either<PrescriptionFailures, KtList<Prescription>>
                failureOrPrescriptions)?
        prescriptionsReceived,
  }) {
    return watchFilteredStarted?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String keyword)? watchFilteredStarted,
    TResult Function(
            Either<PrescriptionFailures, KtList<Prescription>>
                failureOrPrescriptions)?
        prescriptionsReceived,
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
    required TResult Function(_PrescriptionsReceived value)
        prescriptionsReceived,
  }) {
    return watchFilteredStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult? Function(_PrescriptionsReceived value)? prescriptionsReceived,
  }) {
    return watchFilteredStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult Function(_PrescriptionsReceived value)? prescriptionsReceived,
    required TResult orElse(),
  }) {
    if (watchFilteredStarted != null) {
      return watchFilteredStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchFilteredStarted implements PrescriptionWatcherEvent {
  const factory _WatchFilteredStarted(final String keyword) =
      _$_WatchFilteredStarted;

  String get keyword;
  @JsonKey(ignore: true)
  _$$_WatchFilteredStartedCopyWith<_$_WatchFilteredStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PrescriptionsReceivedCopyWith<$Res> {
  factory _$$_PrescriptionsReceivedCopyWith(_$_PrescriptionsReceived value,
          $Res Function(_$_PrescriptionsReceived) then) =
      __$$_PrescriptionsReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Either<PrescriptionFailures, KtList<Prescription>>
          failureOrPrescriptions});
}

/// @nodoc
class __$$_PrescriptionsReceivedCopyWithImpl<$Res>
    extends _$PrescriptionWatcherEventCopyWithImpl<$Res,
        _$_PrescriptionsReceived>
    implements _$$_PrescriptionsReceivedCopyWith<$Res> {
  __$$_PrescriptionsReceivedCopyWithImpl(_$_PrescriptionsReceived _value,
      $Res Function(_$_PrescriptionsReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrPrescriptions = null,
  }) {
    return _then(_$_PrescriptionsReceived(
      null == failureOrPrescriptions
          ? _value.failureOrPrescriptions
          : failureOrPrescriptions // ignore: cast_nullable_to_non_nullable
              as Either<PrescriptionFailures, KtList<Prescription>>,
    ));
  }
}

/// @nodoc

class _$_PrescriptionsReceived implements _PrescriptionsReceived {
  const _$_PrescriptionsReceived(this.failureOrPrescriptions);

  @override
  final Either<PrescriptionFailures, KtList<Prescription>>
      failureOrPrescriptions;

  @override
  String toString() {
    return 'PrescriptionWatcherEvent.prescriptionsReceived(failureOrPrescriptions: $failureOrPrescriptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrescriptionsReceived &&
            (identical(other.failureOrPrescriptions, failureOrPrescriptions) ||
                other.failureOrPrescriptions == failureOrPrescriptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrPrescriptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrescriptionsReceivedCopyWith<_$_PrescriptionsReceived> get copyWith =>
      __$$_PrescriptionsReceivedCopyWithImpl<_$_PrescriptionsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(String keyword) watchFilteredStarted,
    required TResult Function(
            Either<PrescriptionFailures, KtList<Prescription>>
                failureOrPrescriptions)
        prescriptionsReceived,
  }) {
    return prescriptionsReceived(failureOrPrescriptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(String keyword)? watchFilteredStarted,
    TResult? Function(
            Either<PrescriptionFailures, KtList<Prescription>>
                failureOrPrescriptions)?
        prescriptionsReceived,
  }) {
    return prescriptionsReceived?.call(failureOrPrescriptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String keyword)? watchFilteredStarted,
    TResult Function(
            Either<PrescriptionFailures, KtList<Prescription>>
                failureOrPrescriptions)?
        prescriptionsReceived,
    required TResult orElse(),
  }) {
    if (prescriptionsReceived != null) {
      return prescriptionsReceived(failureOrPrescriptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchFilteredStarted value) watchFilteredStarted,
    required TResult Function(_PrescriptionsReceived value)
        prescriptionsReceived,
  }) {
    return prescriptionsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult? Function(_PrescriptionsReceived value)? prescriptionsReceived,
  }) {
    return prescriptionsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult Function(_PrescriptionsReceived value)? prescriptionsReceived,
    required TResult orElse(),
  }) {
    if (prescriptionsReceived != null) {
      return prescriptionsReceived(this);
    }
    return orElse();
  }
}

abstract class _PrescriptionsReceived implements PrescriptionWatcherEvent {
  const factory _PrescriptionsReceived(
      final Either<PrescriptionFailures, KtList<Prescription>>
          failureOrPrescriptions) = _$_PrescriptionsReceived;

  Either<PrescriptionFailures, KtList<Prescription>> get failureOrPrescriptions;
  @JsonKey(ignore: true)
  _$$_PrescriptionsReceivedCopyWith<_$_PrescriptionsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PrescriptionWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Prescription> prescriptions) loadSuccess,
    required TResult Function(PrescriptionFailures prescriptionFailure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<Prescription> prescriptions)? loadSuccess,
    TResult? Function(PrescriptionFailures prescriptionFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Prescription> prescriptions)? loadSuccess,
    TResult Function(PrescriptionFailures prescriptionFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_PrescriptionFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_PrescriptionFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_PrescriptionFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrescriptionWatcherStateCopyWith<$Res> {
  factory $PrescriptionWatcherStateCopyWith(PrescriptionWatcherState value,
          $Res Function(PrescriptionWatcherState) then) =
      _$PrescriptionWatcherStateCopyWithImpl<$Res, PrescriptionWatcherState>;
}

/// @nodoc
class _$PrescriptionWatcherStateCopyWithImpl<$Res,
        $Val extends PrescriptionWatcherState>
    implements $PrescriptionWatcherStateCopyWith<$Res> {
  _$PrescriptionWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$PrescriptionWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PrescriptionWatcherState.initial()';
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
    required TResult Function(KtList<Prescription> prescriptions) loadSuccess,
    required TResult Function(PrescriptionFailures prescriptionFailure)
        loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<Prescription> prescriptions)? loadSuccess,
    TResult? Function(PrescriptionFailures prescriptionFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Prescription> prescriptions)? loadSuccess,
    TResult Function(PrescriptionFailures prescriptionFailure)? loadFailure,
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
    required TResult Function(_PrescriptionFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_PrescriptionFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_PrescriptionFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PrescriptionWatcherState {
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
    extends _$PrescriptionWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
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
    return 'PrescriptionWatcherState.loadInProgress()';
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
    required TResult Function(KtList<Prescription> prescriptions) loadSuccess,
    required TResult Function(PrescriptionFailures prescriptionFailure)
        loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<Prescription> prescriptions)? loadSuccess,
    TResult? Function(PrescriptionFailures prescriptionFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Prescription> prescriptions)? loadSuccess,
    TResult Function(PrescriptionFailures prescriptionFailure)? loadFailure,
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
    required TResult Function(_PrescriptionFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_PrescriptionFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_PrescriptionFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements PrescriptionWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({KtList<Prescription> prescriptions});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$PrescriptionWatcherStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prescriptions = null,
  }) {
    return _then(_$_LoadSuccess(
      null == prescriptions
          ? _value.prescriptions
          : prescriptions // ignore: cast_nullable_to_non_nullable
              as KtList<Prescription>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.prescriptions);

  @override
  final KtList<Prescription> prescriptions;

  @override
  String toString() {
    return 'PrescriptionWatcherState.loadSuccess(prescriptions: $prescriptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            (identical(other.prescriptions, prescriptions) ||
                other.prescriptions == prescriptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prescriptions);

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
    required TResult Function(KtList<Prescription> prescriptions) loadSuccess,
    required TResult Function(PrescriptionFailures prescriptionFailure)
        loadFailure,
  }) {
    return loadSuccess(prescriptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<Prescription> prescriptions)? loadSuccess,
    TResult? Function(PrescriptionFailures prescriptionFailure)? loadFailure,
  }) {
    return loadSuccess?.call(prescriptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Prescription> prescriptions)? loadSuccess,
    TResult Function(PrescriptionFailures prescriptionFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(prescriptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_PrescriptionFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_PrescriptionFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_PrescriptionFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements PrescriptionWatcherState {
  const factory _LoadSuccess(final KtList<Prescription> prescriptions) =
      _$_LoadSuccess;

  KtList<Prescription> get prescriptions;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PrescriptionFailureCopyWith<$Res> {
  factory _$$_PrescriptionFailureCopyWith(_$_PrescriptionFailure value,
          $Res Function(_$_PrescriptionFailure) then) =
      __$$_PrescriptionFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({PrescriptionFailures prescriptionFailure});

  $PrescriptionFailuresCopyWith<$Res> get prescriptionFailure;
}

/// @nodoc
class __$$_PrescriptionFailureCopyWithImpl<$Res>
    extends _$PrescriptionWatcherStateCopyWithImpl<$Res, _$_PrescriptionFailure>
    implements _$$_PrescriptionFailureCopyWith<$Res> {
  __$$_PrescriptionFailureCopyWithImpl(_$_PrescriptionFailure _value,
      $Res Function(_$_PrescriptionFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prescriptionFailure = null,
  }) {
    return _then(_$_PrescriptionFailure(
      null == prescriptionFailure
          ? _value.prescriptionFailure
          : prescriptionFailure // ignore: cast_nullable_to_non_nullable
              as PrescriptionFailures,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PrescriptionFailuresCopyWith<$Res> get prescriptionFailure {
    return $PrescriptionFailuresCopyWith<$Res>(_value.prescriptionFailure,
        (value) {
      return _then(_value.copyWith(prescriptionFailure: value));
    });
  }
}

/// @nodoc

class _$_PrescriptionFailure implements _PrescriptionFailure {
  const _$_PrescriptionFailure(this.prescriptionFailure);

  @override
  final PrescriptionFailures prescriptionFailure;

  @override
  String toString() {
    return 'PrescriptionWatcherState.loadFailure(prescriptionFailure: $prescriptionFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrescriptionFailure &&
            (identical(other.prescriptionFailure, prescriptionFailure) ||
                other.prescriptionFailure == prescriptionFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prescriptionFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrescriptionFailureCopyWith<_$_PrescriptionFailure> get copyWith =>
      __$$_PrescriptionFailureCopyWithImpl<_$_PrescriptionFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Prescription> prescriptions) loadSuccess,
    required TResult Function(PrescriptionFailures prescriptionFailure)
        loadFailure,
  }) {
    return loadFailure(prescriptionFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<Prescription> prescriptions)? loadSuccess,
    TResult? Function(PrescriptionFailures prescriptionFailure)? loadFailure,
  }) {
    return loadFailure?.call(prescriptionFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Prescription> prescriptions)? loadSuccess,
    TResult Function(PrescriptionFailures prescriptionFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(prescriptionFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_PrescriptionFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_PrescriptionFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_PrescriptionFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _PrescriptionFailure implements PrescriptionWatcherState {
  const factory _PrescriptionFailure(
      final PrescriptionFailures prescriptionFailure) = _$_PrescriptionFailure;

  PrescriptionFailures get prescriptionFailure;
  @JsonKey(ignore: true)
  _$$_PrescriptionFailureCopyWith<_$_PrescriptionFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
