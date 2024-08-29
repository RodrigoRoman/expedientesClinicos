// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_visit_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PatientVisitFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<PatientVisit> patientVisit) initialized,
    required TResult Function(List<Prescription> treatment) onTreatmentChanged,
    required TResult Function(DateTime dateTime) onDateTimeChanged,
    required TResult Function(DateTime dateTime) onDateChanged,
    required TResult Function(TimeOfDay time) onTimeChanged,
    required TResult Function(Category visitType) onVisitTypeChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<PatientVisit> patientVisit)? initialized,
    TResult? Function(List<Prescription> treatment)? onTreatmentChanged,
    TResult? Function(DateTime dateTime)? onDateTimeChanged,
    TResult? Function(DateTime dateTime)? onDateChanged,
    TResult? Function(TimeOfDay time)? onTimeChanged,
    TResult? Function(Category visitType)? onVisitTypeChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<PatientVisit> patientVisit)? initialized,
    TResult Function(List<Prescription> treatment)? onTreatmentChanged,
    TResult Function(DateTime dateTime)? onDateTimeChanged,
    TResult Function(DateTime dateTime)? onDateChanged,
    TResult Function(TimeOfDay time)? onTimeChanged,
    TResult Function(Category visitType)? onVisitTypeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TreatmentChanged value) onTreatmentChanged,
    required TResult Function(_DateTimeChanged value) onDateTimeChanged,
    required TResult Function(_DateChanged value) onDateChanged,
    required TResult Function(_TimeChanged value) onTimeChanged,
    required TResult Function(_VisitTypeChanged value) onVisitTypeChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TreatmentChanged value)? onTreatmentChanged,
    TResult? Function(_DateTimeChanged value)? onDateTimeChanged,
    TResult? Function(_DateChanged value)? onDateChanged,
    TResult? Function(_TimeChanged value)? onTimeChanged,
    TResult? Function(_VisitTypeChanged value)? onVisitTypeChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TreatmentChanged value)? onTreatmentChanged,
    TResult Function(_DateTimeChanged value)? onDateTimeChanged,
    TResult Function(_DateChanged value)? onDateChanged,
    TResult Function(_TimeChanged value)? onTimeChanged,
    TResult Function(_VisitTypeChanged value)? onVisitTypeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientVisitFormEventCopyWith<$Res> {
  factory $PatientVisitFormEventCopyWith(PatientVisitFormEvent value,
          $Res Function(PatientVisitFormEvent) then) =
      _$PatientVisitFormEventCopyWithImpl<$Res, PatientVisitFormEvent>;
}

