// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_visit_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatientVisitDto _$PatientVisitDtoFromJson(Map<String, dynamic> json) {
  return _PatientVisitDto.fromJson(json);
}

/// @nodoc
mixin _$PatientVisitDto {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _timeToJson, toJson: _timeFromJson)
  Timestamp get dateTimeVisit => throw _privateConstructorUsedError;
  CategoryDto get visitTypeDto => throw _privateConstructorUsedError;
  List<PrescriptionDto> get treatment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientVisitDtoCopyWith<PatientVisitDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientVisitDtoCopyWith<$Res> {
  factory $PatientVisitDtoCopyWith(
          PatientVisitDto value, $Res Function(PatientVisitDto) then) =
      _$PatientVisitDtoCopyWithImpl<$Res, PatientVisitDto>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(fromJson: _timeToJson, toJson: _timeFromJson)
      Timestamp dateTimeVisit,
      CategoryDto visitTypeDto,
      List<PrescriptionDto> treatment});

  $CategoryDtoCopyWith<$Res> get visitTypeDto;
}

/// @nodoc
class _$PatientVisitDtoCopyWithImpl<$Res, $Val extends PatientVisitDto>
    implements $PatientVisitDtoCopyWith<$Res> {
  _$PatientVisitDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateTimeVisit = null,
    Object? visitTypeDto = null,
    Object? treatment = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateTimeVisit: null == dateTimeVisit
          ? _value.dateTimeVisit
          : dateTimeVisit // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      visitTypeDto: null == visitTypeDto
          ? _value.visitTypeDto
          : visitTypeDto // ignore: cast_nullable_to_non_nullable
              as CategoryDto,
      treatment: null == treatment
          ? _value.treatment
          : treatment // ignore: cast_nullable_to_non_nullable
              as List<PrescriptionDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryDtoCopyWith<$Res> get visitTypeDto {
    return $CategoryDtoCopyWith<$Res>(_value.visitTypeDto, (value) {
      return _then(_value.copyWith(visitTypeDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatientVisitDtoImplCopyWith<$Res>
    implements $PatientVisitDtoCopyWith<$Res> {
  factory _$$PatientVisitDtoImplCopyWith(_$PatientVisitDtoImpl value,
          $Res Function(_$PatientVisitDtoImpl) then) =
      __$$PatientVisitDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(fromJson: _timeToJson, toJson: _timeFromJson)
      Timestamp dateTimeVisit,
      CategoryDto visitTypeDto,
      List<PrescriptionDto> treatment});

  @override
  $CategoryDtoCopyWith<$Res> get visitTypeDto;
}

/// @nodoc
class __$$PatientVisitDtoImplCopyWithImpl<$Res>
    extends _$PatientVisitDtoCopyWithImpl<$Res, _$PatientVisitDtoImpl>
    implements _$$PatientVisitDtoImplCopyWith<$Res> {
  __$$PatientVisitDtoImplCopyWithImpl(
      _$PatientVisitDtoImpl _value, $Res Function(_$PatientVisitDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateTimeVisit = null,
    Object? visitTypeDto = null,
    Object? treatment = null,
  }) {
    return _then(_$PatientVisitDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateTimeVisit: null == dateTimeVisit
          ? _value.dateTimeVisit
          : dateTimeVisit // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      visitTypeDto: null == visitTypeDto
          ? _value.visitTypeDto
          : visitTypeDto // ignore: cast_nullable_to_non_nullable
              as CategoryDto,
      treatment: null == treatment
          ? _value._treatment
          : treatment // ignore: cast_nullable_to_non_nullable
              as List<PrescriptionDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientVisitDtoImpl extends _PatientVisitDto
    with DiagnosticableTreeMixin {
  const _$PatientVisitDtoImpl(
      {required this.id,
      @JsonKey(fromJson: _timeToJson, toJson: _timeFromJson)
      required this.dateTimeVisit,
      required this.visitTypeDto,
      required final List<PrescriptionDto> treatment})
      : _treatment = treatment,
        super._();

  factory _$PatientVisitDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientVisitDtoImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(fromJson: _timeToJson, toJson: _timeFromJson)
  final Timestamp dateTimeVisit;
  @override
  final CategoryDto visitTypeDto;
  final List<PrescriptionDto> _treatment;
  @override
  List<PrescriptionDto> get treatment {
    if (_treatment is EqualUnmodifiableListView) return _treatment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_treatment);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PatientVisitDto(id: $id, dateTimeVisit: $dateTimeVisit, visitTypeDto: $visitTypeDto, treatment: $treatment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PatientVisitDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('dateTimeVisit', dateTimeVisit))
      ..add(DiagnosticsProperty('visitTypeDto', visitTypeDto))
      ..add(DiagnosticsProperty('treatment', treatment));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientVisitDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateTimeVisit, dateTimeVisit) ||
                other.dateTimeVisit == dateTimeVisit) &&
            (identical(other.visitTypeDto, visitTypeDto) ||
                other.visitTypeDto == visitTypeDto) &&
            const DeepCollectionEquality()
                .equals(other._treatment, _treatment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, dateTimeVisit, visitTypeDto,
      const DeepCollectionEquality().hash(_treatment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientVisitDtoImplCopyWith<_$PatientVisitDtoImpl> get copyWith =>
      __$$PatientVisitDtoImplCopyWithImpl<_$PatientVisitDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientVisitDtoImplToJson(
      this,
    );
  }
}

abstract class _PatientVisitDto extends PatientVisitDto {
  const factory _PatientVisitDto(
      {required final String id,
      @JsonKey(fromJson: _timeToJson, toJson: _timeFromJson)
      required final Timestamp dateTimeVisit,
      required final CategoryDto visitTypeDto,
      required final List<PrescriptionDto> treatment}) = _$PatientVisitDtoImpl;
  const _PatientVisitDto._() : super._();

  factory _PatientVisitDto.fromJson(Map<String, dynamic> json) =
      _$PatientVisitDtoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(fromJson: _timeToJson, toJson: _timeFromJson)
  Timestamp get dateTimeVisit;
  @override
  CategoryDto get visitTypeDto;
  @override
  List<PrescriptionDto> get treatment;
  @override
  @JsonKey(ignore: true)
  _$$PatientVisitDtoImplCopyWith<_$PatientVisitDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
