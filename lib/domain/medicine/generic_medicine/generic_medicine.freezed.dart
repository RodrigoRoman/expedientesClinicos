// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic_medicine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GenericMedicine {
  UniqueId get id => throw _privateConstructorUsedError;
  FullName get genericName => throw _privateConstructorUsedError;
  NameAbbreviation get measureUnit => throw _privateConstructorUsedError;
  NonNegDouble get amountMeasureUnit => throw _privateConstructorUsedError;
  NameAbbreviation get administrationRoute =>
      throw _privateConstructorUsedError;
  NameAbbreviation get pharmaceuticalForm => throw _privateConstructorUsedError;
  NonNegInt get amountPerPackage => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;
  bool get controlled => throw _privateConstructorUsedError;
  NonNegInt get counter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GenericMedicineCopyWith<GenericMedicine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericMedicineCopyWith<$Res> {
  factory $GenericMedicineCopyWith(
          GenericMedicine value, $Res Function(GenericMedicine) then) =
      _$GenericMedicineCopyWithImpl<$Res, GenericMedicine>;
  @useResult
  $Res call(
      {UniqueId id,
      FullName genericName,
      NameAbbreviation measureUnit,
      NonNegDouble amountMeasureUnit,
      NameAbbreviation administrationRoute,
      NameAbbreviation pharmaceuticalForm,
      NonNegInt amountPerPackage,
      Category category,
      bool controlled,
      NonNegInt counter});

  $NameAbbreviationCopyWith<$Res> get measureUnit;
  $NameAbbreviationCopyWith<$Res> get administrationRoute;
  $NameAbbreviationCopyWith<$Res> get pharmaceuticalForm;
  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$GenericMedicineCopyWithImpl<$Res, $Val extends GenericMedicine>
    implements $GenericMedicineCopyWith<$Res> {
  _$GenericMedicineCopyWithImpl(this._value, this._then);

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
    Object? controlled = null,
    Object? counter = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      genericName: null == genericName
          ? _value.genericName
          : genericName // ignore: cast_nullable_to_non_nullable
              as FullName,
      measureUnit: null == measureUnit
          ? _value.measureUnit
          : measureUnit // ignore: cast_nullable_to_non_nullable
              as NameAbbreviation,
      amountMeasureUnit: null == amountMeasureUnit
          ? _value.amountMeasureUnit
          : amountMeasureUnit // ignore: cast_nullable_to_non_nullable
              as NonNegDouble,
      administrationRoute: null == administrationRoute
          ? _value.administrationRoute
          : administrationRoute // ignore: cast_nullable_to_non_nullable
              as NameAbbreviation,
      pharmaceuticalForm: null == pharmaceuticalForm
          ? _value.pharmaceuticalForm
          : pharmaceuticalForm // ignore: cast_nullable_to_non_nullable
              as NameAbbreviation,
      amountPerPackage: null == amountPerPackage
          ? _value.amountPerPackage
          : amountPerPackage // ignore: cast_nullable_to_non_nullable
              as NonNegInt,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      controlled: null == controlled
          ? _value.controlled
          : controlled // ignore: cast_nullable_to_non_nullable
              as bool,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as NonNegInt,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameAbbreviationCopyWith<$Res> get measureUnit {
    return $NameAbbreviationCopyWith<$Res>(_value.measureUnit, (value) {
      return _then(_value.copyWith(measureUnit: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NameAbbreviationCopyWith<$Res> get administrationRoute {
    return $NameAbbreviationCopyWith<$Res>(_value.administrationRoute, (value) {
      return _then(_value.copyWith(administrationRoute: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NameAbbreviationCopyWith<$Res> get pharmaceuticalForm {
    return $NameAbbreviationCopyWith<$Res>(_value.pharmaceuticalForm, (value) {
      return _then(_value.copyWith(pharmaceuticalForm: value) as $Val);
    });
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
abstract class _$$GenericMedicineImplCopyWith<$Res>
    implements $GenericMedicineCopyWith<$Res> {
  factory _$$GenericMedicineImplCopyWith(_$GenericMedicineImpl value,
          $Res Function(_$GenericMedicineImpl) then) =
      __$$GenericMedicineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      FullName genericName,
      NameAbbreviation measureUnit,
      NonNegDouble amountMeasureUnit,
      NameAbbreviation administrationRoute,
      NameAbbreviation pharmaceuticalForm,
      NonNegInt amountPerPackage,
      Category category,
      bool controlled,
      NonNegInt counter});

  @override
  $NameAbbreviationCopyWith<$Res> get measureUnit;
  @override
  $NameAbbreviationCopyWith<$Res> get administrationRoute;
  @override
  $NameAbbreviationCopyWith<$Res> get pharmaceuticalForm;
  @override
  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$GenericMedicineImplCopyWithImpl<$Res>
    extends _$GenericMedicineCopyWithImpl<$Res, _$GenericMedicineImpl>
    implements _$$GenericMedicineImplCopyWith<$Res> {
  __$$GenericMedicineImplCopyWithImpl(
      _$GenericMedicineImpl _value, $Res Function(_$GenericMedicineImpl) _then)
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
    Object? controlled = null,
    Object? counter = null,
  }) {
    return _then(_$GenericMedicineImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      genericName: null == genericName
          ? _value.genericName
          : genericName // ignore: cast_nullable_to_non_nullable
              as FullName,
      measureUnit: null == measureUnit
          ? _value.measureUnit
          : measureUnit // ignore: cast_nullable_to_non_nullable
              as NameAbbreviation,
      amountMeasureUnit: null == amountMeasureUnit
          ? _value.amountMeasureUnit
          : amountMeasureUnit // ignore: cast_nullable_to_non_nullable
              as NonNegDouble,
      administrationRoute: null == administrationRoute
          ? _value.administrationRoute
          : administrationRoute // ignore: cast_nullable_to_non_nullable
              as NameAbbreviation,
      pharmaceuticalForm: null == pharmaceuticalForm
          ? _value.pharmaceuticalForm
          : pharmaceuticalForm // ignore: cast_nullable_to_non_nullable
              as NameAbbreviation,
      amountPerPackage: null == amountPerPackage
          ? _value.amountPerPackage
          : amountPerPackage // ignore: cast_nullable_to_non_nullable
              as NonNegInt,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      controlled: null == controlled
          ? _value.controlled
          : controlled // ignore: cast_nullable_to_non_nullable
              as bool,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as NonNegInt,
    ));
  }
}

/// @nodoc

class _$GenericMedicineImpl extends _GenericMedicine {
  const _$GenericMedicineImpl(
      {required this.id,
      required this.genericName,
      required this.measureUnit,
      required this.amountMeasureUnit,
      required this.administrationRoute,
      required this.pharmaceuticalForm,
      required this.amountPerPackage,
      required this.category,
      required this.controlled,
      required this.counter})
      : super._();

  @override
  final UniqueId id;
  @override
  final FullName genericName;
  @override
  final NameAbbreviation measureUnit;
  @override
  final NonNegDouble amountMeasureUnit;
  @override
  final NameAbbreviation administrationRoute;
  @override
  final NameAbbreviation pharmaceuticalForm;
  @override
  final NonNegInt amountPerPackage;
  @override
  final Category category;
  @override
  final bool controlled;
  @override
  final NonNegInt counter;

  @override
  String toString() {
    return 'GenericMedicine(id: $id, genericName: $genericName, measureUnit: $measureUnit, amountMeasureUnit: $amountMeasureUnit, administrationRoute: $administrationRoute, pharmaceuticalForm: $pharmaceuticalForm, amountPerPackage: $amountPerPackage, category: $category, controlled: $controlled, counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericMedicineImplCopyWith<_$GenericMedicineImpl> get copyWith =>
      __$$GenericMedicineImplCopyWithImpl<_$GenericMedicineImpl>(
          this, _$identity);
}

abstract class _GenericMedicine extends GenericMedicine {
  const factory _GenericMedicine(
      {required final UniqueId id,
      required final FullName genericName,
      required final NameAbbreviation measureUnit,
      required final NonNegDouble amountMeasureUnit,
      required final NameAbbreviation administrationRoute,
      required final NameAbbreviation pharmaceuticalForm,
      required final NonNegInt amountPerPackage,
      required final Category category,
      required final bool controlled,
      required final NonNegInt counter}) = _$GenericMedicineImpl;
  const _GenericMedicine._() : super._();

  @override
  UniqueId get id;
  @override
  FullName get genericName;
  @override
  NameAbbreviation get measureUnit;
  @override
  NonNegDouble get amountMeasureUnit;
  @override
  NameAbbreviation get administrationRoute;
  @override
  NameAbbreviation get pharmaceuticalForm;
  @override
  NonNegInt get amountPerPackage;
  @override
  Category get category;
  @override
  bool get controlled;
  @override
  NonNegInt get counter;
  @override
  @JsonKey(ignore: true)
  _$$GenericMedicineImplCopyWith<_$GenericMedicineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