/// @nodoc
class _$PatientVisitFormEventCopyWithImpl<$Res,
        $Val extends PatientVisitFormEvent>
    implements $PatientVisitFormEventCopyWith<$Res> {
  _$PatientVisitFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<PatientVisit> patientVisit});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$PatientVisitFormEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientVisit = null,
  }) {
    return _then(_$InitializedImpl(
      null == patientVisit
          ? _value.patientVisit
          : patientVisit // ignore: cast_nullable_to_non_nullable
              as Option<PatientVisit>,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.patientVisit);

  @override
  final Option<PatientVisit> patientVisit;

  @override
  String toString() {
    return 'PatientVisitFormEvent.initialized(patientVisit: $patientVisit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.patientVisit, patientVisit) ||
                other.patientVisit == patientVisit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, patientVisit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<PatientVisit> patientVisit) initialized,
    required TResult Function(List<Prescription> treatment) onTreatmentChanged,
    required TResult Function(DateTime dateTime) onDateTimeChanged,
    required TResult Function(DateTime dateTime) onDateChanged,
    required TResult Function(TimeOfDay time) onTimeChanged,
    required TResult Function(Category visitType) onVisitTypeChanged,
    required TResult Function() saved,
  }) {
    return initialized(patientVisit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<PatientVisit> patientVisit)? initialized,
    TResult? Function(List<Prescription> treatment)? onTreatmentChanged,
    TResult? Function(DateTime dateTime)? onDateTimeChanged,
    TResult? Function(DateTime dateTime)? onDateChanged,
    TResult? Function(TimeOfDay time)? onTimeChanged,
    TResult? Function(Category visitType)? onVisitTypeChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(patientVisit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<PatientVisit> patientVisit)? initialized,
    TResult Function(List<Prescription> treatment)? onTreatmentChanged,
    TResult Function(DateTime dateTime)? onDateTimeChanged,
    TResult Function(DateTime dateTime)? onDateChanged,
    TResult Function(TimeOfDay time)? onTimeChanged,
    TResult Function(Category visitType)? onVisitTypeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(patientVisit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TreatmentChanged value) onTreatmentChanged,
    required TResult Function(_DateTimeChanged value) onDateTimeChanged,
    required TResult Function(_DateChanged value) onDateChanged,
    required TResult Function(_TimeChanged value) onTimeChanged,
    required TResult Function(_VisitTypeChanged value) onVisitTypeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TreatmentChanged value)? onTreatmentChanged,
    TResult? Function(_DateTimeChanged value)? onDateTimeChanged,
    TResult? Function(_DateChanged value)? onDateChanged,
    TResult? Function(_TimeChanged value)? onTimeChanged,
    TResult? Function(_VisitTypeChanged value)? onVisitTypeChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TreatmentChanged value)? onTreatmentChanged,
    TResult Function(_DateTimeChanged value)? onDateTimeChanged,
    TResult Function(_DateChanged value)? onDateChanged,
    TResult Function(_TimeChanged value)? onTimeChanged,
    TResult Function(_VisitTypeChanged value)? onVisitTypeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements PatientVisitFormEvent {
  const factory _Initialized(final Option<PatientVisit> patientVisit) =
      _$InitializedImpl;

  Option<PatientVisit> get patientVisit;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TreatmentChangedImplCopyWith<$Res> {
  factory _$$TreatmentChangedImplCopyWith(_$TreatmentChangedImpl value,
          $Res Function(_$TreatmentChangedImpl) then) =
      __$$TreatmentChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Prescription> treatment});
}

/// @nodoc
class __$$TreatmentChangedImplCopyWithImpl<$Res>
    extends _$PatientVisitFormEventCopyWithImpl<$Res, _$TreatmentChangedImpl>
    implements _$$TreatmentChangedImplCopyWith<$Res> {
  __$$TreatmentChangedImplCopyWithImpl(_$TreatmentChangedImpl _value,
      $Res Function(_$TreatmentChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treatment = null,
  }) {
    return _then(_$TreatmentChangedImpl(
      null == treatment
          ? _value._treatment
          : treatment // ignore: cast_nullable_to_non_nullable
              as List<Prescription>,
    ));
  }
}

/// @nodoc

class _$TreatmentChangedImpl implements _TreatmentChanged {
  const _$TreatmentChangedImpl(final List<Prescription> treatment)
      : _treatment = treatment;

