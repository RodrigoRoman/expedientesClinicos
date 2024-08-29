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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$DeleteCategoryImplCopyWith<$Res> {
  factory _$$DeleteCategoryImplCopyWith(_$DeleteCategoryImpl value,
          $Res Function(_$DeleteCategoryImpl) then) =
      __$$DeleteCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Category category});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$DeleteCategoryImplCopyWithImpl<$Res>
    extends _$CategoryActorEventCopyWithImpl<$Res, _$DeleteCategoryImpl>
    implements _$$DeleteCategoryImplCopyWith<$Res> {
  __$$DeleteCategoryImplCopyWithImpl(
      _$DeleteCategoryImpl _value, $Res Function(_$DeleteCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$DeleteCategoryImpl(
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

class _$DeleteCategoryImpl
    with DiagnosticableTreeMixin
    implements _DeleteCategory {
  const _$DeleteCategoryImpl(this.category);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCategoryImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCategoryImplCopyWith<_$DeleteCategoryImpl> get copyWith =>
      __$$DeleteCategoryImplCopyWithImpl<_$DeleteCategoryImpl>(
          this, _$identity);

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
  const factory _DeleteCategory(final Category category) = _$DeleteCategoryImpl;

  Category get category;
  @JsonKey(ignore: true)
  _$$DeleteCategoryImplCopyWith<_$DeleteCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FakeCategoryImplCopyWith<$Res> {
  factory _$$FakeCategoryImplCopyWith(
          _$FakeCategoryImpl value, $Res Function(_$FakeCategoryImpl) then) =
      __$$FakeCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FakeCategoryImplCopyWithImpl<$Res>
    extends _$CategoryActorEventCopyWithImpl<$Res, _$FakeCategoryImpl>
    implements _$$FakeCategoryImplCopyWith<$Res> {
  __$$FakeCategoryImplCopyWithImpl(
      _$FakeCategoryImpl _value, $Res Function(_$FakeCategoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FakeCategoryImpl with DiagnosticableTreeMixin implements _FakeCategory {
  const _$FakeCategoryImpl();

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FakeCategoryImpl);
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
  const factory _FakeCategory() = _$FakeCategoryImpl;
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
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CategoryActorStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

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
    extends _$CategoryActorStateCopyWithImpl<$Res, _$ActionInProgressImpl>
    implements _$$ActionInProgressImplCopyWith<$Res> {
  __$$ActionInProgressImplCopyWithImpl(_$ActionInProgressImpl _value,
      $Res Function(_$ActionInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActionInProgressImpl
    with DiagnosticableTreeMixin
    implements _ActionInProgress {
  const _$ActionInProgressImpl();

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
  const factory _ActionInProgress() = _$ActionInProgressImpl;
}

/// @nodoc
abstract class _$$DeleteFailureImplCopyWith<$Res> {
  factory _$$DeleteFailureImplCopyWith(
          _$DeleteFailureImpl value, $Res Function(_$DeleteFailureImpl) then) =
      __$$DeleteFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryFailures categoryFailure});

  $CategoryFailuresCopyWith<$Res> get categoryFailure;
}

/// @nodoc
class __$$DeleteFailureImplCopyWithImpl<$Res>
    extends _$CategoryActorStateCopyWithImpl<$Res, _$DeleteFailureImpl>
    implements _$$DeleteFailureImplCopyWith<$Res> {
  __$$DeleteFailureImplCopyWithImpl(
      _$DeleteFailureImpl _value, $Res Function(_$DeleteFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryFailure = null,
  }) {
    return _then(_$DeleteFailureImpl(
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

class _$DeleteFailureImpl
    with DiagnosticableTreeMixin
    implements _DeleteFailure {
  const _$DeleteFailureImpl(this.categoryFailure);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFailureImpl &&
            (identical(other.categoryFailure, categoryFailure) ||
                other.categoryFailure == categoryFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryFailure);

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
      _$DeleteFailureImpl;

  CategoryFailures get categoryFailure;
  @JsonKey(ignore: true)
  _$$DeleteFailureImplCopyWith<_$DeleteFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FakeFailureImplCopyWith<$Res> {
  factory _$$FakeFailureImplCopyWith(
          _$FakeFailureImpl value, $Res Function(_$FakeFailureImpl) then) =
      __$$FakeFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryFailures categoryFailure});

  $CategoryFailuresCopyWith<$Res> get categoryFailure;
}

/// @nodoc
class __$$FakeFailureImplCopyWithImpl<$Res>
    extends _$CategoryActorStateCopyWithImpl<$Res, _$FakeFailureImpl>
    implements _$$FakeFailureImplCopyWith<$Res> {
  __$$FakeFailureImplCopyWithImpl(
      _$FakeFailureImpl _value, $Res Function(_$FakeFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryFailure = null,
  }) {
    return _then(_$FakeFailureImpl(
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

class _$FakeFailureImpl with DiagnosticableTreeMixin implements _FakeFailure {
  const _$FakeFailureImpl(this.categoryFailure);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FakeFailureImpl &&
            (identical(other.categoryFailure, categoryFailure) ||
                other.categoryFailure == categoryFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryFailure);

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
      _$FakeFailureImpl;

  CategoryFailures get categoryFailure;
  @JsonKey(ignore: true)
  _$$FakeFailureImplCopyWith<_$FakeFailureImpl> get copyWith =>
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
    extends _$CategoryActorStateCopyWithImpl<$Res, _$DeleteSuccessImpl>
    implements _$$DeleteSuccessImplCopyWith<$Res> {
  __$$DeleteSuccessImplCopyWithImpl(
      _$DeleteSuccessImpl _value, $Res Function(_$DeleteSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteSuccessImpl
    with DiagnosticableTreeMixin
    implements _DeleteSuccess {
  const _$DeleteSuccessImpl();

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
  const factory _DeleteSuccess() = _$DeleteSuccessImpl;
}

/// @nodoc
abstract class _$$FakeSuccessImplCopyWith<$Res> {
  factory _$$FakeSuccessImplCopyWith(
          _$FakeSuccessImpl value, $Res Function(_$FakeSuccessImpl) then) =
      __$$FakeSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FakeSuccessImplCopyWithImpl<$Res>
    extends _$CategoryActorStateCopyWithImpl<$Res, _$FakeSuccessImpl>
    implements _$$FakeSuccessImplCopyWith<$Res> {
  __$$FakeSuccessImplCopyWithImpl(
      _$FakeSuccessImpl _value, $Res Function(_$FakeSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FakeSuccessImpl with DiagnosticableTreeMixin implements _FakeSuccess {
  const _$FakeSuccessImpl();

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
  const factory _FakeSuccess() = _$FakeSuccessImpl;
}
