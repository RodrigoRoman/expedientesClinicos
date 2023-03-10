// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category category) deleted,
    required TResult Function() faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Category category)? deleted,
    TResult? Function()? faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category category)? deleted,
    TResult Function()? faker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteCategory value) deleted,
    required TResult Function(_FakeCategory value) faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteCategory value)? deleted,
    TResult? Function(_FakeCategory value)? faker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteCategory value)? deleted,
    TResult Function(_FakeCategory value)? faker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryActorEventCopyWith<$Res> {
  factory $CategoryActorEventCopyWith(
          CategoryActorEvent value, $Res Function(CategoryActorEvent) then) =
      _$CategoryActorEventCopyWithImpl<$Res, CategoryActorEvent>;
}

/// @nodoc
class _$CategoryActorEventCopyWithImpl<$Res, $Val extends CategoryActorEvent>
    implements $CategoryActorEventCopyWith<$Res> {
  _$CategoryActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DeleteCategoryCopyWith<$Res> {
  factory _$$_DeleteCategoryCopyWith(
          _$_DeleteCategory value, $Res Function(_$_DeleteCategory) then) =
      __$$_DeleteCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({Category category});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$_DeleteCategoryCopyWithImpl<$Res>
    extends _$CategoryActorEventCopyWithImpl<$Res, _$_DeleteCategory>
    implements _$$_DeleteCategoryCopyWith<$Res> {
  __$$_DeleteCategoryCopyWithImpl(
      _$_DeleteCategory _value, $Res Function(_$_DeleteCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$_DeleteCategory(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$_DeleteCategory
    with DiagnosticableTreeMixin
    implements _DeleteCategory {
  const _$_DeleteCategory(this.category);

  @override
  final Category category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryActorEvent.deleted(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryActorEvent.deleted'))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteCategory &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteCategoryCopyWith<_$_DeleteCategory> get copyWith =>
      __$$_DeleteCategoryCopyWithImpl<_$_DeleteCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category category) deleted,
    required TResult Function() faker,
  }) {
    return deleted(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Category category)? deleted,
    TResult? Function()? faker,
  }) {
    return deleted?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category category)? deleted,
    TResult Function()? faker,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteCategory value) deleted,
    required TResult Function(_FakeCategory value) faker,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteCategory value)? deleted,
    TResult? Function(_FakeCategory value)? faker,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteCategory value)? deleted,
    TResult Function(_FakeCategory value)? faker,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _DeleteCategory implements CategoryActorEvent {
  const factory _DeleteCategory(final Category category) = _$_DeleteCategory;

  Category get category;
  @JsonKey(ignore: true)
  _$$_DeleteCategoryCopyWith<_$_DeleteCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FakeCategoryCopyWith<$Res> {
  factory _$$_FakeCategoryCopyWith(
          _$_FakeCategory value, $Res Function(_$_FakeCategory) then) =
      __$$_FakeCategoryCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FakeCategoryCopyWithImpl<$Res>
    extends _$CategoryActorEventCopyWithImpl<$Res, _$_FakeCategory>
    implements _$$_FakeCategoryCopyWith<$Res> {
  __$$_FakeCategoryCopyWithImpl(
      _$_FakeCategory _value, $Res Function(_$_FakeCategory) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FakeCategory with DiagnosticableTreeMixin implements _FakeCategory {
  const _$_FakeCategory();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryActorEvent.faker()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CategoryActorEvent.faker'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FakeCategory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category category) deleted,
    required TResult Function() faker,
  }) {
    return faker();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Category category)? deleted,
    TResult? Function()? faker,
  }) {
    return faker?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category category)? deleted,
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
    required TResult Function(_DeleteCategory value) deleted,
    required TResult Function(_FakeCategory value) faker,
  }) {
    return faker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteCategory value)? deleted,
    TResult? Function(_FakeCategory value)? faker,
  }) {
    return faker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteCategory value)? deleted,
    TResult Function(_FakeCategory value)? faker,
    required TResult orElse(),
  }) {
    if (faker != null) {
      return faker(this);
    }
    return orElse();
  }
}

