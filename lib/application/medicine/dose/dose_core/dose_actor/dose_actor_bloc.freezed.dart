// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dose_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DoseActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Dose dose) deleted,
    required TResult Function() faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dose dose)? deleted,
    TResult? Function()? faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dose dose)? deleted,
    TResult Function()? faker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteDose value) deleted,
    required TResult Function(_FakeDose value) faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteDose value)? deleted,
    TResult? Function(_FakeDose value)? faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteDose value)? deleted,
    TResult Function(_FakeDose value)? faker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoseActorEventCopyWith<$Res> {
  factory $DoseActorEventCopyWith(
          DoseActorEvent value, $Res Function(DoseActorEvent) then) =
      _$DoseActorEventCopyWithImpl<$Res, DoseActorEvent>;
}

/// @nodoc
class _$DoseActorEventCopyWithImpl<$Res, $Val extends DoseActorEvent>
    implements $DoseActorEventCopyWith<$Res> {
  _$DoseActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DeleteDoseImplCopyWith<$Res> {
  factory _$$DeleteDoseImplCopyWith(
          _$DeleteDoseImpl value, $Res Function(_$DeleteDoseImpl) then) =
      __$$DeleteDoseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Dose dose});

  $DoseCopyWith<$Res> get dose;
}

/// @nodoc
class __$$DeleteDoseImplCopyWithImpl<$Res>
    extends _$DoseActorEventCopyWithImpl<$Res, _$DeleteDoseImpl>
    implements _$$DeleteDoseImplCopyWith<$Res> {
  __$$DeleteDoseImplCopyWithImpl(
      _$DeleteDoseImpl _value, $Res Function(_$DeleteDoseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dose = null,
  }) {
    return _then(_$DeleteDoseImpl(
      null == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as Dose,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DoseCopyWith<$Res> get dose {
    return $DoseCopyWith<$Res>(_value.dose, (value) {
      return _then(_value.copyWith(dose: value));
    });
  }
}

/// @nodoc

class _$DeleteDoseImpl implements _DeleteDose {
  const _$DeleteDoseImpl(this.dose);

  @override
  final Dose dose;

  @override
  String toString() {
    return 'DoseActorEvent.deleted(dose: $dose)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteDoseImpl &&
            (identical(other.dose, dose) || other.dose == dose));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dose);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteDoseImplCopyWith<_$DeleteDoseImpl> get copyWith =>
      __$$DeleteDoseImplCopyWithImpl<_$DeleteDoseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Dose dose) deleted,
    required TResult Function() faker,
  }) {
    return deleted(dose);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dose dose)? deleted,
    TResult? Function()? faker,
  }) {
    return deleted?.call(dose);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dose dose)? deleted,
    TResult Function()? faker,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(dose);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteDose value) deleted,
    required TResult Function(_FakeDose value) faker,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteDose value)? deleted,
    TResult? Function(_FakeDose value)? faker,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteDose value)? deleted,
    TResult Function(_FakeDose value)? faker,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _DeleteDose implements DoseActorEvent {
  const factory _DeleteDose(final Dose dose) = _$DeleteDoseImpl;

  Dose get dose;
  @JsonKey(ignore: true)
  _$$DeleteDoseImplCopyWith<_$DeleteDoseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FakeDoseImplCopyWith<$Res> {
  factory _$$FakeDoseImplCopyWith(
          _$FakeDoseImpl value, $Res Function(_$FakeDoseImpl) then) =
      __$$FakeDoseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FakeDoseImplCopyWithImpl<$Res>
    extends _$DoseActorEventCopyWithImpl<$Res, _$FakeDoseImpl>
    implements _$$FakeDoseImplCopyWith<$Res> {
  __$$FakeDoseImplCopyWithImpl(
      _$FakeDoseImpl _value, $Res Function(_$FakeDoseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FakeDoseImpl implements _FakeDose {
  const _$FakeDoseImpl();

  @override
  String toString() {
    return 'DoseActorEvent.faker()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FakeDoseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Dose dose) deleted,
    required TResult Function() faker,
  }) {
    return faker();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dose dose)? deleted,
    TResult? Function()? faker,
  }) {
    return faker?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dose dose)? deleted,
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
    required TResult Function(_DeleteDose value) deleted,
    required TResult Function(_FakeDose value) faker,
  }) {
    return faker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteDose value)? deleted,
    TResult? Function(_FakeDose value)? faker,
  }) {
    return faker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteDose value)? deleted,
    TResult Function(_FakeDose value)? faker,
    required TResult orElse(),
  }) {
    if (faker != null) {
      return faker(this);
    }
    return orElse();
  }
}

