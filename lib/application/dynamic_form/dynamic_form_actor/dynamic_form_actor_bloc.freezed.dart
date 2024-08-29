// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_form_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DynamicFormActorEvent {
  FormSection get dynamicForm => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormSection dynamicForm) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormSection dynamicForm)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormSection dynamicForm)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteDynamicForm value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteDynamicForm value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteDynamicForm value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DynamicFormActorEventCopyWith<DynamicFormActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicFormActorEventCopyWith<$Res> {
  factory $DynamicFormActorEventCopyWith(DynamicFormActorEvent value,
          $Res Function(DynamicFormActorEvent) then) =
      _$DynamicFormActorEventCopyWithImpl<$Res, DynamicFormActorEvent>;
  @useResult
  $Res call({FormSection dynamicForm});

  $FormSectionCopyWith<$Res> get dynamicForm;
}

/// @nodoc
class _$DynamicFormActorEventCopyWithImpl<$Res,
        $Val extends DynamicFormActorEvent>
    implements $DynamicFormActorEventCopyWith<$Res> {
  _$DynamicFormActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dynamicForm = null,
  }) {
    return _then(_value.copyWith(
      dynamicForm: null == dynamicForm
          ? _value.dynamicForm
          : dynamicForm // ignore: cast_nullable_to_non_nullable
              as FormSection,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FormSectionCopyWith<$Res> get dynamicForm {
    return $FormSectionCopyWith<$Res>(_value.dynamicForm, (value) {
      return _then(_value.copyWith(dynamicForm: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeleteDynamicFormImplCopyWith<$Res>
    implements $DynamicFormActorEventCopyWith<$Res> {
  factory _$$DeleteDynamicFormImplCopyWith(_$DeleteDynamicFormImpl value,
          $Res Function(_$DeleteDynamicFormImpl) then) =
      __$$DeleteDynamicFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormSection dynamicForm});

  @override
  $FormSectionCopyWith<$Res> get dynamicForm;
}

/// @nodoc
class __$$DeleteDynamicFormImplCopyWithImpl<$Res>
    extends _$DynamicFormActorEventCopyWithImpl<$Res, _$DeleteDynamicFormImpl>
    implements _$$DeleteDynamicFormImplCopyWith<$Res> {
  __$$DeleteDynamicFormImplCopyWithImpl(_$DeleteDynamicFormImpl _value,
      $Res Function(_$DeleteDynamicFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dynamicForm = null,
  }) {
    return _then(_$DeleteDynamicFormImpl(
      null == dynamicForm
          ? _value.dynamicForm
          : dynamicForm // ignore: cast_nullable_to_non_nullable
              as FormSection,
    ));
  }
}

/// @nodoc

class _$DeleteDynamicFormImpl implements _DeleteDynamicForm {
  const _$DeleteDynamicFormImpl(this.dynamicForm);

  @override
  final FormSection dynamicForm;

  @override
  String toString() {
    return 'DynamicFormActorEvent.deleted(dynamicForm: $dynamicForm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteDynamicFormImpl &&
            (identical(other.dynamicForm, dynamicForm) ||
                other.dynamicForm == dynamicForm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dynamicForm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteDynamicFormImplCopyWith<_$DeleteDynamicFormImpl> get copyWith =>
      __$$DeleteDynamicFormImplCopyWithImpl<_$DeleteDynamicFormImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormSection dynamicForm) deleted,
  }) {
    return deleted(dynamicForm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormSection dynamicForm)? deleted,
  }) {
    return deleted?.call(dynamicForm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormSection dynamicForm)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(dynamicForm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteDynamicForm value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteDynamicForm value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteDynamicForm value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _DeleteDynamicForm implements DynamicFormActorEvent {
  const factory _DeleteDynamicForm(final FormSection dynamicForm) =
      _$DeleteDynamicFormImpl;

  @override
  FormSection get dynamicForm;
  @override
  @JsonKey(ignore: true)
  _$$DeleteDynamicFormImplCopyWith<_$DeleteDynamicFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DynamicFormActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(DynamicFormFailures dynamicFormFailure)
        deleteFailure,
    required TResult Function(DynamicFormFailures dynamicFormFailure)
        deleteSucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DynamicFormFailures dynamicFormFailure)? deleteFailure,
    TResult? Function(DynamicFormFailures dynamicFormFailure)? deleteSucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DynamicFormFailures dynamicFormFailure)? deleteFailure,
    TResult Function(DynamicFormFailures dynamicFormFailure)? deleteSucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicFormActorStateCopyWith<$Res> {
  factory $DynamicFormActorStateCopyWith(DynamicFormActorState value,
          $Res Function(DynamicFormActorState) then) =
      _$DynamicFormActorStateCopyWithImpl<$Res, DynamicFormActorState>;
}

/// @nodoc
class _$DynamicFormActorStateCopyWithImpl<$Res,
        $Val extends DynamicFormActorState>
    implements $DynamicFormActorStateCopyWith<$Res> {
  _$DynamicFormActorStateCopyWithImpl(this._value, this._then);

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
    extends _$DynamicFormActorStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'DynamicFormActorState.initial()';
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
    required TResult Function(DynamicFormFailures dynamicFormFailure)
        deleteFailure,
    required TResult Function(DynamicFormFailures dynamicFormFailure)
        deleteSucess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DynamicFormFailures dynamicFormFailure)? deleteFailure,
    TResult? Function(DynamicFormFailures dynamicFormFailure)? deleteSucess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DynamicFormFailures dynamicFormFailure)? deleteFailure,
    TResult Function(DynamicFormFailures dynamicFormFailure)? deleteSucess,
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
    required TResult Function(_DeleteSuccess value) deleteSucess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSucess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSucess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DynamicFormActorState {
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
    extends _$DynamicFormActorStateCopyWithImpl<$Res, _$ActionInProgressImpl>
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
    return 'DynamicFormActorState.actionInProgress()';
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
    required TResult Function(DynamicFormFailures dynamicFormFailure)
        deleteFailure,
    required TResult Function(DynamicFormFailures dynamicFormFailure)
        deleteSucess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DynamicFormFailures dynamicFormFailure)? deleteFailure,
    TResult? Function(DynamicFormFailures dynamicFormFailure)? deleteSucess,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DynamicFormFailures dynamicFormFailure)? deleteFailure,
    TResult Function(DynamicFormFailures dynamicFormFailure)? deleteSucess,
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
    required TResult Function(_DeleteSuccess value) deleteSucess,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSucess,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSucess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements DynamicFormActorState {
  const factory _ActionInProgress() = _$ActionInProgressImpl;
}

/// @nodoc
abstract class _$$DeleteFailureImplCopyWith<$Res> {
  factory _$$DeleteFailureImplCopyWith(
          _$DeleteFailureImpl value, $Res Function(_$DeleteFailureImpl) then) =
      __$$DeleteFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DynamicFormFailures dynamicFormFailure});

  $DynamicFormFailuresCopyWith<$Res> get dynamicFormFailure;
}

/// @nodoc
class __$$DeleteFailureImplCopyWithImpl<$Res>
    extends _$DynamicFormActorStateCopyWithImpl<$Res, _$DeleteFailureImpl>
    implements _$$DeleteFailureImplCopyWith<$Res> {
  __$$DeleteFailureImplCopyWithImpl(
      _$DeleteFailureImpl _value, $Res Function(_$DeleteFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dynamicFormFailure = null,
  }) {
    return _then(_$DeleteFailureImpl(
      null == dynamicFormFailure
          ? _value.dynamicFormFailure
          : dynamicFormFailure // ignore: cast_nullable_to_non_nullable
              as DynamicFormFailures,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DynamicFormFailuresCopyWith<$Res> get dynamicFormFailure {
    return $DynamicFormFailuresCopyWith<$Res>(_value.dynamicFormFailure,
        (value) {
      return _then(_value.copyWith(dynamicFormFailure: value));
    });
  }
}

/// @nodoc

class _$DeleteFailureImpl implements _DeleteFailure {
  const _$DeleteFailureImpl(this.dynamicFormFailure);

  @override
  final DynamicFormFailures dynamicFormFailure;

  @override
  String toString() {
    return 'DynamicFormActorState.deleteFailure(dynamicFormFailure: $dynamicFormFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFailureImpl &&
            (identical(other.dynamicFormFailure, dynamicFormFailure) ||
                other.dynamicFormFailure == dynamicFormFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dynamicFormFailure);

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
    required TResult Function(DynamicFormFailures dynamicFormFailure)
        deleteFailure,
    required TResult Function(DynamicFormFailures dynamicFormFailure)
        deleteSucess,
  }) {
    return deleteFailure(dynamicFormFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DynamicFormFailures dynamicFormFailure)? deleteFailure,
    TResult? Function(DynamicFormFailures dynamicFormFailure)? deleteSucess,
  }) {
    return deleteFailure?.call(dynamicFormFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DynamicFormFailures dynamicFormFailure)? deleteFailure,
    TResult Function(DynamicFormFailures dynamicFormFailure)? deleteSucess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(dynamicFormFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSucess,
  }) {
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSucess,
  }) {
    return deleteFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSucess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements DynamicFormActorState {
  const factory _DeleteFailure(final DynamicFormFailures dynamicFormFailure) =
      _$DeleteFailureImpl;

  DynamicFormFailures get dynamicFormFailure;
  @JsonKey(ignore: true)
  _$$DeleteFailureImplCopyWith<_$DeleteFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteSuccessImplCopyWith<$Res> {
  factory _$$DeleteSuccessImplCopyWith(
          _$DeleteSuccessImpl value, $Res Function(_$DeleteSuccessImpl) then) =
      __$$DeleteSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DynamicFormFailures dynamicFormFailure});

  $DynamicFormFailuresCopyWith<$Res> get dynamicFormFailure;
}

/// @nodoc
class __$$DeleteSuccessImplCopyWithImpl<$Res>
    extends _$DynamicFormActorStateCopyWithImpl<$Res, _$DeleteSuccessImpl>
    implements _$$DeleteSuccessImplCopyWith<$Res> {
  __$$DeleteSuccessImplCopyWithImpl(
      _$DeleteSuccessImpl _value, $Res Function(_$DeleteSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dynamicFormFailure = null,
  }) {
    return _then(_$DeleteSuccessImpl(
      null == dynamicFormFailure
          ? _value.dynamicFormFailure
          : dynamicFormFailure // ignore: cast_nullable_to_non_nullable
              as DynamicFormFailures,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DynamicFormFailuresCopyWith<$Res> get dynamicFormFailure {
    return $DynamicFormFailuresCopyWith<$Res>(_value.dynamicFormFailure,
        (value) {
      return _then(_value.copyWith(dynamicFormFailure: value));
    });
  }
}

/// @nodoc

class _$DeleteSuccessImpl implements _DeleteSuccess {
  const _$DeleteSuccessImpl(this.dynamicFormFailure);

  @override
  final DynamicFormFailures dynamicFormFailure;

  @override
  String toString() {
    return 'DynamicFormActorState.deleteSucess(dynamicFormFailure: $dynamicFormFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteSuccessImpl &&
            (identical(other.dynamicFormFailure, dynamicFormFailure) ||
                other.dynamicFormFailure == dynamicFormFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dynamicFormFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteSuccessImplCopyWith<_$DeleteSuccessImpl> get copyWith =>
      __$$DeleteSuccessImplCopyWithImpl<_$DeleteSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(DynamicFormFailures dynamicFormFailure)
        deleteFailure,
    required TResult Function(DynamicFormFailures dynamicFormFailure)
        deleteSucess,
  }) {
    return deleteSucess(dynamicFormFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(DynamicFormFailures dynamicFormFailure)? deleteFailure,
    TResult? Function(DynamicFormFailures dynamicFormFailure)? deleteSucess,
  }) {
    return deleteSucess?.call(dynamicFormFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(DynamicFormFailures dynamicFormFailure)? deleteFailure,
    TResult Function(DynamicFormFailures dynamicFormFailure)? deleteSucess,
    required TResult orElse(),
  }) {
    if (deleteSucess != null) {
      return deleteSucess(dynamicFormFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSucess,
  }) {
    return deleteSucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_DeleteSuccess value)? deleteSucess,
  }) {
    return deleteSucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSucess,
    required TResult orElse(),
  }) {
    if (deleteSucess != null) {
      return deleteSucess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements DynamicFormActorState {
  const factory _DeleteSuccess(final DynamicFormFailures dynamicFormFailure) =
      _$DeleteSuccessImpl;

  DynamicFormFailures get dynamicFormFailure;
  @JsonKey(ignore: true)
  _$$DeleteSuccessImplCopyWith<_$DeleteSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