  final List<Prescription> _treatment;
  @override
  List<Prescription> get treatment {
    if (_treatment is EqualUnmodifiableListView) return _treatment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_treatment);
  }

  @override
  String toString() {
    return 'PatientVisitFormEvent.onTreatmentChanged(treatment: $treatment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreatmentChangedImpl &&
            const DeepCollectionEquality()
                .equals(other._treatment, _treatment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_treatment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreatmentChangedImplCopyWith<_$TreatmentChangedImpl> get copyWith =>
      __$$TreatmentChangedImplCopyWithImpl<_$TreatmentChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<PatientVisit> patientVisit) initialized,
    required TResult Function(List<Prescription> treatment) onTreatmentChanged,
    required TResult Function(DateTime dateTime) onDateTimeChanged,
    required TResult Function(DateTime dateTime) onDateChanged,
    required TResult Function(TimeOfDay time) onTimeChanged,
    required TResult Function(Category visitType) onVisitTypeChanged,
    required TResult Function() saved,
  }) {
    return onTreatmentChanged(treatment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<PatientVisit> patientVisit)? initialized,
    TResult? Function(List<Prescription> treatment)? onTreatmentChanged,
    TResult? Function(DateTime dateTime)? onDateTimeChanged,
    TResult? Function(DateTime dateTime)? onDateChanged,
    TResult? Function(TimeOfDay time)? onTimeChanged,
    TResult? Function(Category visitType)? onVisitTypeChanged,
    TResult? Function()? saved,
  }) {
    return onTreatmentChanged?.call(treatment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<PatientVisit> patientVisit)? initialized,
    TResult Function(List<Prescription> treatment)? onTreatmentChanged,
    TResult Function(DateTime dateTime)? onDateTimeChanged,
    TResult Function(DateTime dateTime)? onDateChanged,
    TResult Function(TimeOfDay time)? onTimeChanged,
    TResult Function(Category visitType)? onVisitTypeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (onTreatmentChanged != null) {
      return onTreatmentChanged(treatment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TreatmentChanged value) onTreatmentChanged,
    required TResult Function(_DateTimeChanged value) onDateTimeChanged,
    required TResult Function(_DateChanged value) onDateChanged,
    required TResult Function(_TimeChanged value) onTimeChanged,
    required TResult Function(_VisitTypeChanged value) onVisitTypeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return onTreatmentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TreatmentChanged value)? onTreatmentChanged,
    TResult? Function(_DateTimeChanged value)? onDateTimeChanged,
    TResult? Function(_DateChanged value)? onDateChanged,
    TResult? Function(_TimeChanged value)? onTimeChanged,
    TResult? Function(_VisitTypeChanged value)? onVisitTypeChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return onTreatmentChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TreatmentChanged value)? onTreatmentChanged,
    TResult Function(_DateTimeChanged value)? onDateTimeChanged,
    TResult Function(_DateChanged value)? onDateChanged,
    TResult Function(_TimeChanged value)? onTimeChanged,
    TResult Function(_VisitTypeChanged value)? onVisitTypeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (onTreatmentChanged != null) {
      return onTreatmentChanged(this);
    }
    return orElse();
  }
}

abstract class _TreatmentChanged implements PatientVisitFormEvent {
  const factory _TreatmentChanged(final List<Prescription> treatment) =
      _$TreatmentChangedImpl;

  List<Prescription> get treatment;
  @JsonKey(ignore: true)
  _$$TreatmentChangedImplCopyWith<_$TreatmentChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateTimeChangedImplCopyWith<$Res> {
  factory _$$DateTimeChangedImplCopyWith(_$DateTimeChangedImpl value,
          $Res Function(_$DateTimeChangedImpl) then) =
      __$$DateTimeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime});
}

/// @nodoc
class __$$DateTimeChangedImplCopyWithImpl<$Res>
    extends _$PatientVisitFormEventCopyWithImpl<$Res, _$DateTimeChangedImpl>
    implements _$$DateTimeChangedImplCopyWith<$Res> {
  __$$DateTimeChangedImplCopyWithImpl(
      _$DateTimeChangedImpl _value, $Res Function(_$DateTimeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
  }) {
    return _then(_$DateTimeChangedImpl(
      null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DateTimeChangedImpl implements _DateTimeChanged {
  const _$DateTimeChangedImpl(this.dateTime);

  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'PatientVisitFormEvent.onDateTimeChanged(dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateTimeChangedImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateTimeChangedImplCopyWith<_$DateTimeChangedImpl> get copyWith =>
      __$$DateTimeChangedImplCopyWithImpl<_$DateTimeChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<PatientVisit> patientVisit) initialized,
    required TResult Function(List<Prescription> treatment) onTreatmentChanged,
    required TResult Function(DateTime dateTime) onDateTimeChanged,
    required TResult Function(DateTime dateTime) onDateChanged,
    required TResult Function(TimeOfDay time) onTimeChanged,
    required TResult Function(Category visitType) onVisitTypeChanged,
    required TResult Function() saved,
  }) {
    return onDateTimeChanged(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<PatientVisit> patientVisit)? initialized,
    TResult? Function(List<Prescription> treatment)? onTreatmentChanged,
    TResult? Function(DateTime dateTime)? onDateTimeChanged,
    TResult? Function(DateTime dateTime)? onDateChanged,
    TResult? Function(TimeOfDay time)? onTimeChanged,
    TResult? Function(Category visitType)? onVisitTypeChanged,
    TResult? Function()? saved,
  }) {
    return onDateTimeChanged?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<PatientVisit> patientVisit)? initialized,
    TResult Function(List<Prescription> treatment)? onTreatmentChanged,
    TResult Function(DateTime dateTime)? onDateTimeChanged,
    TResult Function(DateTime dateTime)? onDateChanged,
    TResult Function(TimeOfDay time)? onTimeChanged,
    TResult Function(Category visitType)? onVisitTypeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (onDateTimeChanged != null) {
      return onDateTimeChanged(dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TreatmentChanged value) onTreatmentChanged,
    required TResult Function(_DateTimeChanged value) onDateTimeChanged,
    required TResult Function(_DateChanged value) onDateChanged,
    required TResult Function(_TimeChanged value) onTimeChanged,
    required TResult Function(_VisitTypeChanged value) onVisitTypeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return onDateTimeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TreatmentChanged value)? onTreatmentChanged,
    TResult? Function(_DateTimeChanged value)? onDateTimeChanged,
    TResult? Function(_DateChanged value)? onDateChanged,
    TResult? Function(_TimeChanged value)? onTimeChanged,
    TResult? Function(_VisitTypeChanged value)? onVisitTypeChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return onDateTimeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TreatmentChanged value)? onTreatmentChanged,
    TResult Function(_DateTimeChanged value)? onDateTimeChanged,
    TResult Function(_DateChanged value)? onDateChanged,
    TResult Function(_TimeChanged value)? onTimeChanged,
    TResult Function(_VisitTypeChanged value)? onVisitTypeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (onDateTimeChanged != null) {
      return onDateTimeChanged(this);
    }
    return orElse();
  }
}

