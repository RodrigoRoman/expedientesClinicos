// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'abbreviation_name_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AbbreviationNameWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(String keyword) watchFilteredStarted,
    required TResult Function(
            Either<NameAbbreviationFailure, KtList<NameAbbreviation>>
                failureOrUnit)
        abbreviationNamesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(String keyword)? watchFilteredStarted,
    TResult? Function(
            Either<NameAbbreviationFailure, KtList<NameAbbreviation>>
                failureOrUnit)?
        abbreviationNamesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String keyword)? watchFilteredStarted,
    TResult Function(
            Either<NameAbbreviationFailure, KtList<NameAbbreviation>>
                failureOrUnit)?
        abbreviationNamesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchFilteredStarted value) watchFilteredStarted,
    required TResult Function(_AbbreviationNameReceived value)
        abbreviationNamesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult? Function(_AbbreviationNameReceived value)?
        abbreviationNamesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult Function(_AbbreviationNameReceived value)?
        abbreviationNamesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbbreviationNameWatcherEventCopyWith<$Res> {
  factory $AbbreviationNameWatcherEventCopyWith(
          AbbreviationNameWatcherEvent value,
          $Res Function(AbbreviationNameWatcherEvent) then) =
      _$AbbreviationNameWatcherEventCopyWithImpl<$Res,
          AbbreviationNameWatcherEvent>;
}

