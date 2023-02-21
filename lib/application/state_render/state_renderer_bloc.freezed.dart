// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_renderer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateRendererEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String message, bool popPrevioues)
        popUpSuccess,
    required TResult Function(String title, String message, bool popPrevioues)
        popUpError,
    required TResult Function(String title, String message) popUpServerError,
    required TResult Function(String title, String message, bool popPrevioues)
        popUpLoading,
    required TResult Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)
        popUpForm,
    required TResult Function(String title, String message, bool popPrevioues)
        fullErrorSreen,
    required TResult Function() contentScreen,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpSuccess,
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpError,
    TResult? Function(String title, String message)? popUpServerError,
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpLoading,
    TResult? Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)?
        popUpForm,
    TResult? Function(String title, String message, bool popPrevioues)?
        fullErrorSreen,
    TResult? Function()? contentScreen,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String message, bool popPrevioues)?
        popUpSuccess,
    TResult Function(String title, String message, bool popPrevioues)?
        popUpError,
    TResult Function(String title, String message)? popUpServerError,
    TResult Function(String title, String message, bool popPrevioues)?
        popUpLoading,
    TResult Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)?
        popUpForm,
    TResult Function(String title, String message, bool popPrevioues)?
        fullErrorSreen,
    TResult Function()? contentScreen,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopUpSuccess value) popUpSuccess,
    required TResult Function(PopUpError value) popUpError,
    required TResult Function(PopUpServerError value) popUpServerError,
    required TResult Function(PopUpLoading value) popUpLoading,
    required TResult Function(PopUpForm value) popUpForm,
    required TResult Function(FullErrorSreen value) fullErrorSreen,
    required TResult Function(ContentScreen value) contentScreen,
    required TResult Function(EmptySreen value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PopUpSuccess value)? popUpSuccess,
    TResult? Function(PopUpError value)? popUpError,
    TResult? Function(PopUpServerError value)? popUpServerError,
    TResult? Function(PopUpLoading value)? popUpLoading,
    TResult? Function(PopUpForm value)? popUpForm,
    TResult? Function(FullErrorSreen value)? fullErrorSreen,
    TResult? Function(ContentScreen value)? contentScreen,
    TResult? Function(EmptySreen value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopUpSuccess value)? popUpSuccess,
    TResult Function(PopUpError value)? popUpError,
    TResult Function(PopUpServerError value)? popUpServerError,
    TResult Function(PopUpLoading value)? popUpLoading,
    TResult Function(PopUpForm value)? popUpForm,
    TResult Function(FullErrorSreen value)? fullErrorSreen,
    TResult Function(ContentScreen value)? contentScreen,
    TResult Function(EmptySreen value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateRendererEventCopyWith<$Res> {
  factory $StateRendererEventCopyWith(
          StateRendererEvent value, $Res Function(StateRendererEvent) then) =
      _$StateRendererEventCopyWithImpl<$Res, StateRendererEvent>;
}

/// @nodoc
class _$StateRendererEventCopyWithImpl<$Res, $Val extends StateRendererEvent>
    implements $StateRendererEventCopyWith<$Res> {
  _$StateRendererEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PopUpSuccessCopyWith<$Res> {
  factory _$$PopUpSuccessCopyWith(
          _$PopUpSuccess value, $Res Function(_$PopUpSuccess) then) =
      __$$PopUpSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String message, bool popPrevioues});
}

/// @nodoc
class __$$PopUpSuccessCopyWithImpl<$Res>
    extends _$StateRendererEventCopyWithImpl<$Res, _$PopUpSuccess>
    implements _$$PopUpSuccessCopyWith<$Res> {
  __$$PopUpSuccessCopyWithImpl(
      _$PopUpSuccess _value, $Res Function(_$PopUpSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
    Object? popPrevioues = null,
  }) {
    return _then(_$PopUpSuccess(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == popPrevioues
          ? _value.popPrevioues
          : popPrevioues // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PopUpSuccess implements PopUpSuccess {
  const _$PopUpSuccess(this.title, this.message, this.popPrevioues);

  @override
  final String title;
  @override
  final String message;
  @override
  final bool popPrevioues;

  @override
  String toString() {
    return 'StateRendererEvent.popUpSuccess(title: $title, message: $message, popPrevioues: $popPrevioues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopUpSuccess &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.popPrevioues, popPrevioues) ||
                other.popPrevioues == popPrevioues));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, message, popPrevioues);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopUpSuccessCopyWith<_$PopUpSuccess> get copyWith =>
      __$$PopUpSuccessCopyWithImpl<_$PopUpSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String message, bool popPrevioues)
        popUpSuccess,
    required TResult Function(String title, String message, bool popPrevioues)
        popUpError,
    required TResult Function(String title, String message) popUpServerError,
    required TResult Function(String title, String message, bool popPrevioues)
        popUpLoading,
    required TResult Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)
        popUpForm,
    required TResult Function(String title, String message, bool popPrevioues)
        fullErrorSreen,
    required TResult Function() contentScreen,
    required TResult Function() empty,
  }) {
    return popUpSuccess(title, message, popPrevioues);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpSuccess,
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpError,
    TResult? Function(String title, String message)? popUpServerError,
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpLoading,
    TResult? Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)?
        popUpForm,
    TResult? Function(String title, String message, bool popPrevioues)?
        fullErrorSreen,
    TResult? Function()? contentScreen,
    TResult? Function()? empty,
  }) {
    return popUpSuccess?.call(title, message, popPrevioues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String message, bool popPrevioues)?
        popUpSuccess,
    TResult Function(String title, String message, bool popPrevioues)?
        popUpError,
    TResult Function(String title, String message)? popUpServerError,
    TResult Function(String title, String message, bool popPrevioues)?
        popUpLoading,
    TResult Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)?
        popUpForm,
    TResult Function(String title, String message, bool popPrevioues)?
        fullErrorSreen,
    TResult Function()? contentScreen,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (popUpSuccess != null) {
      return popUpSuccess(title, message, popPrevioues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopUpSuccess value) popUpSuccess,
    required TResult Function(PopUpError value) popUpError,
    required TResult Function(PopUpServerError value) popUpServerError,
    required TResult Function(PopUpLoading value) popUpLoading,
    required TResult Function(PopUpForm value) popUpForm,
    required TResult Function(FullErrorSreen value) fullErrorSreen,
    required TResult Function(ContentScreen value) contentScreen,
    required TResult Function(EmptySreen value) empty,
  }) {
    return popUpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PopUpSuccess value)? popUpSuccess,
    TResult? Function(PopUpError value)? popUpError,
    TResult? Function(PopUpServerError value)? popUpServerError,
    TResult? Function(PopUpLoading value)? popUpLoading,
    TResult? Function(PopUpForm value)? popUpForm,
    TResult? Function(FullErrorSreen value)? fullErrorSreen,
    TResult? Function(ContentScreen value)? contentScreen,
    TResult? Function(EmptySreen value)? empty,
  }) {
    return popUpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopUpSuccess value)? popUpSuccess,
    TResult Function(PopUpError value)? popUpError,
    TResult Function(PopUpServerError value)? popUpServerError,
    TResult Function(PopUpLoading value)? popUpLoading,
    TResult Function(PopUpForm value)? popUpForm,
    TResult Function(FullErrorSreen value)? fullErrorSreen,
    TResult Function(ContentScreen value)? contentScreen,
    TResult Function(EmptySreen value)? empty,
    required TResult orElse(),
  }) {
    if (popUpSuccess != null) {
      return popUpSuccess(this);
    }
    return orElse();
  }
}

