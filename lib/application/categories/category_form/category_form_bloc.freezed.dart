// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Category> intialCategoryOption) intial,
    required TResult Function(String name) nameChanged,
    required TResult Function(String imageURL) imageUrlChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Category> intialCategoryOption)? intial,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String imageURL)? imageUrlChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Category> intialCategoryOption)? intial,
    TResult Function(String name)? nameChanged,
    TResult Function(String imageURL)? imageUrlChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageUrlChanged value) imageUrlChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ImageUrlChanged value)? imageUrlChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageUrlChanged value)? imageUrlChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryFormEventCopyWith<$Res> {
  factory $CategoryFormEventCopyWith(
          CategoryFormEvent value, $Res Function(CategoryFormEvent) then) =
      _$CategoryFormEventCopyWithImpl<$Res, CategoryFormEvent>;
}

/// @nodoc
class _$CategoryFormEventCopyWithImpl<$Res, $Val extends CategoryFormEvent>
    implements $CategoryFormEventCopyWith<$Res> {
  _$CategoryFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<Category> intialCategoryOption});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$CategoryFormEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intialCategoryOption = null,
  }) {
    return _then(_$_Initialized(
      null == intialCategoryOption
          ? _value.intialCategoryOption
          : intialCategoryOption // ignore: cast_nullable_to_non_nullable
              as Option<Category>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.intialCategoryOption);

  @override
  final Option<Category> intialCategoryOption;

  @override
  String toString() {
    return 'CategoryFormEvent.intial(intialCategoryOption: $intialCategoryOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.intialCategoryOption, intialCategoryOption) ||
                other.intialCategoryOption == intialCategoryOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, intialCategoryOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Category> intialCategoryOption) intial,
    required TResult Function(String name) nameChanged,
    required TResult Function(String imageURL) imageUrlChanged,
    required TResult Function() saved,
  }) {
    return intial(intialCategoryOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Category> intialCategoryOption)? intial,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String imageURL)? imageUrlChanged,
    TResult? Function()? saved,
  }) {
    return intial?.call(intialCategoryOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Category> intialCategoryOption)? intial,
    TResult Function(String name)? nameChanged,
    TResult Function(String imageURL)? imageUrlChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial(intialCategoryOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageUrlChanged value) imageUrlChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return intial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ImageUrlChanged value)? imageUrlChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return intial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageUrlChanged value)? imageUrlChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements CategoryFormEvent {
  const factory _Initialized(final Option<Category> intialCategoryOption) =
      _$_Initialized;

  Option<Category> get intialCategoryOption;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NameChangedCopyWith<$Res> {
  factory _$$_NameChangedCopyWith(
          _$_NameChanged value, $Res Function(_$_NameChanged) then) =
      __$$_NameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_NameChangedCopyWithImpl<$Res>
    extends _$CategoryFormEventCopyWithImpl<$Res, _$_NameChanged>
    implements _$$_NameChangedCopyWith<$Res> {
  __$$_NameChangedCopyWithImpl(
      _$_NameChanged _value, $Res Function(_$_NameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_NameChanged(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'CategoryFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameChanged &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      __$$_NameChangedCopyWithImpl<_$_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Category> intialCategoryOption) intial,
    required TResult Function(String name) nameChanged,
    required TResult Function(String imageURL) imageUrlChanged,
    required TResult Function() saved,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Category> intialCategoryOption)? intial,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String imageURL)? imageUrlChanged,
    TResult? Function()? saved,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Category> intialCategoryOption)? intial,
    TResult Function(String name)? nameChanged,
    TResult Function(String imageURL)? imageUrlChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageUrlChanged value) imageUrlChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ImageUrlChanged value)? imageUrlChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageUrlChanged value)? imageUrlChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements CategoryFormEvent {
  const factory _NameChanged(final String name) = _$_NameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImageUrlChangedCopyWith<$Res> {
  factory _$$_ImageUrlChangedCopyWith(
          _$_ImageUrlChanged value, $Res Function(_$_ImageUrlChanged) then) =
      __$$_ImageUrlChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String imageURL});
}