/// @nodoc
class _$AbbreviationNameWatcherEventCopyWithImpl<$Res,
        $Val extends AbbreviationNameWatcherEvent>
    implements $AbbreviationNameWatcherEventCopyWith<$Res> {
  _$AbbreviationNameWatcherEventCopyWithImpl(this._value, this._then);

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
    extends _$AbbreviationNameWatcherEventCopyWithImpl<$Res,
        _$WatchAllStartedImpl> implements _$$WatchAllStartedImplCopyWith<$Res> {
  __$$WatchAllStartedImplCopyWithImpl(
      _$WatchAllStartedImpl _value, $Res Function(_$WatchAllStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WatchAllStartedImpl implements _WatchAllStarted {
  const _$WatchAllStartedImpl();

  @override
  String toString() {
    return 'AbbreviationNameWatcherEvent.watchAllStarted()';
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
            Either<NameAbbreviationFailure, KtList<NameAbbreviation>>
                failureOrUnit)
        abbreviationNamesReceived,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(String keyword)? watchFilteredStarted,
    TResult? Function(
            Either<NameAbbreviationFailure, KtList<NameAbbreviation>>
                failureOrUnit)?
        abbreviationNamesReceived,
  }) {
    return watchAllStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String keyword)? watchFilteredStarted,
    TResult Function(
            Either<NameAbbreviationFailure, KtList<NameAbbreviation>>
                failureOrUnit)?
        abbreviationNamesReceived,
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
    required TResult Function(_AbbreviationNameReceived value)
        abbreviationNamesReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult? Function(_AbbreviationNameReceived value)?
        abbreviationNamesReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult Function(_AbbreviationNameReceived value)?
        abbreviationNamesReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements AbbreviationNameWatcherEvent {
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
    extends _$AbbreviationNameWatcherEventCopyWithImpl<$Res,
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
    return 'AbbreviationNameWatcherEvent.watchFilteredStarted(keyword: $keyword)';
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
            Either<NameAbbreviationFailure, KtList<NameAbbreviation>>
                failureOrUnit)
        abbreviationNamesReceived,
  }) {
    return watchFilteredStarted(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(String keyword)? watchFilteredStarted,
    TResult? Function(
            Either<NameAbbreviationFailure, KtList<NameAbbreviation>>
                failureOrUnit)?
        abbreviationNamesReceived,
  }) {
    return watchFilteredStarted?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String keyword)? watchFilteredStarted,
    TResult Function(
            Either<NameAbbreviationFailure, KtList<NameAbbreviation>>
                failureOrUnit)?
        abbreviationNamesReceived,
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
    required TResult Function(_AbbreviationNameReceived value)
        abbreviationNamesReceived,
  }) {
    return watchFilteredStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult? Function(_AbbreviationNameReceived value)?
        abbreviationNamesReceived,
  }) {
    return watchFilteredStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult Function(_AbbreviationNameReceived value)?
        abbreviationNamesReceived,
    required TResult orElse(),
  }) {
    if (watchFilteredStarted != null) {
      return watchFilteredStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchFilteredStarted implements AbbreviationNameWatcherEvent {
  const factory _WatchFilteredStarted(final String keyword) =
      _$WatchFilteredStartedImpl;

  String get keyword;
  @JsonKey(ignore: true)
  _$$WatchFilteredStartedImplCopyWith<_$WatchFilteredStartedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AbbreviationNameReceivedImplCopyWith<$Res> {
  factory _$$AbbreviationNameReceivedImplCopyWith(
          _$AbbreviationNameReceivedImpl value,
          $Res Function(_$AbbreviationNameReceivedImpl) then) =
      __$$AbbreviationNameReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Either<NameAbbreviationFailure, KtList<NameAbbreviation>>
          failureOrUnit});
}

/// @nodoc
class __$$AbbreviationNameReceivedImplCopyWithImpl<$Res>
    extends _$AbbreviationNameWatcherEventCopyWithImpl<$Res,
        _$AbbreviationNameReceivedImpl>
    implements _$$AbbreviationNameReceivedImplCopyWith<$Res> {
  __$$AbbreviationNameReceivedImplCopyWithImpl(
      _$AbbreviationNameReceivedImpl _value,
      $Res Function(_$AbbreviationNameReceivedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrUnit = null,
  }) {
    return _then(_$AbbreviationNameReceivedImpl(
      null == failureOrUnit
          ? _value.failureOrUnit
          : failureOrUnit // ignore: cast_nullable_to_non_nullable
              as Either<NameAbbreviationFailure, KtList<NameAbbreviation>>,
    ));
  }
}

/// @nodoc

class _$AbbreviationNameReceivedImpl implements _AbbreviationNameReceived {
  const _$AbbreviationNameReceivedImpl(this.failureOrUnit);

  @override
  final Either<NameAbbreviationFailure, KtList<NameAbbreviation>> failureOrUnit;

  @override
  String toString() {
    return 'AbbreviationNameWatcherEvent.abbreviationNamesReceived(failureOrUnit: $failureOrUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbbreviationNameReceivedImpl &&
            (identical(other.failureOrUnit, failureOrUnit) ||
                other.failureOrUnit == failureOrUnit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrUnit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AbbreviationNameReceivedImplCopyWith<_$AbbreviationNameReceivedImpl>
      get copyWith => __$$AbbreviationNameReceivedImplCopyWithImpl<
          _$AbbreviationNameReceivedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(String keyword) watchFilteredStarted,
    required TResult Function(
            Either<NameAbbreviationFailure, KtList<NameAbbreviation>>
                failureOrUnit)
        abbreviationNamesReceived,
  }) {
    return abbreviationNamesReceived(failureOrUnit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllStarted,
    TResult? Function(String keyword)? watchFilteredStarted,
    TResult? Function(
            Either<NameAbbreviationFailure, KtList<NameAbbreviation>>
                failureOrUnit)?
        abbreviationNamesReceived,
  }) {
    return abbreviationNamesReceived?.call(failureOrUnit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String keyword)? watchFilteredStarted,
    TResult Function(
            Either<NameAbbreviationFailure, KtList<NameAbbreviation>>
                failureOrUnit)?
        abbreviationNamesReceived,
    required TResult orElse(),
  }) {
    if (abbreviationNamesReceived != null) {
      return abbreviationNamesReceived(failureOrUnit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_WatchFilteredStarted value) watchFilteredStarted,
    required TResult Function(_AbbreviationNameReceived value)
        abbreviationNamesReceived,
  }) {
    return abbreviationNamesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchAllStarted value)? watchAllStarted,
    TResult? Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult? Function(_AbbreviationNameReceived value)?
        abbreviationNamesReceived,
  }) {
    return abbreviationNamesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_WatchFilteredStarted value)? watchFilteredStarted,
    TResult Function(_AbbreviationNameReceived value)?
        abbreviationNamesReceived,
    required TResult orElse(),
  }) {
    if (abbreviationNamesReceived != null) {
      return abbreviationNamesReceived(this);
    }
    return orElse();
  }
}

