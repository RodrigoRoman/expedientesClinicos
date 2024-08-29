// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_visit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PatientVisit {
  UniqueId get id => throw _privateConstructorUsedError;
  DateTime get dateTimeVisit => throw _privateConstructorUsedError;
  Category get visitType => throw _privateConstructorUsedError;
  List3<Prescription> get treatment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientVisitCopyWith<PatientVisit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientVisitCopyWith<$Res> {
  factory $PatientVisitCopyWith(
          PatientVisit value, $Res Function(PatientVisit) then) =
      _$PatientVisitCopyWithImpl<$Res, PatientVisit>;
  @useResult
  $Res call(
      {UniqueId id,
      DateTime dateTimeVisit,
      Category visitType,
      List3<Prescription> treatment});

  $CategoryCopyWith<$Res> get visitType;
}

/// @nodoc
class _$PatientVisitCopyWithImpl<$Res, $Val extends PatientVisit>
    implements $PatientVisitCopyWith<$Res> {
  _$PatientVisitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateTimeVisit = null,
    Object? visitType = null,
    Object? treatment = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      dateTimeVisit: null == dateTimeVisit
          ? _value.dateTimeVisit
          : dateTimeVisit // ignore: cast_nullable_to_non_nullable
              as DateTime,
      visitType: null == visitType
          ? _value.visitType
          : visitType // ignore: cast_nullable_to_non_nullable
              as Category,
      treatment: null == treatment
          ? _value.treatment
          : treatment // ignore: cast_nullable_to_non_nullable
              as List3<Prescription>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get visitType {
    return $CategoryCopyWith<$Res>(_value.visitType, (value) {
      return _then(_value.copyWith(visitType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatientVisitImplCopyWith<$Res>
    implements $PatientVisitCopyWith<$Res> {
  factory _$$PatientVisitImplCopyWith(
          _$PatientVisitImpl value, $Res Function(_$PatientVisitImpl) then) =
      __$$PatientVisitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      DateTime dateTimeVisit,
      Category visitType,
      List3<Prescription> treatment});

  @override
  $CategoryCopyWith<$Res> get visitType;
}

/// @nodoc
class __$$PatientVisitImplCopyWithImpl<$Res>
    extends _$PatientVisitCopyWithImpl<$Res, _$PatientVisitImpl>
    implements _$$PatientVisitImplCopyWith<$Res> {
  __$$PatientVisitImplCopyWithImpl(
      _$PatientVisitImpl _value, $Res Function(_$PatientVisitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateTimeVisit = null,
    Object? visitType = null,
    Object? treatment = null,
  }) {
    return _then(_$PatientVisitImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      dateTimeVisit: null == dateTimeVisit
          ? _value.dateTimeVisit
          : dateTimeVisit // ignore: cast_nullable_to_non_nullable
              as DateTime,
      visitType: null == visitType
          ? _value.visitType
          : visitType // ignore: cast_nullable_to_non_nullable
              as Category,
      treatment: null == treatment
          ? _value.treatment
          : treatment // ignore: cast_nullable_to_non_nullable
              as List3<Prescription>,
    ));
  }
}

/// @nodoc

class _$PatientVisitImpl extends _PatientVisit {
  const _$PatientVisitImpl(
      {required this.id,
      required this.dateTimeVisit,
      required this.visitType,
      required this.treatment})
      : super._();

  @override
  final UniqueId id;
  @override
  final DateTime dateTimeVisit;
  @override
  final Category visitType;
  @override
  final List3<Prescription> treatment;

  @override
  String toString() {
    return 'PatientVisit(id: $id, dateTimeVisit: $dateTimeVisit, visitType: $visitType, treatment: $treatment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientVisitImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateTimeVisit, dateTimeVisit) ||
                other.dateTimeVisit == dateTimeVisit) &&
            (identical(other.visitType, visitType) ||
                other.visitType == visitType) &&
            (identical(other.treatment, treatment) ||
                other.treatment == treatment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, dateTimeVisit, visitType, treatment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientVisitImplCopyWith<_$PatientVisitImpl> get copyWith =>
      __$$PatientVisitImplCopyWithImpl<_$PatientVisitImpl>(this, _$identity);
}

abstract class _PatientVisit extends PatientVisit {
  const factory _PatientVisit(
      {required final UniqueId id,
      required final DateTime dateTimeVisit,
      required final Category visitType,
      required final List3<Prescription> treatment}) = _$PatientVisitImpl;
  const _PatientVisit._() : super._();

  @override
  UniqueId get id;
  @override
  DateTime get dateTimeVisit;
  @override
  Category get visitType;
  @override
  List3<Prescription> get treatment;
  @override
  @JsonKey(ignore: true)
  _$$PatientVisitImplCopyWith<_$PatientVisitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
