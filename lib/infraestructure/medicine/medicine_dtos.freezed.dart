// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medicine_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MedicineDto _$MedicineDtoFromJson(Map<String, dynamic> json) {
  return _IngredientVersionDto.fromJson(json);
}

/// @nodoc
mixin _$MedicineDto {
  String get id => throw _privateConstructorUsedError;
  String get comercialName => throw _privateConstructorUsedError;
  String get genericName => throw _privateConstructorUsedError;
  NameAbbreviationDto get measureUnit => throw _privateConstructorUsedError;
  double get amountMeasureUnit => throw _privateConstructorUsedError;
  NameAbbreviationDto get administrationRoute =>
      throw _privateConstructorUsedError;
  NameAbbreviationDto get pharmaceuticalForm =>
      throw _privateConstructorUsedError;
  int get amountPerPackage => throw _privateConstructorUsedError;
  CategoryDto get category => throw _privateConstructorUsedError;
  String get imageURL => throw _privateConstructorUsedError;
  bool get controlled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicineDtoCopyWith<MedicineDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicineDtoCopyWith<$Res> {
  factory $MedicineDtoCopyWith(
          MedicineDto value, $Res Function(MedicineDto) then) =
      _$MedicineDtoCopyWithImpl<$Res, MedicineDto>;
  @useResult
  $Res call(
      {String id,
      String comercialName,
      String genericName,
      NameAbbreviationDto measureUnit,
      double amountMeasureUnit,
      NameAbbreviationDto administrationRoute,
      NameAbbreviationDto pharmaceuticalForm,
      int amountPerPackage,
      CategoryDto category,
      String imageURL,
      bool controlled});

  $NameAbbreviationDtoCopyWith<$Res> get measureUnit;
  $NameAbbreviationDtoCopyWith<$Res> get administrationRoute;
  $NameAbbreviationDtoCopyWith<$Res> get pharmaceuticalForm;
  $CategoryDtoCopyWith<$Res> get category;
}

/// @nodoc
class _$MedicineDtoCopyWithImpl<$Res, $Val extends MedicineDto>
    implements $MedicineDtoCopyWith<$Res> {
  _$MedicineDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? comercialName = null,
    Object? genericName = null,
    Object? measureUnit = null,
    Object? amountMeasureUnit = null,
    Object? administrationRoute = null,
    Object? pharmaceuticalForm = null,
    Object? amountPerPackage = null,
    Object? category = null,
    Object? imageURL = null,
    Object? controlled = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      comercialName: null == comercialName
          ? _value.comercialName
          : comercialName // ignore: cast_nullable_to_non_nullable
              as String,
      genericName: null == genericName
          ? _value.genericName
          : genericName // ignore: cast_nullable_to_non_nullable
              as String,
      measureUnit: null == measureUnit
          ? _value.measureUnit
          : measureUnit // ignore: cast_nullable_to_non_nullable
              as NameAbbreviationDto,
      amountMeasureUnit: null == amountMeasureUnit
          ? _value.amountMeasureUnit
          : amountMeasureUnit // ignore: cast_nullable_to_non_nullable
              as double,
      administrationRoute: null == administrationRoute
          ? _value.administrationRoute
          : administrationRoute // ignore: cast_nullable_to_non_nullable
              as NameAbbreviationDto,
      pharmaceuticalForm: null == pharmaceuticalForm
          ? _value.pharmaceuticalForm
          : pharmaceuticalForm // ignore: cast_nullable_to_non_nullable
              as NameAbbreviationDto,
      amountPerPackage: null == amountPerPackage
          ? _value.amountPerPackage
          : amountPerPackage // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDto,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      controlled: null == controlled
          ? _value.controlled
          : controlled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameAbbreviationDtoCopyWith<$Res> get measureUnit {
    return $NameAbbreviationDtoCopyWith<$Res>(_value.measureUnit, (value) {
      return _then(_value.copyWith(measureUnit: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NameAbbreviationDtoCopyWith<$Res> get administrationRoute {
    return $NameAbbreviationDtoCopyWith<$Res>(_value.administrationRoute,
        (value) {
      return _then(_value.copyWith(administrationRoute: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NameAbbreviationDtoCopyWith<$Res> get pharmaceuticalForm {
    return $NameAbbreviationDtoCopyWith<$Res>(_value.pharmaceuticalForm,
        (value) {
      return _then(_value.copyWith(pharmaceuticalForm: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryDtoCopyWith<$Res> get category {
    return $CategoryDtoCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IngredientVersionDtoCopyWith<$Res>
    implements $MedicineDtoCopyWith<$Res> {
  factory _$$_IngredientVersionDtoCopyWith(_$_IngredientVersionDto value,
          $Res Function(_$_IngredientVersionDto) then) =
      __$$_IngredientVersionDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String comercialName,
      String genericName,
      NameAbbreviationDto measureUnit,
      double amountMeasureUnit,
      NameAbbreviationDto administrationRoute,
      NameAbbreviationDto pharmaceuticalForm,
      int amountPerPackage,
      CategoryDto category,
      String imageURL,
      bool controlled});

  @override
  $NameAbbreviationDtoCopyWith<$Res> get measureUnit;
  @override
  $NameAbbreviationDtoCopyWith<$Res> get administrationRoute;
  @override
  $NameAbbreviationDtoCopyWith<$Res> get pharmaceuticalForm;
  @override
  $CategoryDtoCopyWith<$Res> get category;
}

/// @nodoc
class __$$_IngredientVersionDtoCopyWithImpl<$Res>
    extends _$MedicineDtoCopyWithImpl<$Res, _$_IngredientVersionDto>
    implements _$$_IngredientVersionDtoCopyWith<$Res> {
  __$$_IngredientVersionDtoCopyWithImpl(_$_IngredientVersionDto _value,
      $Res Function(_$_IngredientVersionDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? comercialName = null,
    Object? genericName = null,
    Object? measureUnit = null,
    Object? amountMeasureUnit = null,
    Object? administrationRoute = null,
    Object? pharmaceuticalForm = null,
    Object? amountPerPackage = null,
    Object? category = null,
    Object? imageURL = null,
    Object? controlled = null,
  }) {
    return _then(_$_IngredientVersionDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      comercialName: null == comercialName
          ? _value.comercialName
          : comercialName // ignore: cast_nullable_to_non_nullable
              as String,
      genericName: null == genericName
          ? _value.genericName
          : genericName // ignore: cast_nullable_to_non_nullable
              as String,
      measureUnit: null == measureUnit
          ? _value.measureUnit
          : measureUnit // ignore: cast_nullable_to_non_nullable
              as NameAbbreviationDto,
      amountMeasureUnit: null == amountMeasureUnit
          ? _value.amountMeasureUnit
          : amountMeasureUnit // ignore: cast_nullable_to_non_nullable
              as double,
      administrationRoute: null == administrationRoute
          ? _value.administrationRoute
          : administrationRoute // ignore: cast_nullable_to_non_nullable
              as NameAbbreviationDto,
      pharmaceuticalForm: null == pharmaceuticalForm
          ? _value.pharmaceuticalForm
          : pharmaceuticalForm // ignore: cast_nullable_to_non_nullable
              as NameAbbreviationDto,
      amountPerPackage: null == amountPerPackage
          ? _value.amountPerPackage
          : amountPerPackage // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDto,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      controlled: null == controlled
          ? _value.controlled
          : controlled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IngredientVersionDto extends _IngredientVersionDto {
  const _$_IngredientVersionDto(
      {required this.id,
      required this.comercialName,
      required this.genericName,
      required this.measureUnit,
      required this.amountMeasureUnit,
      required this.administrationRoute,
      required this.pharmaceuticalForm,
      required this.amountPerPackage,
      required this.category,
      required this.imageURL,
      required this.controlled})
      : super._();

  factory _$_IngredientVersionDto.fromJson(Map<String, dynamic> json) =>
      _$$_IngredientVersionDtoFromJson(json);

  @override
  final String id;
  @override
  final String comercialName;
  @override
  final String genericName;
  @override
  final NameAbbreviationDto measureUnit;
  @override
  final double amountMeasureUnit;
  @override
  final NameAbbreviationDto administrationRoute;
  @override
  final NameAbbreviationDto pharmaceuticalForm;
  @override
  final int amountPerPackage;
  @override
  final CategoryDto category;
  @override
  final String imageURL;
  @override
  final bool controlled;

  @override
  String toString() {
    return 'MedicineDto(id: $id, comercialName: $comercialName, genericName: $genericName, measureUnit: $measureUnit, amountMeasureUnit: $amountMeasureUnit, administrationRoute: $administrationRoute, pharmaceuticalForm: $pharmaceuticalForm, amountPerPackage: $amountPerPackage, category: $category, imageURL: $imageURL, controlled: $controlled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientVersionDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.comercialName, comercialName) ||
                other.comercialName == comercialName) &&
            (identical(other.genericName, genericName) ||
                other.genericName == genericName) &&
            (identical(other.measureUnit, measureUnit) ||
                other.measureUnit == measureUnit) &&
            (identical(other.amountMeasureUnit, amountMeasureUnit) ||
                other.amountMeasureUnit == amountMeasureUnit) &&
            (identical(other.administrationRoute, administrationRoute) ||
                other.administrationRoute == administrationRoute) &&
            (identical(other.pharmaceuticalForm, pharmaceuticalForm) ||
                other.pharmaceuticalForm == pharmaceuticalForm) &&
            (identical(other.amountPerPackage, amountPerPackage) ||
                other.amountPerPackage == amountPerPackage) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.controlled, controlled) ||
                other.controlled == controlled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      comercialName,
      genericName,
      measureUnit,
      amountMeasureUnit,
      administrationRoute,
      pharmaceuticalForm,
      amountPerPackage,
      category,
      imageURL,
      controlled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IngredientVersionDtoCopyWith<_$_IngredientVersionDto> get copyWith =>
      __$$_IngredientVersionDtoCopyWithImpl<_$_IngredientVersionDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IngredientVersionDtoToJson(
      this,
    );
  }
}

abstract class _IngredientVersionDto extends MedicineDto {
  const factory _IngredientVersionDto(
      {required final String id,
      required final String comercialName,
      required final String genericName,
      required final NameAbbreviationDto measureUnit,
      required final double amountMeasureUnit,
      required final NameAbbreviationDto administrationRoute,
      required final NameAbbreviationDto pharmaceuticalForm,
      required final int amountPerPackage,
      required final CategoryDto category,
      required final String imageURL,
      required final bool controlled}) = _$_IngredientVersionDto;
  const _IngredientVersionDto._() : super._();

  factory _IngredientVersionDto.fromJson(Map<String, dynamic> json) =
      _$_IngredientVersionDto.fromJson;

  @override
  String get id;
  @override
  String get comercialName;
  @override
  String get genericName;
  @override
  NameAbbreviationDto get measureUnit;
  @override
  double get amountMeasureUnit;
  @override
  NameAbbreviationDto get administrationRoute;
  @override
  NameAbbreviationDto get pharmaceuticalForm;
  @override
  int get amountPerPackage;
  @override
  CategoryDto get category;
  @override
  String get imageURL;
  @override
  bool get controlled;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientVersionDtoCopyWith<_$_IngredientVersionDto> get copyWith =>
      throw _privateConstructorUsedError;
}