abstract class PopUpSuccess implements StateRendererEvent {
  const factory PopUpSuccess(
          final String title, final String message, final bool popPrevioues) =
      _$PopUpSuccess;

  String get title;
  String get message;
  bool get popPrevioues;
  @JsonKey(ignore: true)
  _$$PopUpSuccessCopyWith<_$PopUpSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PopUpErrorCopyWith<$Res> {
  factory _$$PopUpErrorCopyWith(
          _$PopUpError value, $Res Function(_$PopUpError) then) =
      __$$PopUpErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String message, bool popPrevioues});
}

/// @nodoc
class __$$PopUpErrorCopyWithImpl<$Res>
    extends _$StateRendererEventCopyWithImpl<$Res, _$PopUpError>
    implements _$$PopUpErrorCopyWith<$Res> {
  __$$PopUpErrorCopyWithImpl(
      _$PopUpError _value, $Res Function(_$PopUpError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
    Object? popPrevioues = null,
  }) {
    return _then(_$PopUpError(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == popPrevioues
          ? _value.popPrevioues
          : popPrevioues // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PopUpError implements PopUpError {
  const _$PopUpError(this.title, this.message, this.popPrevioues);

  @override
  final String title;
  @override
  final String message;
  @override
  final bool popPrevioues;

  @override
  String toString() {
    return 'StateRendererEvent.popUpError(title: $title, message: $message, popPrevioues: $popPrevioues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopUpError &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.popPrevioues, popPrevioues) ||
                other.popPrevioues == popPrevioues));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, message, popPrevioues);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopUpErrorCopyWith<_$PopUpError> get copyWith =>
      __$$PopUpErrorCopyWithImpl<_$PopUpError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String message, bool popPrevioues)
        popUpSuccess,
    required TResult Function(String title, String message, bool popPrevioues)
        popUpError,
    required TResult Function(String title, String message) popUpServerError,
    required TResult Function(String title, String message, bool popPrevioues)
        popUpLoading,
    required TResult Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)
        popUpForm,
    required TResult Function(String title, String message, bool popPrevioues)
        fullErrorSreen,
    required TResult Function() contentScreen,
    required TResult Function() empty,
  }) {
    return popUpError(title, message, popPrevioues);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpSuccess,
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpError,
    TResult? Function(String title, String message)? popUpServerError,
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpLoading,
    TResult? Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)?
        popUpForm,
    TResult? Function(String title, String message, bool popPrevioues)?
        fullErrorSreen,
    TResult? Function()? contentScreen,
    TResult? Function()? empty,
  }) {
    return popUpError?.call(title, message, popPrevioues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String message, bool popPrevioues)?
        popUpSuccess,
    TResult Function(String title, String message, bool popPrevioues)?
        popUpError,
    TResult Function(String title, String message)? popUpServerError,
    TResult Function(String title, String message, bool popPrevioues)?
        popUpLoading,
    TResult Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)?
        popUpForm,
    TResult Function(String title, String message, bool popPrevioues)?
        fullErrorSreen,
    TResult Function()? contentScreen,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (popUpError != null) {
      return popUpError(title, message, popPrevioues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopUpSuccess value) popUpSuccess,
    required TResult Function(PopUpError value) popUpError,
    required TResult Function(PopUpServerError value) popUpServerError,
    required TResult Function(PopUpLoading value) popUpLoading,
    required TResult Function(PopUpForm value) popUpForm,
    required TResult Function(FullErrorSreen value) fullErrorSreen,
    required TResult Function(ContentScreen value) contentScreen,
    required TResult Function(EmptySreen value) empty,
  }) {
    return popUpError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PopUpSuccess value)? popUpSuccess,
    TResult? Function(PopUpError value)? popUpError,
    TResult? Function(PopUpServerError value)? popUpServerError,
    TResult? Function(PopUpLoading value)? popUpLoading,
    TResult? Function(PopUpForm value)? popUpForm,
    TResult? Function(FullErrorSreen value)? fullErrorSreen,
    TResult? Function(ContentScreen value)? contentScreen,
    TResult? Function(EmptySreen value)? empty,
  }) {
    return popUpError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopUpSuccess value)? popUpSuccess,
    TResult Function(PopUpError value)? popUpError,
    TResult Function(PopUpServerError value)? popUpServerError,
    TResult Function(PopUpLoading value)? popUpLoading,
    TResult Function(PopUpForm value)? popUpForm,
    TResult Function(FullErrorSreen value)? fullErrorSreen,
    TResult Function(ContentScreen value)? contentScreen,
    TResult Function(EmptySreen value)? empty,
    required TResult orElse(),
  }) {
    if (popUpError != null) {
      return popUpError(this);
    }
    return orElse();
  }
}