abstract class _DateTimeChanged implements PatientVisitFormEvent {
  const factory _DateTimeChanged(final DateTime dateTime) =
      _$DateTimeChangedImpl;

  DateTime get dateTime;
  @JsonKey(ignore: true)
  _$$DateTimeChangedImplCopyWith<_$DateTimeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateChangedImplCopyWith<$Res> {
  factory _$$DateChangedImplCopyWith(
          _$DateChangedImpl value, $Res Function(_$DateChangedImpl) then) =
      __$$DateChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime});
}

/// @nodoc
class __$$DateChangedImplCopyWithImpl<$Res>
    extends _$PatientVisitFormEventCopyWithImpl<$Res, _$DateChangedImpl>
    implements _$$DateChangedImplCopyWith<$Res> {
  __$$DateChangedImplCopyWithImpl(
      _$DateChangedImpl _value, $Res Function(_$DateChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
  }) {
    return _then(_$DateChangedImpl(
      null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DateChangedImpl implements _DateChanged {
  const _$DateChangedImpl(this.dateTime);

  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'PatientVisitFormEvent.onDateChanged(dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateChangedImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateChangedImplCopyWith<_$DateChangedImpl> get copyWith =>
      __$$DateChangedImplCopyWithImpl<_$DateChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<PatientVisit> patientVisit) initialized,
    required TResult Function(List<Prescription> treatment) onTreatmentChanged,
    required TResult Function(DateTime dateTime) onDateTimeChanged,
    required TResult Function(DateTime dateTime) onDateChanged,
    required TResult Function(TimeOfDay time) onTimeChanged,
    required TResult Function(Category visitType) onVisitTypeChanged,
    required TResult Function() saved,
  }) {
    return onDateChanged(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<PatientVisit> patientVisit)? initialized,
    TResult? Function(List<Prescription> treatment)? onTreatmentChanged,
    TResult? Function(DateTime dateTime)? onDateTimeChanged,
    TResult? Function(DateTime dateTime)? onDateChanged,
    TResult? Function(TimeOfDay time)? onTimeChanged,
    TResult? Function(Category visitType)? onVisitTypeChanged,
    TResult? Function()? saved,
  }) {
    return onDateChanged?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<PatientVisit> patientVisit)? initialized,
    TResult Function(List<Prescription> treatment)? onTreatmentChanged,
    TResult Function(DateTime dateTime)? onDateTimeChanged,
    TResult Function(DateTime dateTime)? onDateChanged,
    TResult Function(TimeOfDay time)? onTimeChanged,
    TResult Function(Category visitType)? onVisitTypeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (onDateChanged != null) {
      return onDateChanged(dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TreatmentChanged value) onTreatmentChanged,
    required TResult Function(_DateTimeChanged value) onDateTimeChanged,
    required TResult Function(_DateChanged value) onDateChanged,
    required TResult Function(_TimeChanged value) onTimeChanged,
    required TResult Function(_VisitTypeChanged value) onVisitTypeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return onDateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TreatmentChanged value)? onTreatmentChanged,
    TResult? Function(_DateTimeChanged value)? onDateTimeChanged,
    TResult? Function(_DateChanged value)? onDateChanged,
    TResult? Function(_TimeChanged value)? onTimeChanged,
    TResult? Function(_VisitTypeChanged value)? onVisitTypeChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return onDateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TreatmentChanged value)? onTreatmentChanged,
    TResult Function(_DateTimeChanged value)? onDateTimeChanged,
    TResult Function(_DateChanged value)? onDateChanged,
    TResult Function(_TimeChanged value)? onTimeChanged,
    TResult Function(_VisitTypeChanged value)? onVisitTypeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (onDateChanged != null) {
      return onDateChanged(this);
    }
    return orElse();
  }
}