abstract class _FakeCategory implements CategoryActorEvent {
  const factory _FakeCategory() = _$_FakeCategory;
}

/// @nodoc
mixin _$CategoryActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(CategoryFailures categoryFailure) deleteFailure,
    required TResult Function(CategoryFailures categoryFailure) fakeFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() fakeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(CategoryFailures categoryFailure)? deleteFailure,
    TResult? Function(CategoryFailures categoryFailure)? fakeFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function()? fakeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CategoryFailures categoryFailure)? deleteFailure,
    TResult Function(CategoryFailures categoryFailure)? fakeFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? fakeSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_FakeFailure value) fakeFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_FakeSuccess value) fakeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ActionInProgress value)? actionInProgress,
    TResult? Function(_DeleteFailure value)? deleteFailure,
    TResult? Function(_FakeFailure value)? fakeFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_FakeSuccess value)? fakeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_FakeFailure value)? fakeFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_FakeSuccess value)? fakeSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryActorStateCopyWith<$Res> {
  factory $CategoryActorStateCopyWith(
          CategoryActorState value, $Res Function(CategoryActorState) then) =
      _$CategoryActorStateCopyWithImpl<$Res, CategoryActorState>;
}

/// @nodoc
class _$CategoryActorStateCopyWithImpl<$Res, $Val extends CategoryActorState>
    implements $CategoryActorStateCopyWith<$Res> {
  _$CategoryActorStateCopyWithImpl(this._value, this._then);

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
    extends _$CategoryActorStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryActorState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CategoryActorState.initial'));
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
    required TResult Function(CategoryFailures categoryFailure) deleteFailure,
    required TResult Function(CategoryFailures categoryFailure) fakeFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() fakeSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(CategoryFailures categoryFailure)? deleteFailure,
    TResult? Function(CategoryFailures categoryFailure)? fakeFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function()? fakeSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CategoryFailures categoryFailure)? deleteFailure,
    TResult Function(CategoryFailures categoryFailure)? fakeFailure,
    TResult Function()? deleteSuccess,
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
    required TResult Function(_FakeFailure value) fakeFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
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
    TResult? Function(_FakeFailure value)? fakeFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
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
    TResult Function(_FakeFailure value)? fakeFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_FakeSuccess value)? fakeSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CategoryActorState {
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
    extends _$CategoryActorStateCopyWithImpl<$Res, _$_ActionInProgress>
    implements _$$_ActionInProgressCopyWith<$Res> {
  __$$_ActionInProgressCopyWithImpl(
      _$_ActionInProgress _value, $Res Function(_$_ActionInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ActionInProgress
    with DiagnosticableTreeMixin
    implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryActorState.actionInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'CategoryActorState.actionInProgress'));
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
    required TResult Function(CategoryFailures categoryFailure) deleteFailure,
    required TResult Function(CategoryFailures categoryFailure) fakeFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() fakeSuccess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(CategoryFailures categoryFailure)? deleteFailure,
    TResult? Function(CategoryFailures categoryFailure)? fakeFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function()? fakeSuccess,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CategoryFailures categoryFailure)? deleteFailure,
    TResult Function(CategoryFailures categoryFailure)? fakeFailure,
    TResult Function()? deleteSuccess,
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
    required TResult Function(_FakeFailure value) fakeFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
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
    TResult? Function(_FakeFailure value)? fakeFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
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
    TResult Function(_FakeFailure value)? fakeFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_FakeSuccess value)? fakeSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements CategoryActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$$_DeleteFailureCopyWith<$Res> {
  factory _$$_DeleteFailureCopyWith(
          _$_DeleteFailure value, $Res Function(_$_DeleteFailure) then) =
      __$$_DeleteFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryFailures categoryFailure});

  $CategoryFailuresCopyWith<$Res> get categoryFailure;
}