abstract class PopUpError implements StateRendererEvent {
  const factory PopUpError(
          final String title, final String message, final bool popPrevioues) =
      _$PopUpError;

  String get title;
  String get message;
  bool get popPrevioues;
  @JsonKey(ignore: true)
  _$$PopUpErrorCopyWith<_$PopUpError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PopUpServerErrorCopyWith<$Res> {
  factory _$$PopUpServerErrorCopyWith(
          _$PopUpServerError value, $Res Function(_$PopUpServerError) then) =
      __$$PopUpServerErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String message});
}

/// @nodoc
class __$$PopUpServerErrorCopyWithImpl<$Res>
    extends _$StateRendererEventCopyWithImpl<$Res, _$PopUpServerError>
    implements _$$PopUpServerErrorCopyWith<$Res> {
  __$$PopUpServerErrorCopyWithImpl(
      _$PopUpServerError _value, $Res Function(_$PopUpServerError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
  }) {
    return _then(_$PopUpServerError(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PopUpServerError implements PopUpServerError {
  const _$PopUpServerError(this.title, this.message);

  @override
  final String title;
  @override
  final String message;

  @override
  String toString() {
    return 'StateRendererEvent.popUpServerError(title: $title, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopUpServerError &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopUpServerErrorCopyWith<_$PopUpServerError> get copyWith =>
      __$$PopUpServerErrorCopyWithImpl<_$PopUpServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String message, bool popPrevioues)
        popUpSuccess,
    required TResult Function(String title, String message, bool popPrevioues)
        popUpError,
    required TResult Function(String title, String message) popUpServerError,
    required TResult Function(String title, String message, bool popPrevioues)
        popUpLoading,
    required TResult Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)
        popUpForm,
    required TResult Function(String title, String message, bool popPrevioues)
        fullErrorSreen,
    required TResult Function() contentScreen,
    required TResult Function() empty,
  }) {
    return popUpServerError(title, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpSuccess,
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpError,
    TResult? Function(String title, String message)? popUpServerError,
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpLoading,
    TResult? Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)?
        popUpForm,
    TResult? Function(String title, String message, bool popPrevioues)?
        fullErrorSreen,
    TResult? Function()? contentScreen,
    TResult? Function()? empty,
  }) {
    return popUpServerError?.call(title, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String message, bool popPrevioues)?
        popUpSuccess,
    TResult Function(String title, String message, bool popPrevioues)?
        popUpError,
    TResult Function(String title, String message)? popUpServerError,
    TResult Function(String title, String message, bool popPrevioues)?
        popUpLoading,
    TResult Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)?
        popUpForm,
    TResult Function(String title, String message, bool popPrevioues)?
        fullErrorSreen,
    TResult Function()? contentScreen,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (popUpServerError != null) {
      return popUpServerError(title, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopUpSuccess value) popUpSuccess,
    required TResult Function(PopUpError value) popUpError,
    required TResult Function(PopUpServerError value) popUpServerError,
    required TResult Function(PopUpLoading value) popUpLoading,
    required TResult Function(PopUpForm value) popUpForm,
    required TResult Function(FullErrorSreen value) fullErrorSreen,
    required TResult Function(ContentScreen value) contentScreen,
    required TResult Function(EmptySreen value) empty,
  }) {
    return popUpServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PopUpSuccess value)? popUpSuccess,
    TResult? Function(PopUpError value)? popUpError,
    TResult? Function(PopUpServerError value)? popUpServerError,
    TResult? Function(PopUpLoading value)? popUpLoading,
    TResult? Function(PopUpForm value)? popUpForm,
    TResult? Function(FullErrorSreen value)? fullErrorSreen,
    TResult? Function(ContentScreen value)? contentScreen,
    TResult? Function(EmptySreen value)? empty,
  }) {
    return popUpServerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopUpSuccess value)? popUpSuccess,
    TResult Function(PopUpError value)? popUpError,
    TResult Function(PopUpServerError value)? popUpServerError,
    TResult Function(PopUpLoading value)? popUpLoading,
    TResult Function(PopUpForm value)? popUpForm,
    TResult Function(FullErrorSreen value)? fullErrorSreen,
    TResult Function(ContentScreen value)? contentScreen,
    TResult Function(EmptySreen value)? empty,
    required TResult orElse(),
  }) {
    if (popUpServerError != null) {
      return popUpServerError(this);
    }
    return orElse();
  }
}