abstract class _DateChanged implements PatientVisitFormEvent {
  const factory _DateChanged(final DateTime dateTime) = _$DateChangedImpl;

  DateTime get dateTime;
  @JsonKey(ignore: true)
  _$$DateChangedImplCopyWith<_$DateChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimeChangedImplCopyWith<$Res> {
  factory _$$TimeChangedImplCopyWith(
          _$TimeChangedImpl value, $Res Function(_$TimeChangedImpl) then) =
      __$$TimeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TimeOfDay time});
}

/// @nodoc
class __$$TimeChangedImplCopyWithImpl<$Res>
    extends _$PatientVisitFormEventCopyWithImpl<$Res, _$TimeChangedImpl>
    implements _$$TimeChangedImplCopyWith<$Res> {
  __$$TimeChangedImplCopyWithImpl(
      _$TimeChangedImpl _value, $Res Function(_$TimeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_$TimeChangedImpl(
      null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc

class _$TimeChangedImpl implements _TimeChanged {
  const _$TimeChangedImpl(this.time);

  @override
  final TimeOfDay time;

  @override
  String toString() {
    return 'PatientVisitFormEvent.onTimeChanged(time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeChangedImpl &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeChangedImplCopyWith<_$TimeChangedImpl> get copyWith =>
      __$$TimeChangedImplCopyWithImpl<_$TimeChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<PatientVisit> patientVisit) initialized,
    required TResult Function(List<Prescription> treatment) onTreatmentChanged,
    required TResult Function(DateTime dateTime) onDateTimeChanged,
    required TResult Function(DateTime dateTime) onDateChanged,
    required TResult Function(TimeOfDay time) onTimeChanged,
    required TResult Function(Category visitType) onVisitTypeChanged,
    required TResult Function() saved,
  }) {
    return onTimeChanged(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<PatientVisit> patientVisit)? initialized,
    TResult? Function(List<Prescription> treatment)? onTreatmentChanged,
    TResult? Function(DateTime dateTime)? onDateTimeChanged,
    TResult? Function(DateTime dateTime)? onDateChanged,
    TResult? Function(TimeOfDay time)? onTimeChanged,
    TResult? Function(Category visitType)? onVisitTypeChanged,
    TResult? Function()? saved,
  }) {
    return onTimeChanged?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<PatientVisit> patientVisit)? initialized,
    TResult Function(List<Prescription> treatment)? onTreatmentChanged,
    TResult Function(DateTime dateTime)? onDateTimeChanged,
    TResult Function(DateTime dateTime)? onDateChanged,
    TResult Function(TimeOfDay time)? onTimeChanged,
    TResult Function(Category visitType)? onVisitTypeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (onTimeChanged != null) {
      return onTimeChanged(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TreatmentChanged value) onTreatmentChanged,
    required TResult Function(_DateTimeChanged value) onDateTimeChanged,
    required TResult Function(_DateChanged value) onDateChanged,
    required TResult Function(_TimeChanged value) onTimeChanged,
    required TResult Function(_VisitTypeChanged value) onVisitTypeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return onTimeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TreatmentChanged value)? onTreatmentChanged,
    TResult? Function(_DateTimeChanged value)? onDateTimeChanged,
    TResult? Function(_DateChanged value)? onDateChanged,
    TResult? Function(_TimeChanged value)? onTimeChanged,
    TResult? Function(_VisitTypeChanged value)? onVisitTypeChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return onTimeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TreatmentChanged value)? onTreatmentChanged,
    TResult Function(_DateTimeChanged value)? onDateTimeChanged,
    TResult Function(_DateChanged value)? onDateChanged,
    TResult Function(_TimeChanged value)? onTimeChanged,
    TResult Function(_VisitTypeChanged value)? onVisitTypeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (onTimeChanged != null) {
      return onTimeChanged(this);
    }
    return orElse();
  }
}

