// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'indication_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IndicationDto _$IndicationDtoFromJson(Map<String, dynamic> json) {
  return _IndicationDto.fromJson(json);
}

/// @nodoc
mixin _$IndicationDto {
  String get id => throw _privateConstructorUsedError;
  String get indicationName => throw _privateConstructorUsedError;
  CategoryDto get indicationCategory => throw _privateConstructorUsedError;
  int get counter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndicationDtoCopyWith<IndicationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndicationDtoCopyWith<$Res> {
  factory $IndicationDtoCopyWith(
          IndicationDto value, $Res Function(IndicationDto) then) =
      _$IndicationDtoCopyWithImpl<$Res, IndicationDto>;
  @useResult
  $Res call(
      {String id,
      String indicationName,
      CategoryDto indicationCategory,
      int counter});

  $CategoryDtoCopyWith<$Res> get indicationCategory;
}

/// @nodoc
class _$IndicationDtoCopyWithImpl<$Res, $Val extends IndicationDto>
    implements $IndicationDtoCopyWith<$Res> {
  _$IndicationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? indicationName = null,
    Object? indicationCategory = null,
    Object? counter = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      indicationName: null == indicationName
          ? _value.indicationName
          : indicationName // ignore: cast_nullable_to_non_nullable
              as String,
      indicationCategory: null == indicationCategory
          ? _value.indicationCategory
          : indicationCategory // ignore: cast_nullable_to_non_nullable
              as CategoryDto,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryDtoCopyWith<$Res> get indicationCategory {
    return $CategoryDtoCopyWith<$Res>(_value.indicationCategory, (value) {
      return _then(_value.copyWith(indicationCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IndicationDtoImplCopyWith<$Res>
    implements $IndicationDtoCopyWith<$Res> {
  factory _$$IndicationDtoImplCopyWith(
          _$IndicationDtoImpl value, $Res Function(_$IndicationDtoImpl) then) =
      __$$IndicationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String indicationName,
      CategoryDto indicationCategory,
      int counter});

  @override
  $CategoryDtoCopyWith<$Res> get indicationCategory;
}

/// @nodoc
class __$$IndicationDtoImplCopyWithImpl<$Res>
    extends _$IndicationDtoCopyWithImpl<$Res, _$IndicationDtoImpl>
    implements _$$IndicationDtoImplCopyWith<$Res> {
  __$$IndicationDtoImplCopyWithImpl(
      _$IndicationDtoImpl _value, $Res Function(_$IndicationDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? indicationName = null,
    Object? indicationCategory = null,
    Object? counter = null,
  }) {
    return _then(_$IndicationDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      indicationName: null == indicationName
          ? _value.indicationName
          : indicationName // ignore: cast_nullable_to_non_nullable
              as String,
      indicationCategory: null == indicationCategory
          ? _value.indicationCategory
          : indicationCategory // ignore: cast_nullable_to_non_nullable
              as CategoryDto,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndicationDtoImpl extends _IndicationDto {
  const _$IndicationDtoImpl(
      {required this.id,
      required this.indicationName,
      required this.indicationCategory,
      required this.counter})
      : super._();

  factory _$IndicationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndicationDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String indicationName;
  @override
  final CategoryDto indicationCategory;
  @override
  final int counter;

  @override
  String toString() {
    return 'IndicationDto(id: $id, indicationName: $indicationName, indicationCategory: $indicationCategory, counter: $counter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndicationDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.indicationName, indicationName) ||
                other.indicationName == indicationName) &&
            (identical(other.indicationCategory, indicationCategory) ||
                other.indicationCategory == indicationCategory) &&
            (identical(other.counter, counter) || other.counter == counter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, indicationName, indicationCategory, counter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndicationDtoImplCopyWith<_$IndicationDtoImpl> get copyWith =>
      __$$IndicationDtoImplCopyWithImpl<_$IndicationDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndicationDtoImplToJson(
      this,
    );
  }
}

abstract class _IndicationDto extends IndicationDto {
  const factory _IndicationDto(
      {required final String id,
      required final String indicationName,
      required final CategoryDto indicationCategory,
      required final int counter}) = _$IndicationDtoImpl;
  const _IndicationDto._() : super._();

  factory _IndicationDto.fromJson(Map<String, dynamic> json) =
      _$IndicationDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get indicationName;
  @override
  CategoryDto get indicationCategory;
  @override
  int get counter;
  @override
  @JsonKey(ignore: true)
  _$$IndicationDtoImplCopyWith<_$IndicationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