abstract class _AbbreviationNameReceived
    implements AbbreviationNameWatcherEvent {
  const factory _AbbreviationNameReceived(
      final Either<NameAbbreviationFailure, KtList<NameAbbreviation>>
          failureOrUnit) = _$AbbreviationNameReceivedImpl;

  Either<NameAbbreviationFailure, KtList<NameAbbreviation>> get failureOrUnit;
  @JsonKey(ignore: true)
  _$$AbbreviationNameReceivedImplCopyWith<_$AbbreviationNameReceivedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AbbreviationNameWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<NameAbbreviation> abbreviationName)
        loadSuccess,
    required TResult Function(NameAbbreviationFailure abbreviationNameFailure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<NameAbbreviation> abbreviationName)? loadSuccess,
    TResult? Function(NameAbbreviationFailure abbreviationNameFailure)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<NameAbbreviation> abbreviationName)? loadSuccess,
    TResult Function(NameAbbreviationFailure abbreviationNameFailure)?
        loadFailure,
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
abstract class $AbbreviationNameWatcherStateCopyWith<$Res> {
  factory $AbbreviationNameWatcherStateCopyWith(
          AbbreviationNameWatcherState value,
          $Res Function(AbbreviationNameWatcherState) then) =
      _$AbbreviationNameWatcherStateCopyWithImpl<$Res,
          AbbreviationNameWatcherState>;
}

/// @nodoc
class _$AbbreviationNameWatcherStateCopyWithImpl<$Res,
        $Val extends AbbreviationNameWatcherState>
    implements $AbbreviationNameWatcherStateCopyWith<$Res> {
  _$AbbreviationNameWatcherStateCopyWithImpl(this._value, this._then);

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
    extends _$AbbreviationNameWatcherStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AbbreviationNameWatcherState.initial()';
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
    required TResult Function(KtList<NameAbbreviation> abbreviationName)
        loadSuccess,
    required TResult Function(NameAbbreviationFailure abbreviationNameFailure)
        loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<NameAbbreviation> abbreviationName)? loadSuccess,
    TResult? Function(NameAbbreviationFailure abbreviationNameFailure)?
        loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<NameAbbreviation> abbreviationName)? loadSuccess,
    TResult Function(NameAbbreviationFailure abbreviationNameFailure)?
        loadFailure,
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

abstract class _Initial implements AbbreviationNameWatcherState {
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
    extends _$AbbreviationNameWatcherStateCopyWithImpl<$Res,
        _$LoadInProgressImpl> implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadInProgressImpl implements _LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString() {
    return 'AbbreviationNameWatcherState.loadInProgress()';
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
    required TResult Function(KtList<NameAbbreviation> abbreviationName)
        loadSuccess,
    required TResult Function(NameAbbreviationFailure abbreviationNameFailure)
        loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<NameAbbreviation> abbreviationName)? loadSuccess,
    TResult? Function(NameAbbreviationFailure abbreviationNameFailure)?
        loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<NameAbbreviation> abbreviationName)? loadSuccess,
    TResult Function(NameAbbreviationFailure abbreviationNameFailure)?
        loadFailure,
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