/// @nodoc
class __$$_DeleteFailureCopyWithImpl<$Res>
    extends _$CategoryActorStateCopyWithImpl<$Res, _$_DeleteFailure>
    implements _$$_DeleteFailureCopyWith<$Res> {
  __$$_DeleteFailureCopyWithImpl(
      _$_DeleteFailure _value, $Res Function(_$_DeleteFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryFailure = null,
  }) {
    return _then(_$_DeleteFailure(
      null == categoryFailure
          ? _value.categoryFailure
          : categoryFailure // ignore: cast_nullable_to_non_nullable
              as CategoryFailures,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryFailuresCopyWith<$Res> get categoryFailure {
    return $CategoryFailuresCopyWith<$Res>(_value.categoryFailure, (value) {
      return _then(_value.copyWith(categoryFailure: value));
    });
  }
}

/// @nodoc

class _$_DeleteFailure with DiagnosticableTreeMixin implements _DeleteFailure {
  const _$_DeleteFailure(this.categoryFailure);

  @override
  final CategoryFailures categoryFailure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryActorState.deleteFailure(categoryFailure: $categoryFailure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryActorState.deleteFailure'))
      ..add(DiagnosticsProperty('categoryFailure', categoryFailure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteFailure &&
            (identical(other.categoryFailure, categoryFailure) ||
                other.categoryFailure == categoryFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryFailure);

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
    required TResult Function(CategoryFailures categoryFailure) deleteFailure,
    required TResult Function(CategoryFailures categoryFailure) fakeFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() fakeSuccess,
  }) {
    return deleteFailure(categoryFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(CategoryFailures categoryFailure)? deleteFailure,
    TResult? Function(CategoryFailures categoryFailure)? fakeFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function()? fakeSuccess,
  }) {
    return deleteFailure?.call(categoryFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CategoryFailures categoryFailure)? deleteFailure,
    TResult Function(CategoryFailures categoryFailure)? fakeFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? fakeSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(categoryFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_FakeFailure value) fakeFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
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
    TResult? Function(_FakeFailure value)? fakeFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
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
    TResult Function(_FakeFailure value)? fakeFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_FakeSuccess value)? fakeSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements CategoryActorState {
  const factory _DeleteFailure(final CategoryFailures categoryFailure) =
      _$_DeleteFailure;

  CategoryFailures get categoryFailure;
  @JsonKey(ignore: true)
  _$$_DeleteFailureCopyWith<_$_DeleteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FakeFailureCopyWith<$Res> {
  factory _$$_FakeFailureCopyWith(
          _$_FakeFailure value, $Res Function(_$_FakeFailure) then) =
      __$$_FakeFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryFailures categoryFailure});

  $CategoryFailuresCopyWith<$Res> get categoryFailure;
}

/// @nodoc
class __$$_FakeFailureCopyWithImpl<$Res>
    extends _$CategoryActorStateCopyWithImpl<$Res, _$_FakeFailure>
    implements _$$_FakeFailureCopyWith<$Res> {
  __$$_FakeFailureCopyWithImpl(
      _$_FakeFailure _value, $Res Function(_$_FakeFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryFailure = null,
  }) {
    return _then(_$_FakeFailure(
      null == categoryFailure
          ? _value.categoryFailure
          : categoryFailure // ignore: cast_nullable_to_non_nullable
              as CategoryFailures,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryFailuresCopyWith<$Res> get categoryFailure {
    return $CategoryFailuresCopyWith<$Res>(_value.categoryFailure, (value) {
      return _then(_value.copyWith(categoryFailure: value));
    });
  }
}

/// @nodoc

class _$_FakeFailure with DiagnosticableTreeMixin implements _FakeFailure {
  const _$_FakeFailure(this.categoryFailure);

  @override
  final CategoryFailures categoryFailure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryActorState.fakeFailure(categoryFailure: $categoryFailure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryActorState.fakeFailure'))
      ..add(DiagnosticsProperty('categoryFailure', categoryFailure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FakeFailure &&
            (identical(other.categoryFailure, categoryFailure) ||
                other.categoryFailure == categoryFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryFailure);

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
    required TResult Function(CategoryFailures categoryFailure) deleteFailure,
    required TResult Function(CategoryFailures categoryFailure) fakeFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() fakeSuccess,
  }) {
    return fakeFailure(categoryFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(CategoryFailures categoryFailure)? deleteFailure,
    TResult? Function(CategoryFailures categoryFailure)? fakeFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function()? fakeSuccess,
  }) {
    return fakeFailure?.call(categoryFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CategoryFailures categoryFailure)? deleteFailure,
    TResult Function(CategoryFailures categoryFailure)? fakeFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? fakeSuccess,
    required TResult orElse(),
  }) {
    if (fakeFailure != null) {
      return fakeFailure(categoryFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_FakeFailure value) fakeFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
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
    TResult? Function(_FakeFailure value)? fakeFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
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
    TResult Function(_FakeFailure value)? fakeFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_FakeSuccess value)? fakeSuccess,
    required TResult orElse(),
  }) {
    if (fakeFailure != null) {
      return fakeFailure(this);
    }
    return orElse();
  }
}

abstract class _FakeFailure implements CategoryActorState {
  const factory _FakeFailure(final CategoryFailures categoryFailure) =
      _$_FakeFailure;

  CategoryFailures get categoryFailure;
  @JsonKey(ignore: true)
  _$$_FakeFailureCopyWith<_$_FakeFailure> get copyWith =>
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
    extends _$CategoryActorStateCopyWithImpl<$Res, _$_DeleteSuccess>
    implements _$$_DeleteSuccessCopyWith<$Res> {
  __$$_DeleteSuccessCopyWithImpl(
      _$_DeleteSuccess _value, $Res Function(_$_DeleteSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeleteSuccess with DiagnosticableTreeMixin implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryActorState.deleteSuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'CategoryActorState.deleteSuccess'));
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
    required TResult Function(CategoryFailures categoryFailure) deleteFailure,
    required TResult Function(CategoryFailures categoryFailure) fakeFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() fakeSuccess,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(CategoryFailures categoryFailure)? deleteFailure,
    TResult? Function(CategoryFailures categoryFailure)? fakeFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function()? fakeSuccess,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CategoryFailures categoryFailure)? deleteFailure,
    TResult Function(CategoryFailures categoryFailure)? fakeFailure,
    TResult Function()? deleteSuccess,
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
    required TResult Function(_FakeFailure value) fakeFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
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
    TResult? Function(_FakeFailure value)? fakeFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
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
    TResult Function(_FakeFailure value)? fakeFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_FakeSuccess value)? fakeSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements CategoryActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}

/// @nodoc
abstract class _$$_FakeSuccessCopyWith<$Res> {
  factory _$$_FakeSuccessCopyWith(
          _$_FakeSuccess value, $Res Function(_$_FakeSuccess) then) =
      __$$_FakeSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FakeSuccessCopyWithImpl<$Res>
    extends _$CategoryActorStateCopyWithImpl<$Res, _$_FakeSuccess>
    implements _$$_FakeSuccessCopyWith<$Res> {
  __$$_FakeSuccessCopyWithImpl(
      _$_FakeSuccess _value, $Res Function(_$_FakeSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FakeSuccess with DiagnosticableTreeMixin implements _FakeSuccess {
  const _$_FakeSuccess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryActorState.fakeSuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'CategoryActorState.fakeSuccess'));
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
    required TResult Function(CategoryFailures categoryFailure) deleteFailure,
    required TResult Function(CategoryFailures categoryFailure) fakeFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() fakeSuccess,
  }) {
    return fakeSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionInProgress,
    TResult? Function(CategoryFailures categoryFailure)? deleteFailure,
    TResult? Function(CategoryFailures categoryFailure)? fakeFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function()? fakeSuccess,
  }) {
    return fakeSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(CategoryFailures categoryFailure)? deleteFailure,
    TResult Function(CategoryFailures categoryFailure)? fakeFailure,
    TResult Function()? deleteSuccess,
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
    required TResult Function(_FakeFailure value) fakeFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
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
    TResult? Function(_FakeFailure value)? fakeFailure,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
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
    TResult Function(_FakeFailure value)? fakeFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_FakeSuccess value)? fakeSuccess,
    required TResult orElse(),
  }) {
    if (fakeSuccess != null) {
      return fakeSuccess(this);
    }
    return orElse();
  }
}

abstract class _FakeSuccess implements CategoryActorState {
  const factory _FakeSuccess() = _$_FakeSuccess;
}
