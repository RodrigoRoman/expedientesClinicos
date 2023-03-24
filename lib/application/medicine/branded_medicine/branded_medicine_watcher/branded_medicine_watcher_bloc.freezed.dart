// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branded_medicine_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BrandedMedicineWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(String keyword) watchFilteredStarted,
    required TResult Function(
            Either<BrandedMedicineFailures, KtList<BrandedMedicine>>
                failureOrMedicines)
        medicinesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(String keyword)? watchFilteredStarted,
    TResult? Function(
            Either<BrandedMedicineFailures, KtList<BrandedMedicine>>
                failureOrMedicines)?
        medicinesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String keyword)? watchFilteredStarted,
    TResult Function(
            Either<BrandedMedicineFailures, KtList<BrandedMedicine>>
                failureOrMedicines)?
        medicinesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchFilteredStarted value) watchFilteredStarted,
    required TResult Function(_MedicinesReceived value) medicinesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult? Function(_MedicinesReceived value)? medicinesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult Function(_MedicinesReceived value)? medicinesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandedMedicineWatcherEventCopyWith<$Res> {
  factory $BrandedMedicineWatcherEventCopyWith(
          BrandedMedicineWatcherEvent value,
          $Res Function(BrandedMedicineWatcherEvent) then) =
      _$BrandedMedicineWatcherEventCopyWithImpl<$Res,
          BrandedMedicineWatcherEvent>;
}

/// @nodoc
class _$BrandedMedicineWatcherEventCopyWithImpl<$Res,
        $Val extends BrandedMedicineWatcherEvent>
    implements $BrandedMedicineWatcherEventCopyWith<$Res> {
  _$BrandedMedicineWatcherEventCopyWithImpl(this._value, this._then);

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
    extends _$BrandedMedicineWatcherEventCopyWithImpl<$Res, _$_WatchAllStarted>
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
    return 'BrandedMedicineWatcherEvent.watchAllStarted()';
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
            Either<BrandedMedicineFailures, KtList<BrandedMedicine>>
                failureOrMedicines)
        medicinesReceived,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(String keyword)? watchFilteredStarted,
    TResult? Function(
            Either<BrandedMedicineFailures, KtList<BrandedMedicine>>
                failureOrMedicines)?
        medicinesReceived,
  }) {
    return watchAllStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String keyword)? watchFilteredStarted,
    TResult Function(
            Either<BrandedMedicineFailures, KtList<BrandedMedicine>>
                failureOrMedicines)?
        medicinesReceived,
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
    required TResult Function(_MedicinesReceived value) medicinesReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult? Function(_MedicinesReceived value)? medicinesReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult Function(_MedicinesReceived value)? medicinesReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements BrandedMedicineWatcherEvent {
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
    extends _$BrandedMedicineWatcherEventCopyWithImpl<$Res,
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
    return 'BrandedMedicineWatcherEvent.watchFilteredStarted(keyword: $keyword)';
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
            Either<BrandedMedicineFailures, KtList<BrandedMedicine>>
                failureOrMedicines)
        medicinesReceived,
  }) {
    return watchFilteredStarted(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(String keyword)? watchFilteredStarted,
    TResult? Function(
            Either<BrandedMedicineFailures, KtList<BrandedMedicine>>
                failureOrMedicines)?
        medicinesReceived,
  }) {
    return watchFilteredStarted?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String keyword)? watchFilteredStarted,
    TResult Function(
            Either<BrandedMedicineFailures, KtList<BrandedMedicine>>
                failureOrMedicines)?
        medicinesReceived,
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
    required TResult Function(_MedicinesReceived value) medicinesReceived,
  }) {
    return watchFilteredStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult? Function(_MedicinesReceived value)? medicinesReceived,
  }) {
    return watchFilteredStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult Function(_MedicinesReceived value)? medicinesReceived,
    required TResult orElse(),
  }) {
    if (watchFilteredStarted != null) {
      return watchFilteredStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchFilteredStarted implements BrandedMedicineWatcherEvent {
  const factory _WatchFilteredStarted(final String keyword) =
      _$_WatchFilteredStarted;

  String get keyword;
  @JsonKey(ignore: true)
  _$$_WatchFilteredStartedCopyWith<_$_WatchFilteredStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MedicinesReceivedCopyWith<$Res> {
  factory _$$_MedicinesReceivedCopyWith(_$_MedicinesReceived value,
          $Res Function(_$_MedicinesReceived) then) =
      __$$_MedicinesReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Either<BrandedMedicineFailures, KtList<BrandedMedicine>>
          failureOrMedicines});
}

/// @nodoc
class __$$_MedicinesReceivedCopyWithImpl<$Res>
    extends _$BrandedMedicineWatcherEventCopyWithImpl<$Res,
        _$_MedicinesReceived> implements _$$_MedicinesReceivedCopyWith<$Res> {
  __$$_MedicinesReceivedCopyWithImpl(
      _$_MedicinesReceived _value, $Res Function(_$_MedicinesReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrMedicines = null,
  }) {
    return _then(_$_MedicinesReceived(
      null == failureOrMedicines
          ? _value.failureOrMedicines
          : failureOrMedicines // ignore: cast_nullable_to_non_nullable
              as Either<BrandedMedicineFailures, KtList<BrandedMedicine>>,
    ));
  }
}

/// @nodoc

class _$_MedicinesReceived implements _MedicinesReceived {
  const _$_MedicinesReceived(this.failureOrMedicines);

  @override
  final Either<BrandedMedicineFailures, KtList<BrandedMedicine>>
      failureOrMedicines;

  @override
  String toString() {
    return 'BrandedMedicineWatcherEvent.medicinesReceived(failureOrMedicines: $failureOrMedicines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicinesReceived &&
            (identical(other.failureOrMedicines, failureOrMedicines) ||
                other.failureOrMedicines == failureOrMedicines));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrMedicines);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicinesReceivedCopyWith<_$_MedicinesReceived> get copyWith =>
      __$$_MedicinesReceivedCopyWithImpl<_$_MedicinesReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(String keyword) watchFilteredStarted,
    required TResult Function(
            Either<BrandedMedicineFailures, KtList<BrandedMedicine>>
                failureOrMedicines)
        medicinesReceived,
  }) {
    return medicinesReceived(failureOrMedicines);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(String keyword)? watchFilteredStarted,
    TResult? Function(
            Either<BrandedMedicineFailures, KtList<BrandedMedicine>>
                failureOrMedicines)?
        medicinesReceived,
  }) {
    return medicinesReceived?.call(failureOrMedicines);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String keyword)? watchFilteredStarted,
    TResult Function(
            Either<BrandedMedicineFailures, KtList<BrandedMedicine>>
                failureOrMedicines)?
        medicinesReceived,
    required TResult orElse(),
  }) {
    if (medicinesReceived != null) {
      return medicinesReceived(failureOrMedicines);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchFilteredStarted value) watchFilteredStarted,
    required TResult Function(_MedicinesReceived value) medicinesReceived,
  }) {
    return medicinesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult? Function(_MedicinesReceived value)? medicinesReceived,
  }) {
    return medicinesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult Function(_MedicinesReceived value)? medicinesReceived,
    required TResult orElse(),
  }) {
    if (medicinesReceived != null) {
      return medicinesReceived(this);
    }
    return orElse();
  }
}

