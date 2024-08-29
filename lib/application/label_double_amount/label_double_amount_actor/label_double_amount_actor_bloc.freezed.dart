// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'label_double_amount_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LabelDoubleAmountActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LabelDoubleAmount labelDoubleAmount) deleted,
    required TResult Function() faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LabelDoubleAmount labelDoubleAmount)? deleted,
    TResult? Function()? faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LabelDoubleAmount labelDoubleAmount)? deleted,
    TResult Function()? faker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteLabelDoubleAmount value) deleted,
    required TResult Function(_FakeLabelDoubleAmount value) faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteLabelDoubleAmount value)? deleted,
    TResult? Function(_FakeLabelDoubleAmount value)? faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteLabelDoubleAmount value)? deleted,
    TResult Function(_FakeLabelDoubleAmount value)? faker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabelDoubleAmountActorEventCopyWith<$Res> {
  factory $LabelDoubleAmountActorEventCopyWith(
          LabelDoubleAmountActorEvent value,
          $Res Function(LabelDoubleAmountActorEvent) then) =
      _$LabelDoubleAmountActorEventCopyWithImpl<$Res,
          LabelDoubleAmountActorEvent>;
}

/// @nodoc
class _$LabelDoubleAmountActorEventCopyWithImpl<$Res,
        $Val extends LabelDoubleAmountActorEvent>
    implements $LabelDoubleAmountActorEventCopyWith<$Res> {
  _$LabelDoubleAmountActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DeleteLabelDoubleAmountImplCopyWith<$Res> {
  factory _$$DeleteLabelDoubleAmountImplCopyWith(
          _$DeleteLabelDoubleAmountImpl value,
          $Res Function(_$DeleteLabelDoubleAmountImpl) then) =
      __$$DeleteLabelDoubleAmountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LabelDoubleAmount labelDoubleAmount});

  $LabelDoubleAmountCopyWith<$Res> get labelDoubleAmount;
}

/// @nodoc
class __$$DeleteLabelDoubleAmountImplCopyWithImpl<$Res>
    extends _$LabelDoubleAmountActorEventCopyWithImpl<$Res,
        _$DeleteLabelDoubleAmountImpl>
    implements _$$DeleteLabelDoubleAmountImplCopyWith<$Res> {
  __$$DeleteLabelDoubleAmountImplCopyWithImpl(
      _$DeleteLabelDoubleAmountImpl _value,
      $Res Function(_$DeleteLabelDoubleAmountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelDoubleAmount = null,
  }) {
    return _then(_$DeleteLabelDoubleAmountImpl(
      null == labelDoubleAmount
          ? _value.labelDoubleAmount
          : labelDoubleAmount // ignore: cast_nullable_to_non_nullable
              as LabelDoubleAmount,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LabelDoubleAmountCopyWith<$Res> get labelDoubleAmount {
    return $LabelDoubleAmountCopyWith<$Res>(_value.labelDoubleAmount, (value) {
      return _then(_value.copyWith(labelDoubleAmount: value));
    });
  }
}

/// @nodoc

class _$DeleteLabelDoubleAmountImpl implements _DeleteLabelDoubleAmount {
  const _$DeleteLabelDoubleAmountImpl(this.labelDoubleAmount);

  @override
  final LabelDoubleAmount labelDoubleAmount;

  @override
  String toString() {
    return 'LabelDoubleAmountActorEvent.deleted(labelDoubleAmount: $labelDoubleAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteLabelDoubleAmountImpl &&
            (identical(other.labelDoubleAmount, labelDoubleAmount) ||
                other.labelDoubleAmount == labelDoubleAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, labelDoubleAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteLabelDoubleAmountImplCopyWith<_$DeleteLabelDoubleAmountImpl>
      get copyWith => __$$DeleteLabelDoubleAmountImplCopyWithImpl<
          _$DeleteLabelDoubleAmountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LabelDoubleAmount labelDoubleAmount) deleted,
    required TResult Function() faker,
  }) {
    return deleted(labelDoubleAmount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LabelDoubleAmount labelDoubleAmount)? deleted,
    TResult? Function()? faker,
  }) {
    return deleted?.call(labelDoubleAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LabelDoubleAmount labelDoubleAmount)? deleted,
    TResult Function()? faker,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(labelDoubleAmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteLabelDoubleAmount value) deleted,
    required TResult Function(_FakeLabelDoubleAmount value) faker,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteLabelDoubleAmount value)? deleted,
    TResult? Function(_FakeLabelDoubleAmount value)? faker,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteLabelDoubleAmount value)? deleted,
    TResult Function(_FakeLabelDoubleAmount value)? faker,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _DeleteLabelDoubleAmount implements LabelDoubleAmountActorEvent {
  const factory _DeleteLabelDoubleAmount(
          final LabelDoubleAmount labelDoubleAmount) =
      _$DeleteLabelDoubleAmountImpl;

  LabelDoubleAmount get labelDoubleAmount;
  @JsonKey(ignore: true)
  _$$DeleteLabelDoubleAmountImplCopyWith<_$DeleteLabelDoubleAmountImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FakeLabelDoubleAmountImplCopyWith<$Res> {
  factory _$$FakeLabelDoubleAmountImplCopyWith(
          _$FakeLabelDoubleAmountImpl value,
          $Res Function(_$FakeLabelDoubleAmountImpl) then) =
      __$$FakeLabelDoubleAmountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FakeLabelDoubleAmountImplCopyWithImpl<$Res>
    extends _$LabelDoubleAmountActorEventCopyWithImpl<$Res,
        _$FakeLabelDoubleAmountImpl>
    implements _$$FakeLabelDoubleAmountImplCopyWith<$Res> {
  __$$FakeLabelDoubleAmountImplCopyWithImpl(_$FakeLabelDoubleAmountImpl _value,
      $Res Function(_$FakeLabelDoubleAmountImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FakeLabelDoubleAmountImpl implements _FakeLabelDoubleAmount {
  const _$FakeLabelDoubleAmountImpl();

  @override
  String toString() {
    return 'LabelDoubleAmountActorEvent.faker()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FakeLabelDoubleAmountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LabelDoubleAmount labelDoubleAmount) deleted,
    required TResult Function() faker,
  }) {
    return faker();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LabelDoubleAmount labelDoubleAmount)? deleted,
    TResult? Function()? faker,
  }) {
    return faker?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LabelDoubleAmount labelDoubleAmount)? deleted,
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
    required TResult Function(_DeleteLabelDoubleAmount value) deleted,
    required TResult Function(_FakeLabelDoubleAmount value) faker,
  }) {
    return faker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteLabelDoubleAmount value)? deleted,
    TResult? Function(_FakeLabelDoubleAmount value)? faker,
  }) {
    return faker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteLabelDoubleAmount value)? deleted,
    TResult Function(_FakeLabelDoubleAmount value)? faker,
    required TResult orElse(),
  }) {
    if (faker != null) {
      return faker(this);
    }
    return orElse();
  }
}