/// @nodoc
class __$$_ImageUrlChangedCopyWithImpl<$Res>
    extends _$CategoryFormEventCopyWithImpl<$Res, _$_ImageUrlChanged>
    implements _$$_ImageUrlChangedCopyWith<$Res> {
  __$$_ImageUrlChangedCopyWithImpl(
      _$_ImageUrlChanged _value, $Res Function(_$_ImageUrlChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageURL = null,
  }) {
    return _then(_$_ImageUrlChanged(
      null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ImageUrlChanged implements _ImageUrlChanged {
  const _$_ImageUrlChanged(this.imageURL);

  @override
  final String imageURL;

  @override
  String toString() {
    return 'CategoryFormEvent.imageUrlChanged(imageURL: $imageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageUrlChanged &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageURL);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageUrlChangedCopyWith<_$_ImageUrlChanged> get copyWith =>
      __$$_ImageUrlChangedCopyWithImpl<_$_ImageUrlChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Category> intialCategoryOption) intial,
    required TResult Function(String name) nameChanged,
    required TResult Function(String imageURL) imageUrlChanged,
    required TResult Function() saved,
  }) {
    return imageUrlChanged(imageURL);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Category> intialCategoryOption)? intial,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String imageURL)? imageUrlChanged,
    TResult? Function()? saved,
  }) {
    return imageUrlChanged?.call(imageURL);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Category> intialCategoryOption)? intial,
    TResult Function(String name)? nameChanged,
    TResult Function(String imageURL)? imageUrlChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (imageUrlChanged != null) {
      return imageUrlChanged(imageURL);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageUrlChanged value) imageUrlChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return imageUrlChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ImageUrlChanged value)? imageUrlChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return imageUrlChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageUrlChanged value)? imageUrlChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (imageUrlChanged != null) {
      return imageUrlChanged(this);
    }
    return orElse();
  }
}

abstract class _ImageUrlChanged implements CategoryFormEvent {
  const factory _ImageUrlChanged(final String imageURL) = _$_ImageUrlChanged;

  String get imageURL;
  @JsonKey(ignore: true)
  _$$_ImageUrlChangedCopyWith<_$_ImageUrlChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$CategoryFormEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'CategoryFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Category> intialCategoryOption) intial,
    required TResult Function(String name) nameChanged,
    required TResult Function(String imageURL) imageUrlChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Category> intialCategoryOption)? intial,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String imageURL)? imageUrlChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Category> intialCategoryOption)? intial,
    TResult Function(String name)? nameChanged,
    TResult Function(String imageURL)? imageUrlChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) intial,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_ImageUrlChanged value) imageUrlChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_ImageUrlChanged value)? imageUrlChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? intial,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_ImageUrlChanged value)? imageUrlChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements CategoryFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$CategoryFormState {
  Category get category => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isUpdating => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<CategoryFailures, Category>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryFormStateCopyWith<CategoryFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryFormStateCopyWith<$Res> {
  factory $CategoryFormStateCopyWith(
          CategoryFormState value, $Res Function(CategoryFormState) then) =
      _$CategoryFormStateCopyWithImpl<$Res, CategoryFormState>;
  @useResult
  $Res call(
      {Category category,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<CategoryFailures, Category>> saveFailureOrSuccessOption});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$CategoryFormStateCopyWithImpl<$Res, $Val extends CategoryFormState>
    implements $CategoryFormStateCopyWith<$Res> {
  _$CategoryFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CategoryFailures, Category>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CategoryFormStateCopyWith<$Res>
    implements $CategoryFormStateCopyWith<$Res> {
  factory _$$_CategoryFormStateCopyWith(_$_CategoryFormState value,
          $Res Function(_$_CategoryFormState) then) =
      __$$_CategoryFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Category category,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<CategoryFailures, Category>> saveFailureOrSuccessOption});

  @override
  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$_CategoryFormStateCopyWithImpl<$Res>
    extends _$CategoryFormStateCopyWithImpl<$Res, _$_CategoryFormState>
    implements _$$_CategoryFormStateCopyWith<$Res> {
  __$$_CategoryFormStateCopyWithImpl(
      _$_CategoryFormState _value, $Res Function(_$_CategoryFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$_CategoryFormState(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CategoryFailures, Category>>,
    ));
  }
}

/// @nodoc

class _$_CategoryFormState implements _CategoryFormState {
  const _$_CategoryFormState(
      {required this.category,
      required this.showErrorMessages,
      required this.isUpdating,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final Category category;
  @override
  final bool showErrorMessages;
  @override
  final bool isUpdating;
  @override
  final bool isSaving;
  @override
  final Option<Either<CategoryFailures, Category>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'CategoryFormState(category: $category, showErrorMessages: $showErrorMessages, isUpdating: $isUpdating, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryFormState &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isUpdating, isUpdating) ||
                other.isUpdating == isUpdating) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, showErrorMessages,
      isUpdating, isSaving, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryFormStateCopyWith<_$_CategoryFormState> get copyWith =>
      __$$_CategoryFormStateCopyWithImpl<_$_CategoryFormState>(
          this, _$identity);
}

abstract class _CategoryFormState implements CategoryFormState {
  const factory _CategoryFormState(
      {required final Category category,
      required final bool showErrorMessages,
      required final bool isUpdating,
      required final bool isSaving,
      required final Option<Either<CategoryFailures, Category>>
          saveFailureOrSuccessOption}) = _$_CategoryFormState;

  @override
  Category get category;
  @override
  bool get showErrorMessages;
  @override
  bool get isUpdating;
  @override
  bool get isSaving;
  @override
  Option<Either<CategoryFailures, Category>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryFormStateCopyWith<_$_CategoryFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