abstract class PopUpServerError implements StateRendererEvent {
  const factory PopUpServerError(final String title, final String message) =
      _$PopUpServerError;

  String get title;
  String get message;
  @JsonKey(ignore: true)
  _$$PopUpServerErrorCopyWith<_$PopUpServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PopUpLoadingCopyWith<$Res> {
  factory _$$PopUpLoadingCopyWith(
          _$PopUpLoading value, $Res Function(_$PopUpLoading) then) =
      __$$PopUpLoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String message, bool popPrevioues});
}

/// @nodoc
class __$$PopUpLoadingCopyWithImpl<$Res>
    extends _$StateRendererEventCopyWithImpl<$Res, _$PopUpLoading>
    implements _$$PopUpLoadingCopyWith<$Res> {
  __$$PopUpLoadingCopyWithImpl(
      _$PopUpLoading _value, $Res Function(_$PopUpLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
    Object? popPrevioues = null,
  }) {
    return _then(_$PopUpLoading(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == popPrevioues
          ? _value.popPrevioues
          : popPrevioues // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PopUpLoading implements PopUpLoading {
  const _$PopUpLoading(this.title, this.message, this.popPrevioues);

  @override
  final String title;
  @override
  final String message;
  @override
  final bool popPrevioues;

  @override
  String toString() {
    return 'StateRendererEvent.popUpLoading(title: $title, message: $message, popPrevioues: $popPrevioues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopUpLoading &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.popPrevioues, popPrevioues) ||
                other.popPrevioues == popPrevioues));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, message, popPrevioues);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopUpLoadingCopyWith<_$PopUpLoading> get copyWith =>
      __$$PopUpLoadingCopyWithImpl<_$PopUpLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String message, bool popPrevioues)
        popUpSuccess,
    required TResult Function(String title, String message, bool popPrevioues)
        popUpError,
    required TResult Function(String title, String message) popUpServerError,
    required TResult Function(String title, String message, bool popPrevioues)
        popUpLoading,
    required TResult Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)
        popUpForm,
    required TResult Function(String title, String message, bool popPrevioues)
        fullErrorSreen,
    required TResult Function() contentScreen,
    required TResult Function() empty,
  }) {
    return popUpLoading(title, message, popPrevioues);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpSuccess,
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpError,
    TResult? Function(String title, String message)? popUpServerError,
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpLoading,
    TResult? Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)?
        popUpForm,
    TResult? Function(String title, String message, bool popPrevioues)?
        fullErrorSreen,
    TResult? Function()? contentScreen,
    TResult? Function()? empty,
  }) {
    return popUpLoading?.call(title, message, popPrevioues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String message, bool popPrevioues)?
        popUpSuccess,
    TResult Function(String title, String message, bool popPrevioues)?
        popUpError,
    TResult Function(String title, String message)? popUpServerError,
    TResult Function(String title, String message, bool popPrevioues)?
        popUpLoading,
    TResult Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)?
        popUpForm,
    TResult Function(String title, String message, bool popPrevioues)?
        fullErrorSreen,
    TResult Function()? contentScreen,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (popUpLoading != null) {
      return popUpLoading(title, message, popPrevioues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopUpSuccess value) popUpSuccess,
    required TResult Function(PopUpError value) popUpError,
    required TResult Function(PopUpServerError value) popUpServerError,
    required TResult Function(PopUpLoading value) popUpLoading,
    required TResult Function(PopUpForm value) popUpForm,
    required TResult Function(FullErrorSreen value) fullErrorSreen,
    required TResult Function(ContentScreen value) contentScreen,
    required TResult Function(EmptySreen value) empty,
  }) {
    return popUpLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PopUpSuccess value)? popUpSuccess,
    TResult? Function(PopUpError value)? popUpError,
    TResult? Function(PopUpServerError value)? popUpServerError,
    TResult? Function(PopUpLoading value)? popUpLoading,
    TResult? Function(PopUpForm value)? popUpForm,
    TResult? Function(FullErrorSreen value)? fullErrorSreen,
    TResult? Function(ContentScreen value)? contentScreen,
    TResult? Function(EmptySreen value)? empty,
  }) {
    return popUpLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopUpSuccess value)? popUpSuccess,
    TResult Function(PopUpError value)? popUpError,
    TResult Function(PopUpServerError value)? popUpServerError,
    TResult Function(PopUpLoading value)? popUpLoading,
    TResult Function(PopUpForm value)? popUpForm,
    TResult Function(FullErrorSreen value)? fullErrorSreen,
    TResult Function(ContentScreen value)? contentScreen,
    TResult Function(EmptySreen value)? empty,
    required TResult orElse(),
  }) {
    if (popUpLoading != null) {
      return popUpLoading(this);
    }
    return orElse();
  }
}

abstract class PopUpLoading implements StateRendererEvent {
  const factory PopUpLoading(
          final String title, final String message, final bool popPrevioues) =
      _$PopUpLoading;

  String get title;
  String get message;
  bool get popPrevioues;
  @JsonKey(ignore: true)
  _$$PopUpLoadingCopyWith<_$PopUpLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PopUpFormCopyWith<$Res> {
  factory _$$PopUpFormCopyWith(
          _$PopUpForm value, $Res Function(_$PopUpForm) then) =
      __$$PopUpFormCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String title,
      Widget bodyWidget,
      double? width,
      double? height,
      bool popPrevioues});
}