abstract class _FakeLabelDoubleAmount implements LabelDoubleAmountActorEvent {
  const factory _FakeLabelDoubleAmount() = _$FakeLabelDoubleAmountImpl;
}

/// @nodoc
mixin _$LabelDoubleAmountActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)
        fakeFailure,
    required TResult Function() fakeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        fakeFailure,
    TResult? Function()? fakeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        fakeFailure,
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
abstract class $LabelDoubleAmountActorStateCopyWith<$Res> {
  factory $LabelDoubleAmountActorStateCopyWith(
          LabelDoubleAmountActorState value,
          $Res Function(LabelDoubleAmountActorState) then) =
      _$LabelDoubleAmountActorStateCopyWithImpl<$Res,
          LabelDoubleAmountActorState>;
}

/// @nodoc
class _$LabelDoubleAmountActorStateCopyWithImpl<$Res,
        $Val extends LabelDoubleAmountActorState>
    implements $LabelDoubleAmountActorStateCopyWith<$Res> {
  _$LabelDoubleAmountActorStateCopyWithImpl(this._value, this._then);

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
    extends _$LabelDoubleAmountActorStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'LabelDoubleAmountActorState.initial()';
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
    required TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)
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
    TResult? Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        fakeFailure,
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

abstract class _Initial implements LabelDoubleAmountActorState {
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
    extends _$LabelDoubleAmountActorStateCopyWithImpl<$Res,
        _$ActionInProgressImpl>
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
    return 'LabelDoubleAmountActorState.actionInProgress()';
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
    required TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)
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
    TResult? Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        fakeFailure,
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

abstract class _ActionInProgress implements LabelDoubleAmountActorState {
  const factory _ActionInProgress() = _$ActionInProgressImpl;
}

/// @nodoc
abstract class _$$DeleteFailureImplCopyWith<$Res> {
  factory _$$DeleteFailureImplCopyWith(
          _$DeleteFailureImpl value, $Res Function(_$DeleteFailureImpl) then) =
      __$$DeleteFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LabelDoubleAmountFailure labelDoubleAmountFailure});

  $LabelDoubleAmountFailureCopyWith<$Res> get labelDoubleAmountFailure;
}