abstract class _TimeChanged implements PatientVisitFormEvent {
  const factory _TimeChanged(final TimeOfDay time) = _$TimeChangedImpl;

  TimeOfDay get time;
  @JsonKey(ignore: true)
  _$$TimeChangedImplCopyWith<_$TimeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VisitTypeChangedImplCopyWith<$Res> {
  factory _$$VisitTypeChangedImplCopyWith(_$VisitTypeChangedImpl value,
          $Res Function(_$VisitTypeChangedImpl) then) =
      __$$VisitTypeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Category visitType});

  $CategoryCopyWith<$Res> get visitType;
}

/// @nodoc
class __$$VisitTypeChangedImplCopyWithImpl<$Res>
    extends _$PatientVisitFormEventCopyWithImpl<$Res, _$VisitTypeChangedImpl>
    implements _$$VisitTypeChangedImplCopyWith<$Res> {
  __$$VisitTypeChangedImplCopyWithImpl(_$VisitTypeChangedImpl _value,
      $Res Function(_$VisitTypeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visitType = null,
  }) {
    return _then(_$VisitTypeChangedImpl(
      null == visitType
          ? _value.visitType
          : visitType // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get visitType {
    return $CategoryCopyWith<$Res>(_value.visitType, (value) {
      return _then(_value.copyWith(visitType: value));
    });
  }
}

/// @nodoc

class _$VisitTypeChangedImpl implements _VisitTypeChanged {
  const _$VisitTypeChangedImpl(this.visitType);

  @override
  final Category visitType;

  @override
  String toString() {
    return 'PatientVisitFormEvent.onVisitTypeChanged(visitType: $visitType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisitTypeChangedImpl &&
            (identical(other.visitType, visitType) ||
                other.visitType == visitType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visitType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VisitTypeChangedImplCopyWith<_$VisitTypeChangedImpl> get copyWith =>
      __$$VisitTypeChangedImplCopyWithImpl<_$VisitTypeChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<PatientVisit> patientVisit) initialized,
    required TResult Function(List<Prescription> treatment) onTreatmentChanged,
    required TResult Function(DateTime dateTime) onDateTimeChanged,
    required TResult Function(DateTime dateTime) onDateChanged,
    required TResult Function(TimeOfDay time) onTimeChanged,
    required TResult Function(Category visitType) onVisitTypeChanged,
    required TResult Function() saved,
  }) {
    return onVisitTypeChanged(visitType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<PatientVisit> patientVisit)? initialized,
    TResult? Function(List<Prescription> treatment)? onTreatmentChanged,
    TResult? Function(DateTime dateTime)? onDateTimeChanged,
    TResult? Function(DateTime dateTime)? onDateChanged,
    TResult? Function(TimeOfDay time)? onTimeChanged,
    TResult? Function(Category visitType)? onVisitTypeChanged,
    TResult? Function()? saved,
  }) {
    return onVisitTypeChanged?.call(visitType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<PatientVisit> patientVisit)? initialized,
    TResult Function(List<Prescription> treatment)? onTreatmentChanged,
    TResult Function(DateTime dateTime)? onDateTimeChanged,
    TResult Function(DateTime dateTime)? onDateChanged,
    TResult Function(TimeOfDay time)? onTimeChanged,
    TResult Function(Category visitType)? onVisitTypeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (onVisitTypeChanged != null) {
      return onVisitTypeChanged(visitType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TreatmentChanged value) onTreatmentChanged,
    required TResult Function(_DateTimeChanged value) onDateTimeChanged,
    required TResult Function(_DateChanged value) onDateChanged,
    required TResult Function(_TimeChanged value) onTimeChanged,
    required TResult Function(_VisitTypeChanged value) onVisitTypeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return onVisitTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TreatmentChanged value)? onTreatmentChanged,
    TResult? Function(_DateTimeChanged value)? onDateTimeChanged,
    TResult? Function(_DateChanged value)? onDateChanged,
    TResult? Function(_TimeChanged value)? onTimeChanged,
    TResult? Function(_VisitTypeChanged value)? onVisitTypeChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return onVisitTypeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TreatmentChanged value)? onTreatmentChanged,
    TResult Function(_DateTimeChanged value)? onDateTimeChanged,
    TResult Function(_DateChanged value)? onDateChanged,
    TResult Function(_TimeChanged value)? onTimeChanged,
    TResult Function(_VisitTypeChanged value)? onVisitTypeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (onVisitTypeChanged != null) {
      return onVisitTypeChanged(this);
    }
    return orElse();
  }
}