/// @nodoc
class __$$PopUpFormCopyWithImpl<$Res>
    extends _$StateRendererEventCopyWithImpl<$Res, _$PopUpForm>
    implements _$$PopUpFormCopyWith<$Res> {
  __$$PopUpFormCopyWithImpl(
      _$PopUpForm _value, $Res Function(_$PopUpForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? bodyWidget = null,
    Object? width = freezed,
    Object? height = freezed,
    Object? popPrevioues = null,
  }) {
    return _then(_$PopUpForm(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == bodyWidget
          ? _value.bodyWidget
          : bodyWidget // ignore: cast_nullable_to_non_nullable
              as Widget,
      freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      null == popPrevioues
          ? _value.popPrevioues
          : popPrevioues // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PopUpForm implements PopUpForm {
  const _$PopUpForm(
      this.title, this.bodyWidget, this.width, this.height, this.popPrevioues);

  @override
  final String title;
  @override
  final Widget bodyWidget;
  @override
  final double? width;
  @override
  final double? height;
  @override
  final bool popPrevioues;

  @override
  String toString() {
    return 'StateRendererEvent.popUpForm(title: $title, bodyWidget: $bodyWidget, width: $width, height: $height, popPrevioues: $popPrevioues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopUpForm &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.bodyWidget, bodyWidget) ||
                other.bodyWidget == bodyWidget) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.popPrevioues, popPrevioues) ||
                other.popPrevioues == popPrevioues));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, bodyWidget, width, height, popPrevioues);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopUpFormCopyWith<_$PopUpForm> get copyWith =>
      __$$PopUpFormCopyWithImpl<_$PopUpForm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String message, bool popPrevioues)
        popUpSuccess,
    required TResult Function(String title, String message, bool popPrevioues)
        popUpError,
    required TResult Function(String title, String message) popUpServerError,
    required TResult Function(String title, String message, bool popPrevioues)
        popUpLoading,
    required TResult Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)
        popUpForm,
    required TResult Function(String title, String message, bool popPrevioues)
        fullErrorSreen,
    required TResult Function() contentScreen,
    required TResult Function() empty,
  }) {
    return popUpForm(title, bodyWidget, width, height, popPrevioues);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpSuccess,
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpError,
    TResult? Function(String title, String message)? popUpServerError,
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpLoading,
    TResult? Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)?
        popUpForm,
    TResult? Function(String title, String message, bool popPrevioues)?
        fullErrorSreen,
    TResult? Function()? contentScreen,
    TResult? Function()? empty,
  }) {
    return popUpForm?.call(title, bodyWidget, width, height, popPrevioues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String message, bool popPrevioues)?
        popUpSuccess,
    TResult Function(String title, String message, bool popPrevioues)?
        popUpError,
    TResult Function(String title, String message)? popUpServerError,
    TResult Function(String title, String message, bool popPrevioues)?
        popUpLoading,
    TResult Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)?
        popUpForm,
    TResult Function(String title, String message, bool popPrevioues)?
        fullErrorSreen,
    TResult Function()? contentScreen,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (popUpForm != null) {
      return popUpForm(title, bodyWidget, width, height, popPrevioues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopUpSuccess value) popUpSuccess,
    required TResult Function(PopUpError value) popUpError,
    required TResult Function(PopUpServerError value) popUpServerError,
    required TResult Function(PopUpLoading value) popUpLoading,
    required TResult Function(PopUpForm value) popUpForm,
    required TResult Function(FullErrorSreen value) fullErrorSreen,
    required TResult Function(ContentScreen value) contentScreen,
    required TResult Function(EmptySreen value) empty,
  }) {
    return popUpForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PopUpSuccess value)? popUpSuccess,
    TResult? Function(PopUpError value)? popUpError,
    TResult? Function(PopUpServerError value)? popUpServerError,
    TResult? Function(PopUpLoading value)? popUpLoading,
    TResult? Function(PopUpForm value)? popUpForm,
    TResult? Function(FullErrorSreen value)? fullErrorSreen,
    TResult? Function(ContentScreen value)? contentScreen,
    TResult? Function(EmptySreen value)? empty,
  }) {
    return popUpForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopUpSuccess value)? popUpSuccess,
    TResult Function(PopUpError value)? popUpError,
    TResult Function(PopUpServerError value)? popUpServerError,
    TResult Function(PopUpLoading value)? popUpLoading,
    TResult Function(PopUpForm value)? popUpForm,
    TResult Function(FullErrorSreen value)? fullErrorSreen,
    TResult Function(ContentScreen value)? contentScreen,
    TResult Function(EmptySreen value)? empty,
    required TResult orElse(),
  }) {
    if (popUpForm != null) {
      return popUpForm(this);
    }
    return orElse();
  }
}

abstract class PopUpForm implements StateRendererEvent {
  const factory PopUpForm(
      final String title,
      final Widget bodyWidget,
      final double? width,
      final double? height,
      final bool popPrevioues) = _$PopUpForm;

  String get title;
  Widget get bodyWidget;
  double? get width;
  double? get height;
  bool get popPrevioues;
  @JsonKey(ignore: true)
  _$$PopUpFormCopyWith<_$PopUpForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FullErrorSreenCopyWith<$Res> {
  factory _$$FullErrorSreenCopyWith(
          _$FullErrorSreen value, $Res Function(_$FullErrorSreen) then) =
      __$$FullErrorSreenCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String message, bool popPrevioues});
}