/// @nodoc
class __$$DeleteFailureImplCopyWithImpl<$Res>
    extends _$LabelDoubleAmountActorStateCopyWithImpl<$Res, _$DeleteFailureImpl>
    implements _$$DeleteFailureImplCopyWith<$Res> {
  __$$DeleteFailureImplCopyWithImpl(
      _$DeleteFailureImpl _value, $Res Function(_$DeleteFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelDoubleAmountFailure = null,
  }) {
    return _then(_$DeleteFailureImpl(
      null == labelDoubleAmountFailure
          ? _value.labelDoubleAmountFailure
          : labelDoubleAmountFailure // ignore: cast_nullable_to_non_nullable
              as LabelDoubleAmountFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LabelDoubleAmountFailureCopyWith<$Res> get labelDoubleAmountFailure {
    return $LabelDoubleAmountFailureCopyWith<$Res>(
        _value.labelDoubleAmountFailure, (value) {
      return _then(_value.copyWith(labelDoubleAmountFailure: value));
    });
  }
}

/// @nodoc

class _$DeleteFailureImpl implements _DeleteFailure {
  const _$DeleteFailureImpl(this.labelDoubleAmountFailure);

  @override
  final LabelDoubleAmountFailure labelDoubleAmountFailure;

  @override
  String toString() {
    return 'LabelDoubleAmountActorState.deleteFailure(labelDoubleAmountFailure: $labelDoubleAmountFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFailureImpl &&
            (identical(
                    other.labelDoubleAmountFailure, labelDoubleAmountFailure) ||
                other.labelDoubleAmountFailure == labelDoubleAmountFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, labelDoubleAmountFailure);

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
    required TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)
        fakeFailure,
    required TResult Function() fakeSuccess,
  }) {
    return deleteFailure(labelDoubleAmountFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return deleteFailure?.call(labelDoubleAmountFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        fakeFailure,
    TResult Function()? fakeSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(labelDoubleAmountFailure);
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

abstract class _DeleteFailure implements LabelDoubleAmountActorState {
  const factory _DeleteFailure(
          final LabelDoubleAmountFailure labelDoubleAmountFailure) =
      _$DeleteFailureImpl;

  LabelDoubleAmountFailure get labelDoubleAmountFailure;
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
    extends _$LabelDoubleAmountActorStateCopyWithImpl<$Res, _$DeleteSuccessImpl>
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
    return 'LabelDoubleAmountActorState.deleteSuccess()';
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
    required TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)
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
    TResult? Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        fakeFailure,
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

abstract class _DeleteSuccess implements LabelDoubleAmountActorState {
  const factory _DeleteSuccess() = _$DeleteSuccessImpl;
}

/// @nodoc
abstract class _$$FakeFailureImplCopyWith<$Res> {
  factory _$$FakeFailureImplCopyWith(
          _$FakeFailureImpl value, $Res Function(_$FakeFailureImpl) then) =
      __$$FakeFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LabelDoubleAmountFailure labelDoubleAmountFailure});

  $LabelDoubleAmountFailureCopyWith<$Res> get labelDoubleAmountFailure;
}

/// @nodoc
class __$$FakeFailureImplCopyWithImpl<$Res>
    extends _$LabelDoubleAmountActorStateCopyWithImpl<$Res, _$FakeFailureImpl>
    implements _$$FakeFailureImplCopyWith<$Res> {
  __$$FakeFailureImplCopyWithImpl(
      _$FakeFailureImpl _value, $Res Function(_$FakeFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelDoubleAmountFailure = null,
  }) {
    return _then(_$FakeFailureImpl(
      null == labelDoubleAmountFailure
          ? _value.labelDoubleAmountFailure
          : labelDoubleAmountFailure // ignore: cast_nullable_to_non_nullable
              as LabelDoubleAmountFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LabelDoubleAmountFailureCopyWith<$Res> get labelDoubleAmountFailure {
    return $LabelDoubleAmountFailureCopyWith<$Res>(
        _value.labelDoubleAmountFailure, (value) {
      return _then(_value.copyWith(labelDoubleAmountFailure: value));
    });
  }
}

/// @nodoc

class _$FakeFailureImpl implements _FakeFailure {
  const _$FakeFailureImpl(this.labelDoubleAmountFailure);

  @override
  final LabelDoubleAmountFailure labelDoubleAmountFailure;

  @override
  String toString() {
    return 'LabelDoubleAmountActorState.fakeFailure(labelDoubleAmountFailure: $labelDoubleAmountFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FakeFailureImpl &&
            (identical(
                    other.labelDoubleAmountFailure, labelDoubleAmountFailure) ||
                other.labelDoubleAmountFailure == labelDoubleAmountFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, labelDoubleAmountFailure);

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
    required TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)
        fakeFailure,
    required TResult Function() fakeSuccess,
  }) {
    return fakeFailure(labelDoubleAmountFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return fakeFailure?.call(labelDoubleAmountFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        fakeFailure,
    TResult Function()? fakeSuccess,
    required TResult orElse(),
  }) {
    if (fakeFailure != null) {
      return fakeFailure(labelDoubleAmountFailure);
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

abstract class _FakeFailure implements LabelDoubleAmountActorState {
  const factory _FakeFailure(
          final LabelDoubleAmountFailure labelDoubleAmountFailure) =
      _$FakeFailureImpl;

  LabelDoubleAmountFailure get labelDoubleAmountFailure;
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
    extends _$LabelDoubleAmountActorStateCopyWithImpl<$Res, _$FakeSuccessImpl>
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
    return 'LabelDoubleAmountActorState.fakeSuccess()';
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
    required TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)
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
    TResult? Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return fakeSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(LabelDoubleAmountFailure labelDoubleAmountFailure)?
        fakeFailure,
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

abstract class _FakeSuccess implements LabelDoubleAmountActorState {
  const factory _FakeSuccess() = _$FakeSuccessImpl;
}