abstract class _VisitTypeChanged implements PatientVisitFormEvent {
  const factory _VisitTypeChanged(final Category visitType) =
      _$VisitTypeChangedImpl;

  Category get visitType;
  @JsonKey(ignore: true)
  _$$VisitTypeChangedImplCopyWith<_$VisitTypeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedImplCopyWith<$Res> {
  factory _$$SavedImplCopyWith(
          _$SavedImpl value, $Res Function(_$SavedImpl) then) =
      __$$SavedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedImplCopyWithImpl<$Res>
    extends _$PatientVisitFormEventCopyWithImpl<$Res, _$SavedImpl>
    implements _$$SavedImplCopyWith<$Res> {
  __$$SavedImplCopyWithImpl(
      _$SavedImpl _value, $Res Function(_$SavedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SavedImpl implements _Saved {
  const _$SavedImpl();

  @override
  String toString() {
    return 'PatientVisitFormEvent.saved()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SavedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<PatientVisit> patientVisit) initialized,
    required TResult Function(List<Prescription> treatment) onTreatmentChanged,
    required TResult Function(DateTime dateTime) onDateTimeChanged,
    required TResult Function(DateTime dateTime) onDateChanged,
    required TResult Function(TimeOfDay time) onTimeChanged,
    required TResult Function(Category visitType) onVisitTypeChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<PatientVisit> patientVisit)? initialized,
    TResult? Function(List<Prescription> treatment)? onTreatmentChanged,
    TResult? Function(DateTime dateTime)? onDateTimeChanged,
    TResult? Function(DateTime dateTime)? onDateChanged,
    TResult? Function(TimeOfDay time)? onTimeChanged,
    TResult? Function(Category visitType)? onVisitTypeChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<PatientVisit> patientVisit)? initialized,
    TResult Function(List<Prescription> treatment)? onTreatmentChanged,
    TResult Function(DateTime dateTime)? onDateTimeChanged,
    TResult Function(DateTime dateTime)? onDateChanged,
    TResult Function(TimeOfDay time)? onTimeChanged,
    TResult Function(Category visitType)? onVisitTypeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TreatmentChanged value) onTreatmentChanged,
    required TResult Function(_DateTimeChanged value) onDateTimeChanged,
    required TResult Function(_DateChanged value) onDateChanged,
    required TResult Function(_TimeChanged value) onTimeChanged,
    required TResult Function(_VisitTypeChanged value) onVisitTypeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_TreatmentChanged value)? onTreatmentChanged,
    TResult? Function(_DateTimeChanged value)? onDateTimeChanged,
    TResult? Function(_DateChanged value)? onDateChanged,
    TResult? Function(_TimeChanged value)? onTimeChanged,
    TResult? Function(_VisitTypeChanged value)? onVisitTypeChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TreatmentChanged value)? onTreatmentChanged,
    TResult Function(_DateTimeChanged value)? onDateTimeChanged,
    TResult Function(_DateChanged value)? onDateChanged,
    TResult Function(_TimeChanged value)? onTimeChanged,
    TResult Function(_VisitTypeChanged value)? onVisitTypeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements PatientVisitFormEvent {
  const factory _Saved() = _$SavedImpl;
}

/// @nodoc
mixin _$PatientVisitFormState {
  PatientVisit get patientVisit => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isUpdating => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<PatientVisitFailures, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientVisitFormStateCopyWith<PatientVisitFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientVisitFormStateCopyWith<$Res> {
  factory $PatientVisitFormStateCopyWith(PatientVisitFormState value,
          $Res Function(PatientVisitFormState) then) =
      _$PatientVisitFormStateCopyWithImpl<$Res, PatientVisitFormState>;
  @useResult
  $Res call(
      {PatientVisit patientVisit,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<PatientVisitFailures, Unit>> saveFailureOrSuccessOption});

  $PatientVisitCopyWith<$Res> get patientVisit;
}

/// @nodoc
class _$PatientVisitFormStateCopyWithImpl<$Res,
        $Val extends PatientVisitFormState>
    implements $PatientVisitFormStateCopyWith<$Res> {
  _$PatientVisitFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientVisit = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      patientVisit: null == patientVisit
          ? _value.patientVisit
          : patientVisit // ignore: cast_nullable_to_non_nullable
              as PatientVisit,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PatientVisitFailures, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientVisitCopyWith<$Res> get patientVisit {
    return $PatientVisitCopyWith<$Res>(_value.patientVisit, (value) {
      return _then(_value.copyWith(patientVisit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatientVisitFormStateImplCopyWith<$Res>
    implements $PatientVisitFormStateCopyWith<$Res> {
  factory _$$PatientVisitFormStateImplCopyWith(
          _$PatientVisitFormStateImpl value,
          $Res Function(_$PatientVisitFormStateImpl) then) =
      __$$PatientVisitFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PatientVisit patientVisit,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<PatientVisitFailures, Unit>> saveFailureOrSuccessOption});

  @override
  $PatientVisitCopyWith<$Res> get patientVisit;
}

/// @nodoc
class __$$PatientVisitFormStateImplCopyWithImpl<$Res>
    extends _$PatientVisitFormStateCopyWithImpl<$Res,
        _$PatientVisitFormStateImpl>
    implements _$$PatientVisitFormStateImplCopyWith<$Res> {
  __$$PatientVisitFormStateImplCopyWithImpl(_$PatientVisitFormStateImpl _value,
      $Res Function(_$PatientVisitFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientVisit = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$PatientVisitFormStateImpl(
      patientVisit: null == patientVisit
          ? _value.patientVisit
          : patientVisit // ignore: cast_nullable_to_non_nullable
              as PatientVisit,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PatientVisitFailures, Unit>>,
    ));
  }
}

/// @nodoc

class _$PatientVisitFormStateImpl implements _PatientVisitFormState {
  const _$PatientVisitFormStateImpl(
      {required this.patientVisit,
      required this.showErrorMessages,
      required this.isUpdating,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final PatientVisit patientVisit;
  @override
  final bool showErrorMessages;
  @override
  final bool isUpdating;
  @override
  final bool isSaving;
  @override
  final Option<Either<PatientVisitFailures, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'PatientVisitFormState(patientVisit: $patientVisit, showErrorMessages: $showErrorMessages, isUpdating: $isUpdating, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientVisitFormStateImpl &&
            (identical(other.patientVisit, patientVisit) ||
                other.patientVisit == patientVisit) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isUpdating, isUpdating) ||
                other.isUpdating == isUpdating) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, patientVisit, showErrorMessages,
      isUpdating, isSaving, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientVisitFormStateImplCopyWith<_$PatientVisitFormStateImpl>
      get copyWith => __$$PatientVisitFormStateImplCopyWithImpl<
          _$PatientVisitFormStateImpl>(this, _$identity);
}

abstract class _PatientVisitFormState implements PatientVisitFormState {
  const factory _PatientVisitFormState(
      {required final PatientVisit patientVisit,
      required final bool showErrorMessages,
      required final bool isUpdating,
      required final bool isSaving,
      required final Option<Either<PatientVisitFailures, Unit>>
          saveFailureOrSuccessOption}) = _$PatientVisitFormStateImpl;

  @override
  PatientVisit get patientVisit;
  @override
  bool get showErrorMessages;
  @override
  bool get isUpdating;
  @override
  bool get isSaving;
  @override
  Option<Either<PatientVisitFailures, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$PatientVisitFormStateImplCopyWith<_$PatientVisitFormStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