/// @nodoc
class __$$FullErrorSreenCopyWithImpl<$Res>
    extends _$StateRendererEventCopyWithImpl<$Res, _$FullErrorSreen>
    implements _$$FullErrorSreenCopyWith<$Res> {
  __$$FullErrorSreenCopyWithImpl(
      _$FullErrorSreen _value, $Res Function(_$FullErrorSreen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
    Object? popPrevioues = null,
  }) {
    return _then(_$FullErrorSreen(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == popPrevioues
          ? _value.popPrevioues
          : popPrevioues // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FullErrorSreen implements FullErrorSreen {
  const _$FullErrorSreen(this.title, this.message, this.popPrevioues);

  @override
  final String title;
  @override
  final String message;
  @override
  final bool popPrevioues;

  @override
  String toString() {
    return 'StateRendererEvent.fullErrorSreen(title: $title, message: $message, popPrevioues: $popPrevioues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FullErrorSreen &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.popPrevioues, popPrevioues) ||
                other.popPrevioues == popPrevioues));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, message, popPrevioues);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FullErrorSreenCopyWith<_$FullErrorSreen> get copyWith =>
      __$$FullErrorSreenCopyWithImpl<_$FullErrorSreen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String message, bool popPrevioues)
        popUpSuccess,
    required TResult Function(String title, String message, bool popPrevioues)
        popUpError,
    required TResult Function(String title, String message) popUpServerError,
    required TResult Function(String title, String message, bool popPrevioues)
        popUpLoading,
    required TResult Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)
        popUpForm,
    required TResult Function(String title, String message, bool popPrevioues)
        fullErrorSreen,
    required TResult Function() contentScreen,
    required TResult Function() empty,
  }) {
    return fullErrorSreen(title, message, popPrevioues);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpSuccess,
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpError,
    TResult? Function(String title, String message)? popUpServerError,
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpLoading,
    TResult? Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)?
        popUpForm,
    TResult? Function(String title, String message, bool popPrevioues)?
        fullErrorSreen,
    TResult? Function()? contentScreen,
    TResult? Function()? empty,
  }) {
    return fullErrorSreen?.call(title, message, popPrevioues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String message, bool popPrevioues)?
        popUpSuccess,
    TResult Function(String title, String message, bool popPrevioues)?
        popUpError,
    TResult Function(String title, String message)? popUpServerError,
    TResult Function(String title, String message, bool popPrevioues)?
        popUpLoading,
    TResult Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)?
        popUpForm,
    TResult Function(String title, String message, bool popPrevioues)?
        fullErrorSreen,
    TResult Function()? contentScreen,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (fullErrorSreen != null) {
      return fullErrorSreen(title, message, popPrevioues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopUpSuccess value) popUpSuccess,
    required TResult Function(PopUpError value) popUpError,
    required TResult Function(PopUpServerError value) popUpServerError,
    required TResult Function(PopUpLoading value) popUpLoading,
    required TResult Function(PopUpForm value) popUpForm,
    required TResult Function(FullErrorSreen value) fullErrorSreen,
    required TResult Function(ContentScreen value) contentScreen,
    required TResult Function(EmptySreen value) empty,
  }) {
    return fullErrorSreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PopUpSuccess value)? popUpSuccess,
    TResult? Function(PopUpError value)? popUpError,
    TResult? Function(PopUpServerError value)? popUpServerError,
    TResult? Function(PopUpLoading value)? popUpLoading,
    TResult? Function(PopUpForm value)? popUpForm,
    TResult? Function(FullErrorSreen value)? fullErrorSreen,
    TResult? Function(ContentScreen value)? contentScreen,
    TResult? Function(EmptySreen value)? empty,
  }) {
    return fullErrorSreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopUpSuccess value)? popUpSuccess,
    TResult Function(PopUpError value)? popUpError,
    TResult Function(PopUpServerError value)? popUpServerError,
    TResult Function(PopUpLoading value)? popUpLoading,
    TResult Function(PopUpForm value)? popUpForm,
    TResult Function(FullErrorSreen value)? fullErrorSreen,
    TResult Function(ContentScreen value)? contentScreen,
    TResult Function(EmptySreen value)? empty,
    required TResult orElse(),
  }) {
    if (fullErrorSreen != null) {
      return fullErrorSreen(this);
    }
    return orElse();
  }
}

abstract class FullErrorSreen implements StateRendererEvent {
  const factory FullErrorSreen(
          final String title, final String message, final bool popPrevioues) =
      _$FullErrorSreen;