abstract class _MedicinesReceived implements BrandedMedicineWatcherEvent {
  const factory _MedicinesReceived(
      final Either<BrandedMedicineFailures, KtList<BrandedMedicine>>
          failureOrMedicines) = _$_MedicinesReceived;

  Either<BrandedMedicineFailures, KtList<BrandedMedicine>>
      get failureOrMedicines;
  @JsonKey(ignore: true)
  _$$_MedicinesReceivedCopyWith<_$_MedicinesReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BrandedMedicineWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<BrandedMedicine> medicines) loadSuccess,
    required TResult Function(BrandedMedicineFailures medicineFailure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<BrandedMedicine> medicines)? loadSuccess,
    TResult? Function(BrandedMedicineFailures medicineFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<BrandedMedicine> medicines)? loadSuccess,
    TResult Function(BrandedMedicineFailures medicineFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_MedicineFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_MedicineFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_MedicineFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandedMedicineWatcherStateCopyWith<$Res> {
  factory $BrandedMedicineWatcherStateCopyWith(
          BrandedMedicineWatcherState value,
          $Res Function(BrandedMedicineWatcherState) then) =
      _$BrandedMedicineWatcherStateCopyWithImpl<$Res,
          BrandedMedicineWatcherState>;
}

/// @nodoc
class _$BrandedMedicineWatcherStateCopyWithImpl<$Res,
        $Val extends BrandedMedicineWatcherState>
    implements $BrandedMedicineWatcherStateCopyWith<$Res> {
  _$BrandedMedicineWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$BrandedMedicineWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'BrandedMedicineWatcherState.initial()';
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
    required TResult Function(KtList<BrandedMedicine> medicines) loadSuccess,
    required TResult Function(BrandedMedicineFailures medicineFailure)
        loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<BrandedMedicine> medicines)? loadSuccess,
    TResult? Function(BrandedMedicineFailures medicineFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<BrandedMedicine> medicines)? loadSuccess,
    TResult Function(BrandedMedicineFailures medicineFailure)? loadFailure,
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
    required TResult Function(_MedicineFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_MedicineFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_MedicineFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BrandedMedicineWatcherState {
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
    extends _$BrandedMedicineWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
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
    return 'BrandedMedicineWatcherState.loadInProgress()';
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
    required TResult Function(KtList<BrandedMedicine> medicines) loadSuccess,
    required TResult Function(BrandedMedicineFailures medicineFailure)
        loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<BrandedMedicine> medicines)? loadSuccess,
    TResult? Function(BrandedMedicineFailures medicineFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<BrandedMedicine> medicines)? loadSuccess,
    TResult Function(BrandedMedicineFailures medicineFailure)? loadFailure,
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
    required TResult Function(_MedicineFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_MedicineFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_MedicineFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements BrandedMedicineWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({KtList<BrandedMedicine> medicines});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$BrandedMedicineWatcherStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicines = null,
  }) {
    return _then(_$_LoadSuccess(
      null == medicines
          ? _value.medicines
          : medicines // ignore: cast_nullable_to_non_nullable
              as KtList<BrandedMedicine>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.medicines);

  @override
  final KtList<BrandedMedicine> medicines;

  @override
  String toString() {
    return 'BrandedMedicineWatcherState.loadSuccess(medicines: $medicines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            (identical(other.medicines, medicines) ||
                other.medicines == medicines));
  }

  @override
  int get hashCode => Object.hash(runtimeType, medicines);

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
    required TResult Function(KtList<BrandedMedicine> medicines) loadSuccess,
    required TResult Function(BrandedMedicineFailures medicineFailure)
        loadFailure,
  }) {
    return loadSuccess(medicines);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<BrandedMedicine> medicines)? loadSuccess,
    TResult? Function(BrandedMedicineFailures medicineFailure)? loadFailure,
  }) {
    return loadSuccess?.call(medicines);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<BrandedMedicine> medicines)? loadSuccess,
    TResult Function(BrandedMedicineFailures medicineFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(medicines);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_MedicineFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_MedicineFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_MedicineFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements BrandedMedicineWatcherState {
  const factory _LoadSuccess(final KtList<BrandedMedicine> medicines) =
      _$_LoadSuccess;

  KtList<BrandedMedicine> get medicines;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MedicineFailureCopyWith<$Res> {
  factory _$$_MedicineFailureCopyWith(
          _$_MedicineFailure value, $Res Function(_$_MedicineFailure) then) =
      __$$_MedicineFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({BrandedMedicineFailures medicineFailure});

  $BrandedMedicineFailuresCopyWith<$Res> get medicineFailure;
}

/// @nodoc
class __$$_MedicineFailureCopyWithImpl<$Res>
    extends _$BrandedMedicineWatcherStateCopyWithImpl<$Res, _$_MedicineFailure>
    implements _$$_MedicineFailureCopyWith<$Res> {
  __$$_MedicineFailureCopyWithImpl(
      _$_MedicineFailure _value, $Res Function(_$_MedicineFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicineFailure = null,
  }) {
    return _then(_$_MedicineFailure(
      null == medicineFailure
          ? _value.medicineFailure
          : medicineFailure // ignore: cast_nullable_to_non_nullable
              as BrandedMedicineFailures,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandedMedicineFailuresCopyWith<$Res> get medicineFailure {
    return $BrandedMedicineFailuresCopyWith<$Res>(_value.medicineFailure,
        (value) {
      return _then(_value.copyWith(medicineFailure: value));
    });
  }
}

/// @nodoc

class _$_MedicineFailure implements _MedicineFailure {
  const _$_MedicineFailure(this.medicineFailure);

  @override
  final BrandedMedicineFailures medicineFailure;

  @override
  String toString() {
    return 'BrandedMedicineWatcherState.loadFailure(medicineFailure: $medicineFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicineFailure &&
            (identical(other.medicineFailure, medicineFailure) ||
                other.medicineFailure == medicineFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, medicineFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicineFailureCopyWith<_$_MedicineFailure> get copyWith =>
      __$$_MedicineFailureCopyWithImpl<_$_MedicineFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<BrandedMedicine> medicines) loadSuccess,
    required TResult Function(BrandedMedicineFailures medicineFailure)
        loadFailure,
  }) {
    return loadFailure(medicineFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<BrandedMedicine> medicines)? loadSuccess,
    TResult? Function(BrandedMedicineFailures medicineFailure)? loadFailure,
  }) {
    return loadFailure?.call(medicineFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<BrandedMedicine> medicines)? loadSuccess,
    TResult Function(BrandedMedicineFailures medicineFailure)? loadFailure,
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
    required TResult Function(_MedicineFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_MedicineFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_MedicineFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _MedicineFailure implements BrandedMedicineWatcherState {
  const factory _MedicineFailure(
      final BrandedMedicineFailures medicineFailure) = _$_MedicineFailure;

  BrandedMedicineFailures get medicineFailure;
  @JsonKey(ignore: true)
  _$$_MedicineFailureCopyWith<_$_MedicineFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
