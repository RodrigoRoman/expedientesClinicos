// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'title_subtitle_image_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TitleSubtitleImageViewModel {
  FullName get title => throw _privateConstructorUsedError;
  FullName get subtitle => throw _privateConstructorUsedError;
  ImageURL get imageURL => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TitleSubtitleImageViewModelCopyWith<TitleSubtitleImageViewModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TitleSubtitleImageViewModelCopyWith<$Res> {
  factory $TitleSubtitleImageViewModelCopyWith(
          TitleSubtitleImageViewModel value,
          $Res Function(TitleSubtitleImageViewModel) then) =
      _$TitleSubtitleImageViewModelCopyWithImpl<$Res,
          TitleSubtitleImageViewModel>;
  @useResult
  $Res call({FullName title, FullName subtitle, ImageURL imageURL});
}

/// @nodoc
class _$TitleSubtitleImageViewModelCopyWithImpl<$Res,
        $Val extends TitleSubtitleImageViewModel>
    implements $TitleSubtitleImageViewModelCopyWith<$Res> {
  _$TitleSubtitleImageViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? imageURL = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as FullName,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as FullName,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as ImageURL,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TitleSubtitleImageViewModelCopyWith<$Res>
    implements $TitleSubtitleImageViewModelCopyWith<$Res> {
  factory _$$_TitleSubtitleImageViewModelCopyWith(
          _$_TitleSubtitleImageViewModel value,
          $Res Function(_$_TitleSubtitleImageViewModel) then) =
      __$$_TitleSubtitleImageViewModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FullName title, FullName subtitle, ImageURL imageURL});
}

/// @nodoc
class __$$_TitleSubtitleImageViewModelCopyWithImpl<$Res>
    extends _$TitleSubtitleImageViewModelCopyWithImpl<$Res,
        _$_TitleSubtitleImageViewModel>
    implements _$$_TitleSubtitleImageViewModelCopyWith<$Res> {
  __$$_TitleSubtitleImageViewModelCopyWithImpl(
      _$_TitleSubtitleImageViewModel _value,
      $Res Function(_$_TitleSubtitleImageViewModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? imageURL = null,
  }) {
    return _then(_$_TitleSubtitleImageViewModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as FullName,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as FullName,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as ImageURL,
    ));
  }
}

/// @nodoc

class _$_TitleSubtitleImageViewModel extends _TitleSubtitleImageViewModel {
  const _$_TitleSubtitleImageViewModel(
      {required this.title, required this.subtitle, required this.imageURL})
      : super._();

  @override
  final FullName title;
  @override
  final FullName subtitle;
  @override
  final ImageURL imageURL;

  @override
  String toString() {
    return 'TitleSubtitleImageViewModel(title: $title, subtitle: $subtitle, imageURL: $imageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TitleSubtitleImageViewModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, subtitle, imageURL);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TitleSubtitleImageViewModelCopyWith<_$_TitleSubtitleImageViewModel>
      get copyWith => __$$_TitleSubtitleImageViewModelCopyWithImpl<
          _$_TitleSubtitleImageViewModel>(this, _$identity);
}

abstract class _TitleSubtitleImageViewModel
    extends TitleSubtitleImageViewModel {
  const factory _TitleSubtitleImageViewModel(
      {required final FullName title,
      required final FullName subtitle,
      required final ImageURL imageURL}) = _$_TitleSubtitleImageViewModel;
  const _TitleSubtitleImageViewModel._() : super._();

  @override
  FullName get title;
  @override
  FullName get subtitle;
  @override
  ImageURL get imageURL;
  @override
  @JsonKey(ignore: true)
  _$$_TitleSubtitleImageViewModelCopyWith<_$_TitleSubtitleImageViewModel>
      get copyWith => throw _privateConstructorUsedError;
}
