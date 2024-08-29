// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branded_medicine_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BrandedMedicineActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BrandedMedicine medicine) deleted,
    required TResult Function() faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BrandedMedicine medicine)? deleted,
    TResult? Function()? faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BrandedMedicine medicine)? deleted,
    TResult Function()? faker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteMedicine value) deleted,
    required TResult Function(_FakeMedicine value) faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteMedicine value)? deleted,
    TResult? Function(_FakeMedicine value)? faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteMedicine value)? deleted,
    TResult Function(_FakeMedicine value)? faker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandedMedicineActorEventCopyWith<$Res> {
  factory $BrandedMedicineActorEventCopyWith(BrandedMedicineActorEvent value,
          $Res Function(BrandedMedicineActorEvent) then) =
      _$BrandedMedicineActorEventCopyWithImpl<$Res, BrandedMedicineActorEvent>;
}

/// @nodoc
class _$BrandedMedicineActorEventCopyWithImpl<$Res,
        $Val extends BrandedMedicineActorEvent>
    implements $BrandedMedicineActorEventCopyWith<$Res> {
  _$BrandedMedicineActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DeleteMedicineImplCopyWith<$Res> {
  factory _$$DeleteMedicineImplCopyWith(_$DeleteMedicineImpl value,
          $Res Function(_$DeleteMedicineImpl) then) =
      __$$DeleteMedicineImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BrandedMedicine medicine});

  $BrandedMedicineCopyWith<$Res> get medicine;
}

/// @nodoc
class __$$DeleteMedicineImplCopyWithImpl<$Res>
    extends _$BrandedMedicineActorEventCopyWithImpl<$Res, _$DeleteMedicineImpl>
    implements _$$DeleteMedicineImplCopyWith<$Res> {
  __$$DeleteMedicineImplCopyWithImpl(
      _$DeleteMedicineImpl _value, $Res Function(_$DeleteMedicineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicine = null,
  }) {
    return _then(_$DeleteMedicineImpl(
      null == medicine
          ? _value.medicine
          : medicine // ignore: cast_nullable_to_non_nullable
              as BrandedMedicine,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandedMedicineCopyWith<$Res> get medicine {
    return $BrandedMedicineCopyWith<$Res>(_value.medicine, (value) {
      return _then(_value.copyWith(medicine: value));
    });
  }
}

/// @nodoc

class _$DeleteMedicineImpl implements _DeleteMedicine {
  const _$DeleteMedicineImpl(this.medicine);

  @override
  final BrandedMedicine medicine;

  @override
  String toString() {
    return 'BrandedMedicineActorEvent.deleted(medicine: $medicine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMedicineImpl &&
            (identical(other.medicine, medicine) ||
                other.medicine == medicine));
  }

  @override
  int get hashCode => Object.hash(runtimeType, medicine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMedicineImplCopyWith<_$DeleteMedicineImpl> get copyWith =>
      __$$DeleteMedicineImplCopyWithImpl<_$DeleteMedicineImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BrandedMedicine medicine) deleted,
    required TResult Function() faker,
  }) {
    return deleted(medicine);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BrandedMedicine medicine)? deleted,
    TResult? Function()? faker,
  }) {
    return deleted?.call(medicine);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BrandedMedicine medicine)? deleted,
    TResult Function()? faker,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(medicine);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteMedicine value) deleted,
    required TResult Function(_FakeMedicine value) faker,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteMedicine value)? deleted,
    TResult? Function(_FakeMedicine value)? faker,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteMedicine value)? deleted,
    TResult Function(_FakeMedicine value)? faker,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _DeleteMedicine implements BrandedMedicineActorEvent {
  const factory _DeleteMedicine(final BrandedMedicine medicine) =
      _$DeleteMedicineImpl;

  BrandedMedicine get medicine;
  @JsonKey(ignore: true)
  _$$DeleteMedicineImplCopyWith<_$DeleteMedicineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FakeMedicineImplCopyWith<$Res> {
  factory _$$FakeMedicineImplCopyWith(
          _$FakeMedicineImpl value, $Res Function(_$FakeMedicineImpl) then) =
      __$$FakeMedicineImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FakeMedicineImplCopyWithImpl<$Res>
    extends _$BrandedMedicineActorEventCopyWithImpl<$Res, _$FakeMedicineImpl>
    implements _$$FakeMedicineImplCopyWith<$Res> {
  __$$FakeMedicineImplCopyWithImpl(
      _$FakeMedicineImpl _value, $Res Function(_$FakeMedicineImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FakeMedicineImpl implements _FakeMedicine {
  const _$FakeMedicineImpl();

  @override
  String toString() {
    return 'BrandedMedicineActorEvent.faker()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FakeMedicineImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BrandedMedicine medicine) deleted,
    required TResult Function() faker,
  }) {
    return faker();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BrandedMedicine medicine)? deleted,
    TResult? Function()? faker,
  }) {
    return faker?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BrandedMedicine medicine)? deleted,
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
    required TResult Function(_DeleteMedicine value) deleted,
    required TResult Function(_FakeMedicine value) faker,
  }) {
    return faker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteMedicine value)? deleted,
    TResult? Function(_FakeMedicine value)? faker,
  }) {
    return faker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteMedicine value)? deleted,
    TResult Function(_FakeMedicine value)? faker,
    required TResult orElse(),
  }) {
    if (faker != null) {
      return faker(this);
    }
    return orElse();
  }
}

