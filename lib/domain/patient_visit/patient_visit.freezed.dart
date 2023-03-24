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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PatientVisit {
  UniqueId get id => throw _privateConstructorUsedError;
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
  $Res call({UniqueId id, List3<Prescription> treatment});
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
    Object? treatment = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      treatment: null == treatment
          ? _value.treatment
          : treatment // ignore: cast_nullable_to_non_nullable
              as List3<Prescription>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PatientVisitCopyWith<$Res>
    implements $PatientVisitCopyWith<$Res> {
  factory _$$_PatientVisitCopyWith(
          _$_PatientVisit value, $Res Function(_$_PatientVisit) then) =
      __$$_PatientVisitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueId id, List3<Prescription> treatment});
}

/// @nodoc
class __$$_PatientVisitCopyWithImpl<$Res>
    extends _$PatientVisitCopyWithImpl<$Res, _$_PatientVisit>
    implements _$$_PatientVisitCopyWith<$Res> {
  __$$_PatientVisitCopyWithImpl(
      _$_PatientVisit _value, $Res Function(_$_PatientVisit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? treatment = null,
  }) {
    return _then(_$_PatientVisit(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      treatment: null == treatment
          ? _value.treatment
          : treatment // ignore: cast_nullable_to_non_nullable
              as List3<Prescription>,
    ));
  }
}

/// @nodoc

class _$_PatientVisit extends _PatientVisit {
  const _$_PatientVisit({required this.id, required this.treatment})
      : super._();

  @override
  final UniqueId id;
  @override
  final List3<Prescription> treatment;

  @override
  String toString() {
    return 'PatientVisit(id: $id, treatment: $treatment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PatientVisit &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.treatment, treatment) ||
                other.treatment == treatment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, treatment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatientVisitCopyWith<_$_PatientVisit> get copyWith =>
      __$$_PatientVisitCopyWithImpl<_$_PatientVisit>(this, _$identity);
}

abstract class _PatientVisit extends PatientVisit {
  const factory _PatientVisit(
      {required final UniqueId id,
      required final List3<Prescription> treatment}) = _$_PatientVisit;
  const _PatientVisit._() : super._();

  @override
  UniqueId get id;
  @override
  List3<Prescription> get treatment;
  @override
  @JsonKey(ignore: true)
  _$$_PatientVisitCopyWith<_$_PatientVisit> get copyWith =>
      throw _privateConstructorUsedError;
}
