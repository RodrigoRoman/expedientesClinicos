// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prescription_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrescriptionDto _$PrescriptionDtoFromJson(Map<String, dynamic> json) {
  return _PrescriptionDto.fromJson(json);
}

/// @nodoc
mixin _$PrescriptionDto {
  String get id => throw _privateConstructorUsedError;
  BrandedMedicineDto get medicine => throw _privateConstructorUsedError;
  LabelDoubleAmountDto get doseAmount => throw _privateConstructorUsedError;
  DoseDto get dose => throw _privateConstructorUsedError;
  List<IndicationDto> get indications => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrescriptionDtoCopyWith<PrescriptionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrescriptionDtoCopyWith<$Res> {
  factory $PrescriptionDtoCopyWith(
          PrescriptionDto value, $Res Function(PrescriptionDto) then) =
      _$PrescriptionDtoCopyWithImpl<$Res, PrescriptionDto>;
  @useResult
  $Res call(
      {String id,
      BrandedMedicineDto medicine,
      LabelDoubleAmountDto doseAmount,
      DoseDto dose,
      List<IndicationDto> indications});

  $BrandedMedicineDtoCopyWith<$Res> get medicine;
  $LabelDoubleAmountDtoCopyWith<$Res> get doseAmount;
  $DoseDtoCopyWith<$Res> get dose;
}

/// @nodoc
class _$PrescriptionDtoCopyWithImpl<$Res, $Val extends PrescriptionDto>
    implements $PrescriptionDtoCopyWith<$Res> {
  _$PrescriptionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? medicine = null,
    Object? doseAmount = null,
    Object? dose = null,
    Object? indications = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      medicine: null == medicine
          ? _value.medicine
          : medicine // ignore: cast_nullable_to_non_nullable
              as BrandedMedicineDto,
      doseAmount: null == doseAmount
          ? _value.doseAmount
          : doseAmount // ignore: cast_nullable_to_non_nullable
              as LabelDoubleAmountDto,
      dose: null == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as DoseDto,
      indications: null == indications
          ? _value.indications
          : indications // ignore: cast_nullable_to_non_nullable
              as List<IndicationDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandedMedicineDtoCopyWith<$Res> get medicine {
    return $BrandedMedicineDtoCopyWith<$Res>(_value.medicine, (value) {
      return _then(_value.copyWith(medicine: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LabelDoubleAmountDtoCopyWith<$Res> get doseAmount {
    return $LabelDoubleAmountDtoCopyWith<$Res>(_value.doseAmount, (value) {
      return _then(_value.copyWith(doseAmount: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DoseDtoCopyWith<$Res> get dose {
    return $DoseDtoCopyWith<$Res>(_value.dose, (value) {
      return _then(_value.copyWith(dose: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PrescriptionDtoImplCopyWith<$Res>
    implements $PrescriptionDtoCopyWith<$Res> {
  factory _$$PrescriptionDtoImplCopyWith(_$PrescriptionDtoImpl value,
          $Res Function(_$PrescriptionDtoImpl) then) =
      __$$PrescriptionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      BrandedMedicineDto medicine,
      LabelDoubleAmountDto doseAmount,
      DoseDto dose,
      List<IndicationDto> indications});

  @override
  $BrandedMedicineDtoCopyWith<$Res> get medicine;
  @override
  $LabelDoubleAmountDtoCopyWith<$Res> get doseAmount;
  @override
  $DoseDtoCopyWith<$Res> get dose;
}

/// @nodoc
class __$$PrescriptionDtoImplCopyWithImpl<$Res>
    extends _$PrescriptionDtoCopyWithImpl<$Res, _$PrescriptionDtoImpl>
    implements _$$PrescriptionDtoImplCopyWith<$Res> {
  __$$PrescriptionDtoImplCopyWithImpl(
      _$PrescriptionDtoImpl _value, $Res Function(_$PrescriptionDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? medicine = null,
    Object? doseAmount = null,
    Object? dose = null,
    Object? indications = null,
  }) {
    return _then(_$PrescriptionDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      medicine: null == medicine
          ? _value.medicine
          : medicine // ignore: cast_nullable_to_non_nullable
              as BrandedMedicineDto,
      doseAmount: null == doseAmount
          ? _value.doseAmount
          : doseAmount // ignore: cast_nullable_to_non_nullable
              as LabelDoubleAmountDto,
      dose: null == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as DoseDto,
      indications: null == indications
          ? _value._indications
          : indications // ignore: cast_nullable_to_non_nullable
              as List<IndicationDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrescriptionDtoImpl extends _PrescriptionDto {
  const _$PrescriptionDtoImpl(
      {required this.id,
      required this.medicine,
      required this.doseAmount,
      required this.dose,
      required final List<IndicationDto> indications})
      : _indications = indications,
        super._();

  factory _$PrescriptionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrescriptionDtoImplFromJson(json);

  @override
  final String id;
  @override
  final BrandedMedicineDto medicine;
  @override
  final LabelDoubleAmountDto doseAmount;
  @override
  final DoseDto dose;
  final List<IndicationDto> _indications;
  @override
  List<IndicationDto> get indications {
    if (_indications is EqualUnmodifiableListView) return _indications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_indications);
  }

  @override
  String toString() {
    return 'PrescriptionDto(id: $id, medicine: $medicine, doseAmount: $doseAmount, dose: $dose, indications: $indications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrescriptionDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.medicine, medicine) ||
                other.medicine == medicine) &&
            (identical(other.doseAmount, doseAmount) ||
                other.doseAmount == doseAmount) &&
            (identical(other.dose, dose) || other.dose == dose) &&
            const DeepCollectionEquality()
                .equals(other._indications, _indications));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, medicine, doseAmount, dose,
      const DeepCollectionEquality().hash(_indications));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrescriptionDtoImplCopyWith<_$PrescriptionDtoImpl> get copyWith =>
      __$$PrescriptionDtoImplCopyWithImpl<_$PrescriptionDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrescriptionDtoImplToJson(
      this,
    );
  }
}

abstract class _PrescriptionDto extends PrescriptionDto {
  const factory _PrescriptionDto(
      {required final String id,
      required final BrandedMedicineDto medicine,
      required final LabelDoubleAmountDto doseAmount,
      required final DoseDto dose,
      required final List<IndicationDto> indications}) = _$PrescriptionDtoImpl;
  const _PrescriptionDto._() : super._();

  factory _PrescriptionDto.fromJson(Map<String, dynamic> json) =
      _$PrescriptionDtoImpl.fromJson;

  @override
  String get id;
  @override
  BrandedMedicineDto get medicine;
  @override
  LabelDoubleAmountDto get doseAmount;
  @override
  DoseDto get dose;
  @override
  List<IndicationDto> get indications;
  @override
  @JsonKey(ignore: true)
  _$$PrescriptionDtoImplCopyWith<_$PrescriptionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
