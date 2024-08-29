// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prescription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Prescription {
  UniqueId get id => throw _privateConstructorUsedError;
  BrandedMedicine get medicine => throw _privateConstructorUsedError;
  LabelDoubleAmount get doseAmount => throw _privateConstructorUsedError;
  Dose get dose => throw _privateConstructorUsedError;
  List3<Indication> get indications => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrescriptionCopyWith<Prescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrescriptionCopyWith<$Res> {
  factory $PrescriptionCopyWith(
          Prescription value, $Res Function(Prescription) then) =
      _$PrescriptionCopyWithImpl<$Res, Prescription>;
  @useResult
  $Res call(
      {UniqueId id,
      BrandedMedicine medicine,
      LabelDoubleAmount doseAmount,
      Dose dose,
      List3<Indication> indications});

  $BrandedMedicineCopyWith<$Res> get medicine;
  $LabelDoubleAmountCopyWith<$Res> get doseAmount;
  $DoseCopyWith<$Res> get dose;
}

/// @nodoc
class _$PrescriptionCopyWithImpl<$Res, $Val extends Prescription>
    implements $PrescriptionCopyWith<$Res> {
  _$PrescriptionCopyWithImpl(this._value, this._then);

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
              as UniqueId,
      medicine: null == medicine
          ? _value.medicine
          : medicine // ignore: cast_nullable_to_non_nullable
              as BrandedMedicine,
      doseAmount: null == doseAmount
          ? _value.doseAmount
          : doseAmount // ignore: cast_nullable_to_non_nullable
              as LabelDoubleAmount,
      dose: null == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as Dose,
      indications: null == indications
          ? _value.indications
          : indications // ignore: cast_nullable_to_non_nullable
              as List3<Indication>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandedMedicineCopyWith<$Res> get medicine {
    return $BrandedMedicineCopyWith<$Res>(_value.medicine, (value) {
      return _then(_value.copyWith(medicine: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LabelDoubleAmountCopyWith<$Res> get doseAmount {
    return $LabelDoubleAmountCopyWith<$Res>(_value.doseAmount, (value) {
      return _then(_value.copyWith(doseAmount: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DoseCopyWith<$Res> get dose {
    return $DoseCopyWith<$Res>(_value.dose, (value) {
      return _then(_value.copyWith(dose: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PrescriptionImplCopyWith<$Res>
    implements $PrescriptionCopyWith<$Res> {
  factory _$$PrescriptionImplCopyWith(
          _$PrescriptionImpl value, $Res Function(_$PrescriptionImpl) then) =
      __$$PrescriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      BrandedMedicine medicine,
      LabelDoubleAmount doseAmount,
      Dose dose,
      List3<Indication> indications});

  @override
  $BrandedMedicineCopyWith<$Res> get medicine;
  @override
  $LabelDoubleAmountCopyWith<$Res> get doseAmount;
  @override
  $DoseCopyWith<$Res> get dose;
}

/// @nodoc
class __$$PrescriptionImplCopyWithImpl<$Res>
    extends _$PrescriptionCopyWithImpl<$Res, _$PrescriptionImpl>
    implements _$$PrescriptionImplCopyWith<$Res> {
  __$$PrescriptionImplCopyWithImpl(
      _$PrescriptionImpl _value, $Res Function(_$PrescriptionImpl) _then)
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
    return _then(_$PrescriptionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      medicine: null == medicine
          ? _value.medicine
          : medicine // ignore: cast_nullable_to_non_nullable
              as BrandedMedicine,
      doseAmount: null == doseAmount
          ? _value.doseAmount
          : doseAmount // ignore: cast_nullable_to_non_nullable
              as LabelDoubleAmount,
      dose: null == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as Dose,
      indications: null == indications
          ? _value.indications
          : indications // ignore: cast_nullable_to_non_nullable
              as List3<Indication>,
    ));
  }
}

/// @nodoc

class _$PrescriptionImpl extends _Prescription {
  const _$PrescriptionImpl(
      {required this.id,
      required this.medicine,
      required this.doseAmount,
      required this.dose,
      required this.indications})
      : super._();

  @override
  final UniqueId id;
  @override
  final BrandedMedicine medicine;
  @override
  final LabelDoubleAmount doseAmount;
  @override
  final Dose dose;
  @override
  final List3<Indication> indications;

  @override
  String toString() {
    return 'Prescription(id: $id, medicine: $medicine, doseAmount: $doseAmount, dose: $dose, indications: $indications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrescriptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.medicine, medicine) ||
                other.medicine == medicine) &&
            (identical(other.doseAmount, doseAmount) ||
                other.doseAmount == doseAmount) &&
            (identical(other.dose, dose) || other.dose == dose) &&
            (identical(other.indications, indications) ||
                other.indications == indications));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, medicine, doseAmount, dose, indications);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrescriptionImplCopyWith<_$PrescriptionImpl> get copyWith =>
      __$$PrescriptionImplCopyWithImpl<_$PrescriptionImpl>(this, _$identity);
}

abstract class _Prescription extends Prescription {
  const factory _Prescription(
      {required final UniqueId id,
      required final BrandedMedicine medicine,
      required final LabelDoubleAmount doseAmount,
      required final Dose dose,
      required final List3<Indication> indications}) = _$PrescriptionImpl;
  const _Prescription._() : super._();

  @override
  UniqueId get id;
  @override
  BrandedMedicine get medicine;
  @override
  LabelDoubleAmount get doseAmount;
  @override
  Dose get dose;
  @override
  List3<Indication> get indications;
  @override
  @JsonKey(ignore: true)
  _$$PrescriptionImplCopyWith<_$PrescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
