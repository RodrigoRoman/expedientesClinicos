// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medicine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Medicine {
  UniqueId get id => throw _privateConstructorUsedError;
  FullName get comercialName => throw _privateConstructorUsedError;
  FullName get genericName => throw _privateConstructorUsedError;
  NameAbbreviation get measureUnit => throw _privateConstructorUsedError;
  NonNegDouble get amountMeasureUnit => throw _privateConstructorUsedError;
  NameAbbreviation get administrationRoute =>
      throw _privateConstructorUsedError;
  NameAbbreviation get pharmaceuticalForm => throw _privateConstructorUsedError;
  NonNegInt get amountPerPackage => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;
  ImageURL get imageURL => throw _privateConstructorUsedError;
  bool get controlled => throw _privateConstructorUsedError;
  NonNegInt get counter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MedicineCopyWith<Medicine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicineCopyWith<$Res> {
  factory $MedicineCopyWith(Medicine value, $Res Function(Medicine) then) =
      _$MedicineCopyWithImpl<$Res, Medicine>;
  @useResult
  $Res call(
      {UniqueId id,
      FullName comercialName,
      FullName genericName,
      NameAbbreviation measureUnit,
      NonNegDouble amountMeasureUnit,
      NameAbbreviation administrationRoute,
      NameAbbreviation pharmaceuticalForm,
      NonNegInt amountPerPackage,
      Category category,
      ImageURL imageURL,
      bool controlled,
      NonNegInt counter});

  $NameAbbreviationCopyWith<$Res> get measureUnit;
  $NameAbbreviationCopyWith<$Res> get administrationRoute;
  $NameAbbreviationCopyWith<$Res> get pharmaceuticalForm;
  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$MedicineCopyWithImpl<$Res, $Val extends Medicine>
    implements $MedicineCopyWith<$Res> {
  _$MedicineCopyWithImpl(this._value, this._then);

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
    Object? counter = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      comercialName: null == comercialName
          ? _value.comercialName
          : comercialName // ignore: cast_nullable_to_non_nullable
              as FullName,
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
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as ImageURL,
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
abstract class _$$_MedicineCopyWith<$Res> implements $MedicineCopyWith<$Res> {
  factory _$$_MedicineCopyWith(
          _$_Medicine value, $Res Function(_$_Medicine) then) =
      __$$_MedicineCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      FullName comercialName,
      FullName genericName,
      NameAbbreviation measureUnit,
      NonNegDouble amountMeasureUnit,
      NameAbbreviation administrationRoute,
      NameAbbreviation pharmaceuticalForm,
      NonNegInt amountPerPackage,
      Category category,
      ImageURL imageURL,
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
class __$$_MedicineCopyWithImpl<$Res>
    extends _$MedicineCopyWithImpl<$Res, _$_Medicine>
    implements _$$_MedicineCopyWith<$Res> {
  __$$_MedicineCopyWithImpl(
      _$_Medicine _value, $Res Function(_$_Medicine) _then)
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
    Object? counter = null,
  }) {
    return _then(_$_Medicine(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      comercialName: null == comercialName
          ? _value.comercialName
          : comercialName // ignore: cast_nullable_to_non_nullable
              as FullName,
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
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as ImageURL,
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

class _$_Medicine extends _Medicine {
  const _$_Medicine(
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
      required this.controlled,
      required this.counter})
      : super._();

  @override
  final UniqueId id;
  @override
  final FullName comercialName;
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
  final ImageURL imageURL;
  @override
  final bool controlled;
  @override
  final NonNegInt counter;

  @override
  String toString() {
    return 'Medicine(id: $id, comercialName: $comercialName, genericName: $genericName, measureUnit: $measureUnit, amountMeasureUnit: $amountMeasureUnit, administrationRoute: $administrationRoute, pharmaceuticalForm: $pharmaceuticalForm, amountPerPackage: $amountPerPackage, category: $category, imageURL: $imageURL, controlled: $controlled, counter: $counter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Medicine &&
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
                other.controlled == controlled) &&
            (identical(other.counter, counter) || other.counter == counter));
  }

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
      controlled,
      counter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicineCopyWith<_$_Medicine> get copyWith =>
      __$$_MedicineCopyWithImpl<_$_Medicine>(this, _$identity);
}

abstract class _Medicine extends Medicine {
  const factory _Medicine(
      {required final UniqueId id,
      required final FullName comercialName,
      required final FullName genericName,
      required final NameAbbreviation measureUnit,
      required final NonNegDouble amountMeasureUnit,
      required final NameAbbreviation administrationRoute,
      required final NameAbbreviation pharmaceuticalForm,
      required final NonNegInt amountPerPackage,
      required final Category category,
      required final ImageURL imageURL,
      required final bool controlled,
      required final NonNegInt counter}) = _$_Medicine;
  const _Medicine._() : super._();

  @override
  UniqueId get id;
  @override
  FullName get comercialName;
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
  ImageURL get imageURL;
  @override
  bool get controlled;
  @override
  NonNegInt get counter;
  @override
  @JsonKey(ignore: true)
  _$$_MedicineCopyWith<_$_Medicine> get copyWith =>
      throw _privateConstructorUsedError;
}
