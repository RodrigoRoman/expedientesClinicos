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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_DeleteLabelDoubleAmountCopyWith<$Res> {
  factory _$$_DeleteLabelDoubleAmountCopyWith(_$_DeleteLabelDoubleAmount value,
          $Res Function(_$_DeleteLabelDoubleAmount) then) =
      __$$_DeleteLabelDoubleAmountCopyWithImpl<$Res>;
  @useResult
  $Res call({LabelDoubleAmount labelDoubleAmount});

  $LabelDoubleAmountCopyWith<$Res> get labelDoubleAmount;
}

/// @nodoc
class __$$_DeleteLabelDoubleAmountCopyWithImpl<$Res>
    extends _$LabelDoubleAmountActorEventCopyWithImpl<$Res,
        _$_DeleteLabelDoubleAmount>
    implements _$$_DeleteLabelDoubleAmountCopyWith<$Res> {
  __$$_DeleteLabelDoubleAmountCopyWithImpl(_$_DeleteLabelDoubleAmount _value,
      $Res Function(_$_DeleteLabelDoubleAmount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelDoubleAmount = null,
  }) {
    return _then(_$_DeleteLabelDoubleAmount(
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

class _$_DeleteLabelDoubleAmount implements _DeleteLabelDoubleAmount {
  const _$_DeleteLabelDoubleAmount(this.labelDoubleAmount);

  @override
  final LabelDoubleAmount labelDoubleAmount;

  @override
  String toString() {
    return 'LabelDoubleAmountActorEvent.deleted(labelDoubleAmount: $labelDoubleAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteLabelDoubleAmount &&
            (identical(other.labelDoubleAmount, labelDoubleAmount) ||
                other.labelDoubleAmount == labelDoubleAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, labelDoubleAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteLabelDoubleAmountCopyWith<_$_DeleteLabelDoubleAmount>
      get copyWith =>
          __$$_DeleteLabelDoubleAmountCopyWithImpl<_$_DeleteLabelDoubleAmount>(
              this, _$identity);

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
      final LabelDoubleAmount labelDoubleAmount) = _$_DeleteLabelDoubleAmount;

  LabelDoubleAmount get labelDoubleAmount;
  @JsonKey(ignore: true)
  _$$_DeleteLabelDoubleAmountCopyWith<_$_DeleteLabelDoubleAmount>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FakeLabelDoubleAmountCopyWith<$Res> {
  factory _$$_FakeLabelDoubleAmountCopyWith(_$_FakeLabelDoubleAmount value,
          $Res Function(_$_FakeLabelDoubleAmount) then) =
      __$$_FakeLabelDoubleAmountCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FakeLabelDoubleAmountCopyWithImpl<$Res>
    extends _$LabelDoubleAmountActorEventCopyWithImpl<$Res,
        _$_FakeLabelDoubleAmount>
    implements _$$_FakeLabelDoubleAmountCopyWith<$Res> {
  __$$_FakeLabelDoubleAmountCopyWithImpl(_$_FakeLabelDoubleAmount _value,
      $Res Function(_$_FakeLabelDoubleAmount) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FakeLabelDoubleAmount implements _FakeLabelDoubleAmount {
  const _$_FakeLabelDoubleAmount();

  @override
  String toString() {
    return 'LabelDoubleAmountActorEvent.faker()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FakeLabelDoubleAmount);
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
  const factory _FakeLabelDoubleAmount() = _$_FakeLabelDoubleAmount;
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
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$LabelDoubleAmountActorStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'LabelDoubleAmountActorState.initial()';
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
    extends _$LabelDoubleAmountActorStateCopyWithImpl<$Res, _$_ActionInProgress>
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
    return 'LabelDoubleAmountActorState.actionInProgress()';
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
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$$_DeleteFailureCopyWith<$Res> {
  factory _$$_DeleteFailureCopyWith(
          _$_DeleteFailure value, $Res Function(_$_DeleteFailure) then) =
      __$$_DeleteFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({LabelDoubleAmountFailure labelDoubleAmountFailure});

  $LabelDoubleAmountFailureCopyWith<$Res> get labelDoubleAmountFailure;
}

/// @nodoc
class __$$_DeleteFailureCopyWithImpl<$Res>
    extends _$LabelDoubleAmountActorStateCopyWithImpl<$Res, _$_DeleteFailure>
    implements _$$_DeleteFailureCopyWith<$Res> {
  __$$_DeleteFailureCopyWithImpl(
      _$_DeleteFailure _value, $Res Function(_$_DeleteFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelDoubleAmountFailure = null,
  }) {
    return _then(_$_DeleteFailure(
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

class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.labelDoubleAmountFailure);

  @override
  final LabelDoubleAmountFailure labelDoubleAmountFailure;

  @override
  String toString() {
    return 'LabelDoubleAmountActorState.deleteFailure(labelDoubleAmountFailure: $labelDoubleAmountFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteFailure &&
            (identical(
                    other.labelDoubleAmountFailure, labelDoubleAmountFailure) ||
                other.labelDoubleAmountFailure == labelDoubleAmountFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, labelDoubleAmountFailure);

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
      _$_DeleteFailure;

  LabelDoubleAmountFailure get labelDoubleAmountFailure;
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
    extends _$LabelDoubleAmountActorStateCopyWithImpl<$Res, _$_DeleteSuccess>
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
    return 'LabelDoubleAmountActorState.deleteSuccess()';
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
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}

/// @nodoc
abstract class _$$_FakeFailureCopyWith<$Res> {
  factory _$$_FakeFailureCopyWith(
          _$_FakeFailure value, $Res Function(_$_FakeFailure) then) =
      __$$_FakeFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({LabelDoubleAmountFailure labelDoubleAmountFailure});

  $LabelDoubleAmountFailureCopyWith<$Res> get labelDoubleAmountFailure;
}

/// @nodoc
class __$$_FakeFailureCopyWithImpl<$Res>
    extends _$LabelDoubleAmountActorStateCopyWithImpl<$Res, _$_FakeFailure>
    implements _$$_FakeFailureCopyWith<$Res> {
  __$$_FakeFailureCopyWithImpl(
      _$_FakeFailure _value, $Res Function(_$_FakeFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelDoubleAmountFailure = null,
  }) {
    return _then(_$_FakeFailure(
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

class _$_FakeFailure implements _FakeFailure {
  const _$_FakeFailure(this.labelDoubleAmountFailure);

  @override
  final LabelDoubleAmountFailure labelDoubleAmountFailure;

  @override
  String toString() {
    return 'LabelDoubleAmountActorState.fakeFailure(labelDoubleAmountFailure: $labelDoubleAmountFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FakeFailure &&
            (identical(
                    other.labelDoubleAmountFailure, labelDoubleAmountFailure) ||
                other.labelDoubleAmountFailure == labelDoubleAmountFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, labelDoubleAmountFailure);

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
      final LabelDoubleAmountFailure labelDoubleAmountFailure) = _$_FakeFailure;

  LabelDoubleAmountFailure get labelDoubleAmountFailure;
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
    extends _$LabelDoubleAmountActorStateCopyWithImpl<$Res, _$_FakeSuccess>
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
    return 'LabelDoubleAmountActorState.fakeSuccess()';
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
  const factory _FakeSuccess() = _$_FakeSuccess;
}