  String get title;
  String get message;
  bool get popPrevioues;
  @JsonKey(ignore: true)
  _$$FullErrorSreenCopyWith<_$FullErrorSreen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentScreenCopyWith<$Res> {
  factory _$$ContentScreenCopyWith(
          _$ContentScreen value, $Res Function(_$ContentScreen) then) =
      __$$ContentScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContentScreenCopyWithImpl<$Res>
    extends _$StateRendererEventCopyWithImpl<$Res, _$ContentScreen>
    implements _$$ContentScreenCopyWith<$Res> {
  __$$ContentScreenCopyWithImpl(
      _$ContentScreen _value, $Res Function(_$ContentScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ContentScreen implements ContentScreen {
  const _$ContentScreen();

  @override
  String toString() {
    return 'StateRendererEvent.contentScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ContentScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String message, bool popPrevioues)
        popUpSuccess,
    required TResult Function(String title, String message, bool popPrevioues)
        popUpError,
    required TResult Function(String title, String message) popUpServerError,
    required TResult Function(String title, String message, bool popPrevioues)
        popUpLoading,
    required TResult Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)
        popUpForm,
    required TResult Function(String title, String message, bool popPrevioues)
        fullErrorSreen,
    required TResult Function() contentScreen,
    required TResult Function() empty,
  }) {
    return contentScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpSuccess,
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpError,
    TResult? Function(String title, String message)? popUpServerError,
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpLoading,
    TResult? Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)?
        popUpForm,
    TResult? Function(String title, String message, bool popPrevioues)?
        fullErrorSreen,
    TResult? Function()? contentScreen,
    TResult? Function()? empty,
  }) {
    return contentScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String message, bool popPrevioues)?
        popUpSuccess,
    TResult Function(String title, String message, bool popPrevioues)?
        popUpError,
    TResult Function(String title, String message)? popUpServerError,
    TResult Function(String title, String message, bool popPrevioues)?
        popUpLoading,
    TResult Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)?
        popUpForm,
    TResult Function(String title, String message, bool popPrevioues)?
        fullErrorSreen,
    TResult Function()? contentScreen,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (contentScreen != null) {
      return contentScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopUpSuccess value) popUpSuccess,
    required TResult Function(PopUpError value) popUpError,
    required TResult Function(PopUpServerError value) popUpServerError,
    required TResult Function(PopUpLoading value) popUpLoading,
    required TResult Function(PopUpForm value) popUpForm,
    required TResult Function(FullErrorSreen value) fullErrorSreen,
    required TResult Function(ContentScreen value) contentScreen,
    required TResult Function(EmptySreen value) empty,
  }) {
    return contentScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PopUpSuccess value)? popUpSuccess,
    TResult? Function(PopUpError value)? popUpError,
    TResult? Function(PopUpServerError value)? popUpServerError,
    TResult? Function(PopUpLoading value)? popUpLoading,
    TResult? Function(PopUpForm value)? popUpForm,
    TResult? Function(FullErrorSreen value)? fullErrorSreen,
    TResult? Function(ContentScreen value)? contentScreen,
    TResult? Function(EmptySreen value)? empty,
  }) {
    return contentScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopUpSuccess value)? popUpSuccess,
    TResult Function(PopUpError value)? popUpError,
    TResult Function(PopUpServerError value)? popUpServerError,
    TResult Function(PopUpLoading value)? popUpLoading,
    TResult Function(PopUpForm value)? popUpForm,
    TResult Function(FullErrorSreen value)? fullErrorSreen,
    TResult Function(ContentScreen value)? contentScreen,
    TResult Function(EmptySreen value)? empty,
    required TResult orElse(),
  }) {
    if (contentScreen != null) {
      return contentScreen(this);
    }
    return orElse();
  }
}

abstract class ContentScreen implements StateRendererEvent {
  const factory ContentScreen() = _$ContentScreen;
}