abstract class _FakeDose implements DoseActorEvent {
  const factory _FakeDose() = _$FakeDoseImpl;
}

/// @nodoc
mixin _$DoseActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(DoseFailures doseFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(DoseFailures doseFailure) fakeFailure,
    required TResult Function() fakeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DoseFailures doseFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(DoseFailures doseFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DoseFailures doseFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(DoseFailures doseFailure)? fakeFailure,
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
abstract class $DoseActorStateCopyWith<$Res> {
  factory $DoseActorStateCopyWith(
          DoseActorState value, $Res Function(DoseActorState) then) =
      _$DoseActorStateCopyWithImpl<$Res, DoseActorState>;
}

/// @nodoc
class _$DoseActorStateCopyWithImpl<$Res, $Val extends DoseActorState>
    implements $DoseActorStateCopyWith<$Res> {
  _$DoseActorStateCopyWithImpl(this._value, this._then);

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
    extends _$DoseActorStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'DoseActorState.initial()';
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
    required TResult Function(DoseFailures doseFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(DoseFailures doseFailure) fakeFailure,
    required TResult Function() fakeSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DoseFailures doseFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(DoseFailures doseFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DoseFailures doseFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(DoseFailures doseFailure)? fakeFailure,
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

abstract class _Initial implements DoseActorState {
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
    extends _$DoseActorStateCopyWithImpl<$Res, _$ActionInProgressImpl>
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
    return 'DoseActorState.actionInProgress()';
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
    required TResult Function(DoseFailures doseFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(DoseFailures doseFailure) fakeFailure,
    required TResult Function() fakeSuccess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DoseFailures doseFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(DoseFailures doseFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DoseFailures doseFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(DoseFailures doseFailure)? fakeFailure,
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

abstract class _ActionInProgress implements DoseActorState {
  const factory _ActionInProgress() = _$ActionInProgressImpl;
}

/// @nodoc
abstract class _$$DeleteFailureImplCopyWith<$Res> {
  factory _$$DeleteFailureImplCopyWith(
          _$DeleteFailureImpl value, $Res Function(_$DeleteFailureImpl) then) =
      __$$DeleteFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DoseFailures doseFailure});

  $DoseFailuresCopyWith<$Res> get doseFailure;
}

/// @nodoc
class __$$DeleteFailureImplCopyWithImpl<$Res>
    extends _$DoseActorStateCopyWithImpl<$Res, _$DeleteFailureImpl>
    implements _$$DeleteFailureImplCopyWith<$Res> {
  __$$DeleteFailureImplCopyWithImpl(
      _$DeleteFailureImpl _value, $Res Function(_$DeleteFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doseFailure = null,
  }) {
    return _then(_$DeleteFailureImpl(
      null == doseFailure
          ? _value.doseFailure
          : doseFailure // ignore: cast_nullable_to_non_nullable
              as DoseFailures,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DoseFailuresCopyWith<$Res> get doseFailure {
    return $DoseFailuresCopyWith<$Res>(_value.doseFailure, (value) {
      return _then(_value.copyWith(doseFailure: value));
    });
  }
}

/// @nodoc

class _$DeleteFailureImpl implements _DeleteFailure {
  const _$DeleteFailureImpl(this.doseFailure);

  @override
  final DoseFailures doseFailure;

  @override
  String toString() {
    return 'DoseActorState.deleteFailure(doseFailure: $doseFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFailureImpl &&
            (identical(other.doseFailure, doseFailure) ||
                other.doseFailure == doseFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doseFailure);

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
    required TResult Function(DoseFailures doseFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(DoseFailures doseFailure) fakeFailure,
    required TResult Function() fakeSuccess,
  }) {
    return deleteFailure(doseFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DoseFailures doseFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(DoseFailures doseFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return deleteFailure?.call(doseFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DoseFailures doseFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(DoseFailures doseFailure)? fakeFailure,
    TResult Function()? fakeSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(doseFailure);
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

abstract class _DeleteFailure implements DoseActorState {
  const factory _DeleteFailure(final DoseFailures doseFailure) =
      _$DeleteFailureImpl;

  DoseFailures get doseFailure;
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
    extends _$DoseActorStateCopyWithImpl<$Res, _$DeleteSuccessImpl>
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
    return 'DoseActorState.deleteSuccess()';
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
    required TResult Function(DoseFailures doseFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(DoseFailures doseFailure) fakeFailure,
    required TResult Function() fakeSuccess,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DoseFailures doseFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(DoseFailures doseFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DoseFailures doseFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(DoseFailures doseFailure)? fakeFailure,
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

abstract class _DeleteSuccess implements DoseActorState {
  const factory _DeleteSuccess() = _$DeleteSuccessImpl;
}

/// @nodoc
abstract class _$$FakeFailureImplCopyWith<$Res> {
  factory _$$FakeFailureImplCopyWith(
          _$FakeFailureImpl value, $Res Function(_$FakeFailureImpl) then) =
      __$$FakeFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DoseFailures doseFailure});

  $DoseFailuresCopyWith<$Res> get doseFailure;
}

/// @nodoc
class __$$FakeFailureImplCopyWithImpl<$Res>
    extends _$DoseActorStateCopyWithImpl<$Res, _$FakeFailureImpl>
    implements _$$FakeFailureImplCopyWith<$Res> {
  __$$FakeFailureImplCopyWithImpl(
      _$FakeFailureImpl _value, $Res Function(_$FakeFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doseFailure = null,
  }) {
    return _then(_$FakeFailureImpl(
      null == doseFailure
          ? _value.doseFailure
          : doseFailure // ignore: cast_nullable_to_non_nullable
              as DoseFailures,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DoseFailuresCopyWith<$Res> get doseFailure {
    return $DoseFailuresCopyWith<$Res>(_value.doseFailure, (value) {
      return _then(_value.copyWith(doseFailure: value));
    });
  }
}

/// @nodoc

class _$FakeFailureImpl implements _FakeFailure {
  const _$FakeFailureImpl(this.doseFailure);

  @override
  final DoseFailures doseFailure;

  @override
  String toString() {
    return 'DoseActorState.fakeFailure(doseFailure: $doseFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FakeFailureImpl &&
            (identical(other.doseFailure, doseFailure) ||
                other.doseFailure == doseFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doseFailure);

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
    required TResult Function(DoseFailures doseFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(DoseFailures doseFailure) fakeFailure,
    required TResult Function() fakeSuccess,
  }) {
    return fakeFailure(doseFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DoseFailures doseFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(DoseFailures doseFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return fakeFailure?.call(doseFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DoseFailures doseFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(DoseFailures doseFailure)? fakeFailure,
    TResult Function()? fakeSuccess,
    required TResult orElse(),
  }) {
    if (fakeFailure != null) {
      return fakeFailure(doseFailure);
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

abstract class _FakeFailure implements DoseActorState {
  const factory _FakeFailure(final DoseFailures doseFailure) =
      _$FakeFailureImpl;

  DoseFailures get doseFailure;
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
    extends _$DoseActorStateCopyWithImpl<$Res, _$FakeSuccessImpl>
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
    return 'DoseActorState.fakeSuccess()';
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
    required TResult Function(DoseFailures doseFailure) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(DoseFailures doseFailure) fakeFailure,
    required TResult Function() fakeSuccess,
  }) {
    return fakeSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DoseFailures doseFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(DoseFailures doseFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return fakeSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DoseFailures doseFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(DoseFailures doseFailure)? fakeFailure,
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

abstract class _FakeSuccess implements DoseActorState {
  const factory _FakeSuccess() = _$FakeSuccessImpl;
}
