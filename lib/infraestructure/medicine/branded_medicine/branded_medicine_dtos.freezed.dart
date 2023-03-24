// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branded_medicine_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandedMedicineDto _$BrandedMedicineDtoFromJson(Map<String, dynamic> json) {
  return _BrandedMedicineDto.fromJson(json);
}

/// @nodoc
mixin _$BrandedMedicineDto {
  String get id => throw _privateConstructorUsedError;
  String get comercialName => throw _privateConstructorUsedError;
  int get existence => throw _privateConstructorUsedError;
  int get optimum => throw _privateConstructorUsedError;
  String get imageURL => throw _privateConstructorUsedError;
  int get counter => throw _privateConstructorUsedError;
  GenericMedicineDto get genericMedicine => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandedMedicineDtoCopyWith<BrandedMedicineDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandedMedicineDtoCopyWith<$Res> {
  factory $BrandedMedicineDtoCopyWith(
          BrandedMedicineDto value, $Res Function(BrandedMedicineDto) then) =
      _$BrandedMedicineDtoCopyWithImpl<$Res, BrandedMedicineDto>;
  @useResult
  $Res call(
      {String id,
      String comercialName,
      int existence,
      int optimum,
      String imageURL,
      int counter,
      GenericMedicineDto genericMedicine});

  $GenericMedicineDtoCopyWith<$Res> get genericMedicine;
}

/// @nodoc
class _$BrandedMedicineDtoCopyWithImpl<$Res, $Val extends BrandedMedicineDto>
    implements $BrandedMedicineDtoCopyWith<$Res> {
  _$BrandedMedicineDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? comercialName = null,
    Object? existence = null,
    Object? optimum = null,
    Object? imageURL = null,
    Object? counter = null,
    Object? genericMedicine = null,
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
      existence: null == existence
          ? _value.existence
          : existence // ignore: cast_nullable_to_non_nullable
              as int,
      optimum: null == optimum
          ? _value.optimum
          : optimum // ignore: cast_nullable_to_non_nullable
              as int,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      genericMedicine: null == genericMedicine
          ? _value.genericMedicine
          : genericMedicine // ignore: cast_nullable_to_non_nullable
              as GenericMedicineDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GenericMedicineDtoCopyWith<$Res> get genericMedicine {
    return $GenericMedicineDtoCopyWith<$Res>(_value.genericMedicine, (value) {
      return _then(_value.copyWith(genericMedicine: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BrandedMedicineDtoCopyWith<$Res>
    implements $BrandedMedicineDtoCopyWith<$Res> {
  factory _$$_BrandedMedicineDtoCopyWith(_$_BrandedMedicineDto value,
          $Res Function(_$_BrandedMedicineDto) then) =
      __$$_BrandedMedicineDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String comercialName,
      int existence,
      int optimum,
      String imageURL,
      int counter,
      GenericMedicineDto genericMedicine});

  @override
  $GenericMedicineDtoCopyWith<$Res> get genericMedicine;
}

/// @nodoc
class __$$_BrandedMedicineDtoCopyWithImpl<$Res>
    extends _$BrandedMedicineDtoCopyWithImpl<$Res, _$_BrandedMedicineDto>
    implements _$$_BrandedMedicineDtoCopyWith<$Res> {
  __$$_BrandedMedicineDtoCopyWithImpl(
      _$_BrandedMedicineDto _value, $Res Function(_$_BrandedMedicineDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? comercialName = null,
    Object? existence = null,
    Object? optimum = null,
    Object? imageURL = null,
    Object? counter = null,
    Object? genericMedicine = null,
  }) {
    return _then(_$_BrandedMedicineDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      comercialName: null == comercialName
          ? _value.comercialName
          : comercialName // ignore: cast_nullable_to_non_nullable
              as String,
      existence: null == existence
          ? _value.existence
          : existence // ignore: cast_nullable_to_non_nullable
              as int,
      optimum: null == optimum
          ? _value.optimum
          : optimum // ignore: cast_nullable_to_non_nullable
              as int,
      imageURL: null == imageURL
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      genericMedicine: null == genericMedicine
          ? _value.genericMedicine
          : genericMedicine // ignore: cast_nullable_to_non_nullable
              as GenericMedicineDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BrandedMedicineDto extends _BrandedMedicineDto {
  const _$_BrandedMedicineDto(
      {required this.id,
      required this.comercialName,
      required this.existence,
      required this.optimum,
      required this.imageURL,
      required this.counter,
      required this.genericMedicine})
      : super._();

  factory _$_BrandedMedicineDto.fromJson(Map<String, dynamic> json) =>
      _$$_BrandedMedicineDtoFromJson(json);

  @override
  final String id;
  @override
  final String comercialName;
  @override
  final int existence;
  @override
  final int optimum;
  @override
  final String imageURL;
  @override
  final int counter;
  @override
  final GenericMedicineDto genericMedicine;

  @override
  String toString() {
    return 'BrandedMedicineDto(id: $id, comercialName: $comercialName, existence: $existence, optimum: $optimum, imageURL: $imageURL, counter: $counter, genericMedicine: $genericMedicine)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrandedMedicineDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.comercialName, comercialName) ||
                other.comercialName == comercialName) &&
            (identical(other.existence, existence) ||
                other.existence == existence) &&
            (identical(other.optimum, optimum) || other.optimum == optimum) &&
            (identical(other.imageURL, imageURL) ||
                other.imageURL == imageURL) &&
            (identical(other.counter, counter) || other.counter == counter) &&
            (identical(other.genericMedicine, genericMedicine) ||
                other.genericMedicine == genericMedicine));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, comercialName, existence,
      optimum, imageURL, counter, genericMedicine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BrandedMedicineDtoCopyWith<_$_BrandedMedicineDto> get copyWith =>
      __$$_BrandedMedicineDtoCopyWithImpl<_$_BrandedMedicineDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandedMedicineDtoToJson(
      this,
    );
  }
}

abstract class _BrandedMedicineDto extends BrandedMedicineDto {
  const factory _BrandedMedicineDto(
          {required final String id,
          required final String comercialName,
          required final int existence,
          required final int optimum,
          required final String imageURL,
          required final int counter,
          required final GenericMedicineDto genericMedicine}) =
      _$_BrandedMedicineDto;
  const _BrandedMedicineDto._() : super._();

  factory _BrandedMedicineDto.fromJson(Map<String, dynamic> json) =
      _$_BrandedMedicineDto.fromJson;

  @override
  String get id;
  @override
  String get comercialName;
  @override
  int get existence;
  @override
  int get optimum;
  @override
  String get imageURL;
  @override
  int get counter;
  @override
  GenericMedicineDto get genericMedicine;
  @override
  @JsonKey(ignore: true)
  _$$_BrandedMedicineDtoCopyWith<_$_BrandedMedicineDto> get copyWith =>
      throw _privateConstructorUsedError;
}