abstract class _LoadInProgress implements AbbreviationNameWatcherState {
  const factory _LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<$Res> {
  factory _$$LoadSuccessImplCopyWith(
          _$LoadSuccessImpl value, $Res Function(_$LoadSuccessImpl) then) =
      __$$LoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({KtList<NameAbbreviation> abbreviationName});
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<$Res>
    extends _$AbbreviationNameWatcherStateCopyWithImpl<$Res, _$LoadSuccessImpl>
    implements _$$LoadSuccessImplCopyWith<$Res> {
  __$$LoadSuccessImplCopyWithImpl(
      _$LoadSuccessImpl _value, $Res Function(_$LoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abbreviationName = null,
  }) {
    return _then(_$LoadSuccessImpl(
      null == abbreviationName
          ? _value.abbreviationName
          : abbreviationName // ignore: cast_nullable_to_non_nullable
              as KtList<NameAbbreviation>,
    ));
  }
}

/// @nodoc

class _$LoadSuccessImpl implements _LoadSuccess {
  const _$LoadSuccessImpl(this.abbreviationName);

  @override
  final KtList<NameAbbreviation> abbreviationName;

  @override
  String toString() {
    return 'AbbreviationNameWatcherState.loadSuccess(abbreviationName: $abbreviationName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessImpl &&
            (identical(other.abbreviationName, abbreviationName) ||
                other.abbreviationName == abbreviationName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, abbreviationName);

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
    required TResult Function(KtList<NameAbbreviation> abbreviationName)
        loadSuccess,
    required TResult Function(NameAbbreviationFailure abbreviationNameFailure)
        loadFailure,
  }) {
    return loadSuccess(abbreviationName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<NameAbbreviation> abbreviationName)? loadSuccess,
    TResult? Function(NameAbbreviationFailure abbreviationNameFailure)?
        loadFailure,
  }) {
    return loadSuccess?.call(abbreviationName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<NameAbbreviation> abbreviationName)? loadSuccess,
    TResult Function(NameAbbreviationFailure abbreviationNameFailure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(abbreviationName);
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

abstract class _LoadSuccess implements AbbreviationNameWatcherState {
  const factory _LoadSuccess(final KtList<NameAbbreviation> abbreviationName) =
      _$LoadSuccessImpl;

  KtList<NameAbbreviation> get abbreviationName;
  @JsonKey(ignore: true)
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailureImplCopyWith<$Res> {
  factory _$$LoadFailureImplCopyWith(
          _$LoadFailureImpl value, $Res Function(_$LoadFailureImpl) then) =
      __$$LoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NameAbbreviationFailure abbreviationNameFailure});

  $NameAbbreviationFailureCopyWith<$Res> get abbreviationNameFailure;
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$AbbreviationNameWatcherStateCopyWithImpl<$Res, _$LoadFailureImpl>
    implements _$$LoadFailureImplCopyWith<$Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl _value, $Res Function(_$LoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abbreviationNameFailure = null,
  }) {
    return _then(_$LoadFailureImpl(
      null == abbreviationNameFailure
          ? _value.abbreviationNameFailure
          : abbreviationNameFailure // ignore: cast_nullable_to_non_nullable
              as NameAbbreviationFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NameAbbreviationFailureCopyWith<$Res> get abbreviationNameFailure {
    return $NameAbbreviationFailureCopyWith<$Res>(
        _value.abbreviationNameFailure, (value) {
      return _then(_value.copyWith(abbreviationNameFailure: value));
    });
  }
}

/// @nodoc

class _$LoadFailureImpl implements _LoadFailure {
  const _$LoadFailureImpl(this.abbreviationNameFailure);

  @override
  final NameAbbreviationFailure abbreviationNameFailure;

  @override
  String toString() {
    return 'AbbreviationNameWatcherState.loadFailure(abbreviationNameFailure: $abbreviationNameFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailureImpl &&
            (identical(
                    other.abbreviationNameFailure, abbreviationNameFailure) ||
                other.abbreviationNameFailure == abbreviationNameFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, abbreviationNameFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      __$$LoadFailureImplCopyWithImpl<_$LoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<NameAbbreviation> abbreviationName)
        loadSuccess,
    required TResult Function(NameAbbreviationFailure abbreviationNameFailure)
        loadFailure,
  }) {
    return loadFailure(abbreviationNameFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(KtList<NameAbbreviation> abbreviationName)? loadSuccess,
    TResult? Function(NameAbbreviationFailure abbreviationNameFailure)?
        loadFailure,
  }) {
    return loadFailure?.call(abbreviationNameFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<NameAbbreviation> abbreviationName)? loadSuccess,
    TResult Function(NameAbbreviationFailure abbreviationNameFailure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(abbreviationNameFailure);
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

abstract class _LoadFailure implements AbbreviationNameWatcherState {
  const factory _LoadFailure(
          final NameAbbreviationFailure abbreviationNameFailure) =
      _$LoadFailureImpl;

  NameAbbreviationFailure get abbreviationNameFailure;
  @JsonKey(ignore: true)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
