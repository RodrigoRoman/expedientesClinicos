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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PrescriptionDto _$PrescriptionDtoFromJson(Map<String, dynamic> json) {
  return _PrescriptionDto.fromJson(json);
}

/// @nodoc
mixin _$PrescriptionDto {
  String get id => throw _privateConstructorUsedError;
  MedicineDto get medicine => throw _privateConstructorUsedError;
  int get dose => throw _privateConstructorUsedError;
  TimeIntervalDto get frequency => throw _privateConstructorUsedError;
  TimeIntervalDto get duration => throw _privateConstructorUsedError;
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
      MedicineDto medicine,
      int dose,
      TimeIntervalDto frequency,
      TimeIntervalDto duration,
      List<IndicationDto> indications});

  $MedicineDtoCopyWith<$Res> get medicine;
  $TimeIntervalDtoCopyWith<$Res> get frequency;
  $TimeIntervalDtoCopyWith<$Res> get duration;
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
    Object? dose = null,
    Object? frequency = null,
    Object? duration = null,
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
              as MedicineDto,
      dose: null == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as int,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as TimeIntervalDto,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as TimeIntervalDto,
      indications: null == indications
          ? _value.indications
          : indications // ignore: cast_nullable_to_non_nullable
              as List<IndicationDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MedicineDtoCopyWith<$Res> get medicine {
    return $MedicineDtoCopyWith<$Res>(_value.medicine, (value) {
      return _then(_value.copyWith(medicine: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeIntervalDtoCopyWith<$Res> get frequency {
    return $TimeIntervalDtoCopyWith<$Res>(_value.frequency, (value) {
      return _then(_value.copyWith(frequency: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeIntervalDtoCopyWith<$Res> get duration {
    return $TimeIntervalDtoCopyWith<$Res>(_value.duration, (value) {
      return _then(_value.copyWith(duration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PrescriptionDtoCopyWith<$Res>
    implements $PrescriptionDtoCopyWith<$Res> {
  factory _$$_PrescriptionDtoCopyWith(
          _$_PrescriptionDto value, $Res Function(_$_PrescriptionDto) then) =
      __$$_PrescriptionDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      MedicineDto medicine,
      int dose,
      TimeIntervalDto frequency,
      TimeIntervalDto duration,
      List<IndicationDto> indications});

  @override
  $MedicineDtoCopyWith<$Res> get medicine;
  @override
  $TimeIntervalDtoCopyWith<$Res> get frequency;
  @override
  $TimeIntervalDtoCopyWith<$Res> get duration;
}

/// @nodoc
class __$$_PrescriptionDtoCopyWithImpl<$Res>
    extends _$PrescriptionDtoCopyWithImpl<$Res, _$_PrescriptionDto>
    implements _$$_PrescriptionDtoCopyWith<$Res> {
  __$$_PrescriptionDtoCopyWithImpl(
      _$_PrescriptionDto _value, $Res Function(_$_PrescriptionDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? medicine = null,
    Object? dose = null,
    Object? frequency = null,
    Object? duration = null,
    Object? indications = null,
  }) {
    return _then(_$_PrescriptionDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      medicine: null == medicine
          ? _value.medicine
          : medicine // ignore: cast_nullable_to_non_nullable
              as MedicineDto,
      dose: null == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as int,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as TimeIntervalDto,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as TimeIntervalDto,
      indications: null == indications
          ? _value._indications
          : indications // ignore: cast_nullable_to_non_nullable
              as List<IndicationDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PrescriptionDto extends _PrescriptionDto {
  const _$_PrescriptionDto(
      {required this.id,
      required this.medicine,
      required this.dose,
      required this.frequency,
      required this.duration,
      required final List<IndicationDto> indications})
      : _indications = indications,
        super._();

  factory _$_PrescriptionDto.fromJson(Map<String, dynamic> json) =>
      _$$_PrescriptionDtoFromJson(json);

  @override
  final String id;
  @override
  final MedicineDto medicine;
  @override
  final int dose;
  @override
  final TimeIntervalDto frequency;
  @override
  final TimeIntervalDto duration;
  final List<IndicationDto> _indications;
  @override
  List<IndicationDto> get indications {
    if (_indications is EqualUnmodifiableListView) return _indications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_indications);
  }

  @override
  String toString() {
    return 'PrescriptionDto(id: $id, medicine: $medicine, dose: $dose, frequency: $frequency, duration: $duration, indications: $indications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrescriptionDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.medicine, medicine) ||
                other.medicine == medicine) &&
            (identical(other.dose, dose) || other.dose == dose) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality()
                .equals(other._indications, _indications));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, medicine, dose, frequency,
      duration, const DeepCollectionEquality().hash(_indications));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrescriptionDtoCopyWith<_$_PrescriptionDto> get copyWith =>
      __$$_PrescriptionDtoCopyWithImpl<_$_PrescriptionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrescriptionDtoToJson(
      this,
    );
  }
}

abstract class _PrescriptionDto extends PrescriptionDto {
  const factory _PrescriptionDto(
      {required final String id,
      required final MedicineDto medicine,
      required final int dose,
      required final TimeIntervalDto frequency,
      required final TimeIntervalDto duration,
      required final List<IndicationDto> indications}) = _$_PrescriptionDto;
  const _PrescriptionDto._() : super._();

  factory _PrescriptionDto.fromJson(Map<String, dynamic> json) =
      _$_PrescriptionDto.fromJson;

  @override
  String get id;
  @override
  MedicineDto get medicine;
  @override
  int get dose;
  @override
  TimeIntervalDto get frequency;
  @override
  TimeIntervalDto get duration;
  @override
  List<IndicationDto> get indications;
  @override
  @JsonKey(ignore: true)
  _$$_PrescriptionDtoCopyWith<_$_PrescriptionDto> get copyWith =>
      throw _privateConstructorUsedError;
}