/// @nodoc
abstract class _$$EmptySreenCopyWith<$Res> {
  factory _$$EmptySreenCopyWith(
          _$EmptySreen value, $Res Function(_$EmptySreen) then) =
      __$$EmptySreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptySreenCopyWithImpl<$Res>
    extends _$StateRendererEventCopyWithImpl<$Res, _$EmptySreen>
    implements _$$EmptySreenCopyWith<$Res> {
  __$$EmptySreenCopyWithImpl(
      _$EmptySreen _value, $Res Function(_$EmptySreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptySreen implements EmptySreen {
  const _$EmptySreen();

  @override
  String toString() {
    return 'StateRendererEvent.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptySreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String message, bool popPrevioues)
        popUpSuccess,
    required TResult Function(String title, String message, bool popPrevioues)
        popUpError,
    required TResult Function(String title, String message) popUpServerError,
    required TResult Function(String title, String message, bool popPrevioues)
        popUpLoading,
    required TResult Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)
        popUpForm,
    required TResult Function(String title, String message, bool popPrevioues)
        fullErrorSreen,
    required TResult Function() contentScreen,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpSuccess,
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpError,
    TResult? Function(String title, String message)? popUpServerError,
    TResult? Function(String title, String message, bool popPrevioues)?
        popUpLoading,
    TResult? Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)?
        popUpForm,
    TResult? Function(String title, String message, bool popPrevioues)?
        fullErrorSreen,
    TResult? Function()? contentScreen,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String message, bool popPrevioues)?
        popUpSuccess,
    TResult Function(String title, String message, bool popPrevioues)?
        popUpError,
    TResult Function(String title, String message)? popUpServerError,
    TResult Function(String title, String message, bool popPrevioues)?
        popUpLoading,
    TResult Function(String title, Widget bodyWidget, double? width,
            double? height, bool popPrevioues)?
        popUpForm,
    TResult Function(String title, String message, bool popPrevioues)?
        fullErrorSreen,
    TResult Function()? contentScreen,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopUpSuccess value) popUpSuccess,
    required TResult Function(PopUpError value) popUpError,
    required TResult Function(PopUpServerError value) popUpServerError,
    required TResult Function(PopUpLoading value) popUpLoading,
    required TResult Function(PopUpForm value) popUpForm,
    required TResult Function(FullErrorSreen value) fullErrorSreen,
    required TResult Function(ContentScreen value) contentScreen,
    required TResult Function(EmptySreen value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PopUpSuccess value)? popUpSuccess,
    TResult? Function(PopUpError value)? popUpError,
    TResult? Function(PopUpServerError value)? popUpServerError,
    TResult? Function(PopUpLoading value)? popUpLoading,
    TResult? Function(PopUpForm value)? popUpForm,
    TResult? Function(FullErrorSreen value)? fullErrorSreen,
    TResult? Function(ContentScreen value)? contentScreen,
    TResult? Function(EmptySreen value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopUpSuccess value)? popUpSuccess,
    TResult Function(PopUpError value)? popUpError,
    TResult Function(PopUpServerError value)? popUpServerError,
    TResult Function(PopUpLoading value)? popUpLoading,
    TResult Function(PopUpForm value)? popUpForm,
    TResult Function(FullErrorSreen value)? fullErrorSreen,
    TResult Function(ContentScreen value)? contentScreen,
    TResult Function(EmptySreen value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptySreen implements StateRendererEvent {
  const factory EmptySreen() = _$EmptySreen;
}

/// @nodoc
mixin _$StateRendererState {
  String get message => throw _privateConstructorUsedError;
  Function get retryAction => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get popPrevioues => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  Widget? get body => throw _privateConstructorUsedError;
  StateRendererType get stateRender => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateRendererStateCopyWith<StateRendererState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateRendererStateCopyWith<$Res> {
  factory $StateRendererStateCopyWith(
          StateRendererState value, $Res Function(StateRendererState) then) =
      _$StateRendererStateCopyWithImpl<$Res, StateRendererState>;
  @useResult
  $Res call(
      {String message,
      Function retryAction,
      String title,
      bool popPrevioues,
      double width,
      double height,
      Widget? body,
      StateRendererType stateRender});
}

/// @nodoc
class _$StateRendererStateCopyWithImpl<$Res, $Val extends StateRendererState>
    implements $StateRendererStateCopyWith<$Res> {
  _$StateRendererStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? retryAction = null,
    Object? title = null,
    Object? popPrevioues = null,
    Object? width = null,
    Object? height = null,
    Object? body = freezed,
    Object? stateRender = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      retryAction: null == retryAction
          ? _value.retryAction
          : retryAction // ignore: cast_nullable_to_non_nullable
              as Function,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      popPrevioues: null == popPrevioues
          ? _value.popPrevioues
          : popPrevioues // ignore: cast_nullable_to_non_nullable
              as bool,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Widget?,
      stateRender: null == stateRender
          ? _value.stateRender
          : stateRender // ignore: cast_nullable_to_non_nullable
              as StateRendererType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StateRendererStateCopyWith<$Res>
    implements $StateRendererStateCopyWith<$Res> {
  factory _$$_StateRendererStateCopyWith(_$_StateRendererState value,
          $Res Function(_$_StateRendererState) then) =
      __$$_StateRendererStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      Function retryAction,
      String title,
      bool popPrevioues,
      double width,
      double height,
      Widget? body,
      StateRendererType stateRender});
}

/// @nodoc
class __$$_StateRendererStateCopyWithImpl<$Res>
    extends _$StateRendererStateCopyWithImpl<$Res, _$_StateRendererState>
    implements _$$_StateRendererStateCopyWith<$Res> {
  __$$_StateRendererStateCopyWithImpl(
      _$_StateRendererState _value, $Res Function(_$_StateRendererState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? retryAction = null,
    Object? title = null,
    Object? popPrevioues = null,
    Object? width = null,
    Object? height = null,
    Object? body = freezed,
    Object? stateRender = null,
  }) {
    return _then(_$_StateRendererState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      retryAction: null == retryAction
          ? _value.retryAction
          : retryAction // ignore: cast_nullable_to_non_nullable
              as Function,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      popPrevioues: null == popPrevioues
          ? _value.popPrevioues
          : popPrevioues // ignore: cast_nullable_to_non_nullable
              as bool,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Widget?,
      stateRender: null == stateRender
          ? _value.stateRender
          : stateRender // ignore: cast_nullable_to_non_nullable
              as StateRendererType,
    ));
  }
}

/// @nodoc

class _$_StateRendererState implements _StateRendererState {
  const _$_StateRendererState(
      {required this.message,
      required this.retryAction,
      required this.title,
      required this.popPrevioues,
      required this.width,
      required this.height,
      this.body,
      required this.stateRender});

  @override
  final String message;
  @override
  final Function retryAction;
  @override
  final String title;
  @override
  final bool popPrevioues;
  @override
  final double width;
  @override
  final double height;
  @override
  final Widget? body;
  @override
  final StateRendererType stateRender;

  @override
  String toString() {
    return 'StateRendererState(message: $message, retryAction: $retryAction, title: $title, popPrevioues: $popPrevioues, width: $width, height: $height, body: $body, stateRender: $stateRender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateRendererState &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.retryAction, retryAction) ||
                other.retryAction == retryAction) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.popPrevioues, popPrevioues) ||
                other.popPrevioues == popPrevioues) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.stateRender, stateRender) ||
                other.stateRender == stateRender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, retryAction, title,
      popPrevioues, width, height, body, stateRender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateRendererStateCopyWith<_$_StateRendererState> get copyWith =>
      __$$_StateRendererStateCopyWithImpl<_$_StateRendererState>(
          this, _$identity);
}

abstract class _StateRendererState implements StateRendererState {
  const factory _StateRendererState(
      {required final String message,
      required final Function retryAction,
      required final String title,
      required final bool popPrevioues,
      required final double width,
      required final double height,
      final Widget? body,
      required final StateRendererType stateRender}) = _$_StateRendererState;

  @override
  String get message;
  @override
  Function get retryAction;
  @override
  String get title;
  @override
  bool get popPrevioues;
  @override
  double get width;
  @override
  double get height;
  @override
  Widget? get body;
  @override
  StateRendererType get stateRender;
  @override
  @JsonKey(ignore: true)
  _$$_StateRendererStateCopyWith<_$_StateRendererState> get copyWith =>
      throw _privateConstructorUsedError;
}
