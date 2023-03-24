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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PatientVisitDto _$PatientVisitDtoFromJson(Map<String, dynamic> json) {
  return _PatientVisitDto.fromJson(json);
}

/// @nodoc
mixin _$PatientVisitDto {
  String get id => throw _privateConstructorUsedError;
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
  $Res call({String id, List<PrescriptionDto> treatment});
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
    Object? treatment = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      treatment: null == treatment
          ? _value.treatment
          : treatment // ignore: cast_nullable_to_non_nullable
              as List<PrescriptionDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PatientVisitDtoCopyWith<$Res>
    implements $PatientVisitDtoCopyWith<$Res> {
  factory _$$_PatientVisitDtoCopyWith(
          _$_PatientVisitDto value, $Res Function(_$_PatientVisitDto) then) =
      __$$_PatientVisitDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<PrescriptionDto> treatment});
}

/// @nodoc
class __$$_PatientVisitDtoCopyWithImpl<$Res>
    extends _$PatientVisitDtoCopyWithImpl<$Res, _$_PatientVisitDto>
    implements _$$_PatientVisitDtoCopyWith<$Res> {
  __$$_PatientVisitDtoCopyWithImpl(
      _$_PatientVisitDto _value, $Res Function(_$_PatientVisitDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? treatment = null,
  }) {
    return _then(_$_PatientVisitDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      treatment: null == treatment
          ? _value._treatment
          : treatment // ignore: cast_nullable_to_non_nullable
              as List<PrescriptionDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PatientVisitDto extends _PatientVisitDto {
  const _$_PatientVisitDto(
      {required this.id, required final List<PrescriptionDto> treatment})
      : _treatment = treatment,
        super._();

  factory _$_PatientVisitDto.fromJson(Map<String, dynamic> json) =>
      _$$_PatientVisitDtoFromJson(json);

  @override
  final String id;
  final List<PrescriptionDto> _treatment;
  @override
  List<PrescriptionDto> get treatment {
    if (_treatment is EqualUnmodifiableListView) return _treatment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_treatment);
  }

  @override
  String toString() {
    return 'PatientVisitDto(id: $id, treatment: $treatment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PatientVisitDto &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._treatment, _treatment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_treatment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatientVisitDtoCopyWith<_$_PatientVisitDto> get copyWith =>
      __$$_PatientVisitDtoCopyWithImpl<_$_PatientVisitDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatientVisitDtoToJson(
      this,
    );
  }
}

abstract class _PatientVisitDto extends PatientVisitDto {
  const factory _PatientVisitDto(
      {required final String id,
      required final List<PrescriptionDto> treatment}) = _$_PatientVisitDto;
  const _PatientVisitDto._() : super._();

  factory _PatientVisitDto.fromJson(Map<String, dynamic> json) =
      _$_PatientVisitDto.fromJson;

  @override
  String get id;
  @override
  List<PrescriptionDto> get treatment;
  @override
  @JsonKey(ignore: true)
  _$$_PatientVisitDtoCopyWith<_$_PatientVisitDto> get copyWith =>
      throw _privateConstructorUsedError;
}