abstract class _FakeMedicine implements BrandedMedicineActorEvent {
  const factory _FakeMedicine() = _$FakeMedicineImpl;
}

/// @nodoc
mixin _$BrandedMedicineActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(BrandedMedicineFailures medicineFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(BrandedMedicineFailures medicineFailure)
        fakeFailure,
    required TResult Function() fakeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(BrandedMedicineFailures medicineFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(BrandedMedicineFailures medicineFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(BrandedMedicineFailures medicineFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(BrandedMedicineFailures medicineFailure)? fakeFailure,
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
abstract class $BrandedMedicineActorStateCopyWith<$Res> {
  factory $BrandedMedicineActorStateCopyWith(BrandedMedicineActorState value,
          $Res Function(BrandedMedicineActorState) then) =
      _$BrandedMedicineActorStateCopyWithImpl<$Res, BrandedMedicineActorState>;
}

/// @nodoc
class _$BrandedMedicineActorStateCopyWithImpl<$Res,
        $Val extends BrandedMedicineActorState>
    implements $BrandedMedicineActorStateCopyWith<$Res> {
  _$BrandedMedicineActorStateCopyWithImpl(this._value, this._then);

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
    extends _$BrandedMedicineActorStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'BrandedMedicineActorState.initial()';
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
    required TResult Function(BrandedMedicineFailures medicineFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(BrandedMedicineFailures medicineFailure)
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
    TResult? Function(BrandedMedicineFailures medicineFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(BrandedMedicineFailures medicineFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(BrandedMedicineFailures medicineFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(BrandedMedicineFailures medicineFailure)? fakeFailure,
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

abstract class _Initial implements BrandedMedicineActorState {
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
    extends _$BrandedMedicineActorStateCopyWithImpl<$Res,
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
    return 'BrandedMedicineActorState.actionInProgress()';
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
    required TResult Function(BrandedMedicineFailures medicineFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(BrandedMedicineFailures medicineFailure)
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
    TResult? Function(BrandedMedicineFailures medicineFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(BrandedMedicineFailures medicineFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(BrandedMedicineFailures medicineFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(BrandedMedicineFailures medicineFailure)? fakeFailure,
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

abstract class _ActionInProgress implements BrandedMedicineActorState {
  const factory _ActionInProgress() = _$ActionInProgressImpl;
}

/// @nodoc
abstract class _$$DeleteFailureImplCopyWith<$Res> {
  factory _$$DeleteFailureImplCopyWith(
          _$DeleteFailureImpl value, $Res Function(_$DeleteFailureImpl) then) =
      __$$DeleteFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BrandedMedicineFailures medicineFailure});

  $BrandedMedicineFailuresCopyWith<$Res> get medicineFailure;
}

/// @nodoc
class __$$DeleteFailureImplCopyWithImpl<$Res>
    extends _$BrandedMedicineActorStateCopyWithImpl<$Res, _$DeleteFailureImpl>
    implements _$$DeleteFailureImplCopyWith<$Res> {
  __$$DeleteFailureImplCopyWithImpl(
      _$DeleteFailureImpl _value, $Res Function(_$DeleteFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicineFailure = null,
  }) {
    return _then(_$DeleteFailureImpl(
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

class _$DeleteFailureImpl implements _DeleteFailure {
  const _$DeleteFailureImpl(this.medicineFailure);

  @override
  final BrandedMedicineFailures medicineFailure;

  @override
  String toString() {
    return 'BrandedMedicineActorState.deleteFailure(medicineFailure: $medicineFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFailureImpl &&
            (identical(other.medicineFailure, medicineFailure) ||
                other.medicineFailure == medicineFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, medicineFailure);

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
    required TResult Function(BrandedMedicineFailures medicineFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(BrandedMedicineFailures medicineFailure)
        fakeFailure,
    required TResult Function() fakeSuccess,
  }) {
    return deleteFailure(medicineFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(BrandedMedicineFailures medicineFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(BrandedMedicineFailures medicineFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return deleteFailure?.call(medicineFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(BrandedMedicineFailures medicineFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(BrandedMedicineFailures medicineFailure)? fakeFailure,
    TResult Function()? fakeSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(medicineFailure);
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

abstract class _DeleteFailure implements BrandedMedicineActorState {
  const factory _DeleteFailure(final BrandedMedicineFailures medicineFailure) =
      _$DeleteFailureImpl;

  BrandedMedicineFailures get medicineFailure;
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
    extends _$BrandedMedicineActorStateCopyWithImpl<$Res, _$DeleteSuccessImpl>
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
    return 'BrandedMedicineActorState.deleteSuccess()';
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
    required TResult Function(BrandedMedicineFailures medicineFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(BrandedMedicineFailures medicineFailure)
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
    TResult? Function(BrandedMedicineFailures medicineFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(BrandedMedicineFailures medicineFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(BrandedMedicineFailures medicineFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(BrandedMedicineFailures medicineFailure)? fakeFailure,
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

abstract class _DeleteSuccess implements BrandedMedicineActorState {
  const factory _DeleteSuccess() = _$DeleteSuccessImpl;
}

/// @nodoc
abstract class _$$FakeFailureImplCopyWith<$Res> {
  factory _$$FakeFailureImplCopyWith(
          _$FakeFailureImpl value, $Res Function(_$FakeFailureImpl) then) =
      __$$FakeFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BrandedMedicineFailures medicineFailure});

  $BrandedMedicineFailuresCopyWith<$Res> get medicineFailure;
}

/// @nodoc
class __$$FakeFailureImplCopyWithImpl<$Res>
    extends _$BrandedMedicineActorStateCopyWithImpl<$Res, _$FakeFailureImpl>
    implements _$$FakeFailureImplCopyWith<$Res> {
  __$$FakeFailureImplCopyWithImpl(
      _$FakeFailureImpl _value, $Res Function(_$FakeFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicineFailure = null,
  }) {
    return _then(_$FakeFailureImpl(
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

class _$FakeFailureImpl implements _FakeFailure {
  const _$FakeFailureImpl(this.medicineFailure);

  @override
  final BrandedMedicineFailures medicineFailure;

  @override
  String toString() {
    return 'BrandedMedicineActorState.fakeFailure(medicineFailure: $medicineFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FakeFailureImpl &&
            (identical(other.medicineFailure, medicineFailure) ||
                other.medicineFailure == medicineFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, medicineFailure);

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
    required TResult Function(BrandedMedicineFailures medicineFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(BrandedMedicineFailures medicineFailure)
        fakeFailure,
    required TResult Function() fakeSuccess,
  }) {
    return fakeFailure(medicineFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(BrandedMedicineFailures medicineFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(BrandedMedicineFailures medicineFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return fakeFailure?.call(medicineFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(BrandedMedicineFailures medicineFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(BrandedMedicineFailures medicineFailure)? fakeFailure,
    TResult Function()? fakeSuccess,
    required TResult orElse(),
  }) {
    if (fakeFailure != null) {
      return fakeFailure(medicineFailure);
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

abstract class _FakeFailure implements BrandedMedicineActorState {
  const factory _FakeFailure(final BrandedMedicineFailures medicineFailure) =
      _$FakeFailureImpl;

  BrandedMedicineFailures get medicineFailure;
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
    extends _$BrandedMedicineActorStateCopyWithImpl<$Res, _$FakeSuccessImpl>
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
    return 'BrandedMedicineActorState.fakeSuccess()';
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
    required TResult Function(BrandedMedicineFailures medicineFailure)
        deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(BrandedMedicineFailures medicineFailure)
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
    TResult? Function(BrandedMedicineFailures medicineFailure)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(BrandedMedicineFailures medicineFailure)? fakeFailure,
    TResult? Function()? fakeSuccess,
  }) {
    return fakeSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(BrandedMedicineFailures medicineFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function(BrandedMedicineFailures medicineFailure)? fakeFailure,
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

abstract class _FakeSuccess implements BrandedMedicineActorState {
  const factory _FakeSuccess() = _$FakeSuccessImpl;
}
