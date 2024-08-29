// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic_medicine_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenericMedicineDto _$GenericMedicineDtoFromJson(Map<String, dynamic> json) {
  return _GenericMedicineDto.fromJson(json);
}

/// @nodoc
mixin _$GenericMedicineDto {
  String get id =>
      throw _privateConstructorUsedError; // required String comercialName,
  String get genericName => throw _privateConstructorUsedError;
  NameAbbreviationDto get measureUnit => throw _privateConstructorUsedError;
  double get amountMeasureUnit => throw _privateConstructorUsedError;
  NameAbbreviationDto get administrationRoute =>
      throw _privateConstructorUsedError;
  NameAbbreviationDto get pharmaceuticalForm =>
      throw _privateConstructorUsedError;
  int get amountPerPackage => throw _privateConstructorUsedError;
  CategoryDto get category =>
      throw _privateConstructorUsedError; // required String imageURL,
  int get counter => throw _privateConstructorUsedError;
  bool get controlled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenericMedicineDtoCopyWith<GenericMedicineDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericMedicineDtoCopyWith<$Res> {
  factory $GenericMedicineDtoCopyWith(
          GenericMedicineDto value, $Res Function(GenericMedicineDto) then) =
      _$GenericMedicineDtoCopyWithImpl<$Res, GenericMedicineDto>;
  @useResult
  $Res call(
      {String id,
      String genericName,
      NameAbbreviationDto measureUnit,
      double amountMeasureUnit,
      NameAbbreviationDto administrationRoute,
      NameAbbreviationDto pharmaceuticalForm,
      int amountPerPackage,
      CategoryDto category,
      int counter,
      bool controlled});

  $NameAbbreviationDtoCopyWith<$Res> get measureUnit;
  $NameAbbreviationDtoCopyWith<$Res> get administrationRoute;
  $NameAbbreviationDtoCopyWith<$Res> get pharmaceuticalForm;
  $CategoryDtoCopyWith<$Res> get category;
}

/// @nodoc
class _$GenericMedicineDtoCopyWithImpl<$Res, $Val extends GenericMedicineDto>
    implements $GenericMedicineDtoCopyWith<$Res> {
  _$GenericMedicineDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? genericName = null,
    Object? measureUnit = null,
    Object? amountMeasureUnit = null,
    Object? administrationRoute = null,
    Object? pharmaceuticalForm = null,
    Object? amountPerPackage = null,
    Object? category = null,
    Object? counter = null,
    Object? controlled = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$GenericMedicineDtoImplCopyWith<$Res>
    implements $GenericMedicineDtoCopyWith<$Res> {
  factory _$$GenericMedicineDtoImplCopyWith(_$GenericMedicineDtoImpl value,
          $Res Function(_$GenericMedicineDtoImpl) then) =
      __$$GenericMedicineDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String genericName,
      NameAbbreviationDto measureUnit,
      double amountMeasureUnit,
      NameAbbreviationDto administrationRoute,
      NameAbbreviationDto pharmaceuticalForm,
      int amountPerPackage,
      CategoryDto category,
      int counter,
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
class __$$GenericMedicineDtoImplCopyWithImpl<$Res>
    extends _$GenericMedicineDtoCopyWithImpl<$Res, _$GenericMedicineDtoImpl>
    implements _$$GenericMedicineDtoImplCopyWith<$Res> {
  __$$GenericMedicineDtoImplCopyWithImpl(_$GenericMedicineDtoImpl _value,
      $Res Function(_$GenericMedicineDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? genericName = null,
    Object? measureUnit = null,
    Object? amountMeasureUnit = null,
    Object? administrationRoute = null,
    Object? pharmaceuticalForm = null,
    Object? amountPerPackage = null,
    Object? category = null,
    Object? counter = null,
    Object? controlled = null,
  }) {
    return _then(_$GenericMedicineDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      controlled: null == controlled
          ? _value.controlled
          : controlled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenericMedicineDtoImpl extends _GenericMedicineDto {
  const _$GenericMedicineDtoImpl(
      {required this.id,
      required this.genericName,
      required this.measureUnit,
      required this.amountMeasureUnit,
      required this.administrationRoute,
      required this.pharmaceuticalForm,
      required this.amountPerPackage,
      required this.category,
      required this.counter,
      required this.controlled})
      : super._();

  factory _$GenericMedicineDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenericMedicineDtoImplFromJson(json);

  @override
  final String id;
// required String comercialName,
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
// required String imageURL,
  @override
  final int counter;
  @override
  final bool controlled;

  @override
  String toString() {
    return 'GenericMedicineDto(id: $id, genericName: $genericName, measureUnit: $measureUnit, amountMeasureUnit: $amountMeasureUnit, administrationRoute: $administrationRoute, pharmaceuticalForm: $pharmaceuticalForm, amountPerPackage: $amountPerPackage, category: $category, counter: $counter, controlled: $controlled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericMedicineDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
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
            (identical(other.counter, counter) || other.counter == counter) &&
            (identical(other.controlled, controlled) ||
                other.controlled == controlled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      genericName,
      measureUnit,
      amountMeasureUnit,
      administrationRoute,
      pharmaceuticalForm,
      amountPerPackage,
      category,
      counter,
      controlled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericMedicineDtoImplCopyWith<_$GenericMedicineDtoImpl> get copyWith =>
      __$$GenericMedicineDtoImplCopyWithImpl<_$GenericMedicineDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenericMedicineDtoImplToJson(
      this,
    );
  }
}

abstract class _GenericMedicineDto extends GenericMedicineDto {
  const factory _GenericMedicineDto(
      {required final String id,
      required final String genericName,
      required final NameAbbreviationDto measureUnit,
      required final double amountMeasureUnit,
      required final NameAbbreviationDto administrationRoute,
      required final NameAbbreviationDto pharmaceuticalForm,
      required final int amountPerPackage,
      required final CategoryDto category,
      required final int counter,
      required final bool controlled}) = _$GenericMedicineDtoImpl;
  const _GenericMedicineDto._() : super._();

  factory _GenericMedicineDto.fromJson(Map<String, dynamic> json) =
      _$GenericMedicineDtoImpl.fromJson;

  @override
  String get id;
  @override // required String comercialName,
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
  @override // required String imageURL,
  int get counter;
  @override
  bool get controlled;
  @override
  @JsonKey(ignore: true)
  _$$GenericMedicineDtoImplCopyWith<_$GenericMedicineDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
