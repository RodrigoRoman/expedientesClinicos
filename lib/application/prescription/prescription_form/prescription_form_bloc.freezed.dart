// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prescription_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PrescriptionFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Prescription> prescription) initialized,
    required TResult Function(Medicine medicine) onMedicineChanged,
    required TResult Function(int dose) onDoseChanged,
    required TResult Function(Duration frequency) onFrequencyChanged,
    required TResult Function(Duration duration) onDurationChanged,
    required TResult Function(List<Indication> listIndications)
        onIndicationsChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Prescription> prescription)? initialized,
    TResult? Function(Medicine medicine)? onMedicineChanged,
    TResult? Function(int dose)? onDoseChanged,
    TResult? Function(Duration frequency)? onFrequencyChanged,
    TResult? Function(Duration duration)? onDurationChanged,
    TResult? Function(List<Indication> listIndications)? onIndicationsChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Prescription> prescription)? initialized,
    TResult Function(Medicine medicine)? onMedicineChanged,
    TResult Function(int dose)? onDoseChanged,
    TResult Function(Duration frequency)? onFrequencyChanged,
    TResult Function(Duration duration)? onDurationChanged,
    TResult Function(List<Indication> listIndications)? onIndicationsChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_MedicineChanged value) onMedicineChanged,
    required TResult Function(_DoseChanged value) onDoseChanged,
    required TResult Function(_FrequencyChanged value) onFrequencyChanged,
    required TResult Function(_DurationChanged value) onDurationChanged,
    required TResult Function(_IndicationsChanged value) onIndicationsChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_MedicineChanged value)? onMedicineChanged,
    TResult? Function(_DoseChanged value)? onDoseChanged,
    TResult? Function(_FrequencyChanged value)? onFrequencyChanged,
    TResult? Function(_DurationChanged value)? onDurationChanged,
    TResult? Function(_IndicationsChanged value)? onIndicationsChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_MedicineChanged value)? onMedicineChanged,
    TResult Function(_DoseChanged value)? onDoseChanged,
    TResult Function(_FrequencyChanged value)? onFrequencyChanged,
    TResult Function(_DurationChanged value)? onDurationChanged,
    TResult Function(_IndicationsChanged value)? onIndicationsChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrescriptionFormEventCopyWith<$Res> {
  factory $PrescriptionFormEventCopyWith(PrescriptionFormEvent value,
          $Res Function(PrescriptionFormEvent) then) =
      _$PrescriptionFormEventCopyWithImpl<$Res, PrescriptionFormEvent>;
}

/// @nodoc
class _$PrescriptionFormEventCopyWithImpl<$Res,
        $Val extends PrescriptionFormEvent>
    implements $PrescriptionFormEventCopyWith<$Res> {
  _$PrescriptionFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<Prescription> prescription});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$PrescriptionFormEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prescription = null,
  }) {
    return _then(_$_Initialized(
      null == prescription
          ? _value.prescription
          : prescription // ignore: cast_nullable_to_non_nullable
              as Option<Prescription>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.prescription);

  @override
  final Option<Prescription> prescription;

  @override
  String toString() {
    return 'PrescriptionFormEvent.initialized(prescription: $prescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.prescription, prescription) ||
                other.prescription == prescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Prescription> prescription) initialized,
    required TResult Function(Medicine medicine) onMedicineChanged,
    required TResult Function(int dose) onDoseChanged,
    required TResult Function(Duration frequency) onFrequencyChanged,
    required TResult Function(Duration duration) onDurationChanged,
    required TResult Function(List<Indication> listIndications)
        onIndicationsChanged,
    required TResult Function() saved,
  }) {
    return initialized(prescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Prescription> prescription)? initialized,
    TResult? Function(Medicine medicine)? onMedicineChanged,
    TResult? Function(int dose)? onDoseChanged,
    TResult? Function(Duration frequency)? onFrequencyChanged,
    TResult? Function(Duration duration)? onDurationChanged,
    TResult? Function(List<Indication> listIndications)? onIndicationsChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(prescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Prescription> prescription)? initialized,
    TResult Function(Medicine medicine)? onMedicineChanged,
    TResult Function(int dose)? onDoseChanged,
    TResult Function(Duration frequency)? onFrequencyChanged,
    TResult Function(Duration duration)? onDurationChanged,
    TResult Function(List<Indication> listIndications)? onIndicationsChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(prescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_MedicineChanged value) onMedicineChanged,
    required TResult Function(_DoseChanged value) onDoseChanged,
    required TResult Function(_FrequencyChanged value) onFrequencyChanged,
    required TResult Function(_DurationChanged value) onDurationChanged,
    required TResult Function(_IndicationsChanged value) onIndicationsChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_MedicineChanged value)? onMedicineChanged,
    TResult? Function(_DoseChanged value)? onDoseChanged,
    TResult? Function(_FrequencyChanged value)? onFrequencyChanged,
    TResult? Function(_DurationChanged value)? onDurationChanged,
    TResult? Function(_IndicationsChanged value)? onIndicationsChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_MedicineChanged value)? onMedicineChanged,
    TResult Function(_DoseChanged value)? onDoseChanged,
    TResult Function(_FrequencyChanged value)? onFrequencyChanged,
    TResult Function(_DurationChanged value)? onDurationChanged,
    TResult Function(_IndicationsChanged value)? onIndicationsChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements PrescriptionFormEvent {
  const factory _Initialized(final Option<Prescription> prescription) =
      _$_Initialized;

  Option<Prescription> get prescription;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MedicineChangedCopyWith<$Res> {
  factory _$$_MedicineChangedCopyWith(
          _$_MedicineChanged value, $Res Function(_$_MedicineChanged) then) =
      __$$_MedicineChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Medicine medicine});

  $MedicineCopyWith<$Res> get medicine;
}

/// @nodoc
class __$$_MedicineChangedCopyWithImpl<$Res>
    extends _$PrescriptionFormEventCopyWithImpl<$Res, _$_MedicineChanged>
    implements _$$_MedicineChangedCopyWith<$Res> {
  __$$_MedicineChangedCopyWithImpl(
      _$_MedicineChanged _value, $Res Function(_$_MedicineChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicine = null,
  }) {
    return _then(_$_MedicineChanged(
      null == medicine
          ? _value.medicine
          : medicine // ignore: cast_nullable_to_non_nullable
              as Medicine,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MedicineCopyWith<$Res> get medicine {
    return $MedicineCopyWith<$Res>(_value.medicine, (value) {
      return _then(_value.copyWith(medicine: value));
    });
  }
}

/// @nodoc

class _$_MedicineChanged implements _MedicineChanged {
  const _$_MedicineChanged(this.medicine);

  @override
  final Medicine medicine;

  @override
  String toString() {
    return 'PrescriptionFormEvent.onMedicineChanged(medicine: $medicine)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicineChanged &&
            (identical(other.medicine, medicine) ||
                other.medicine == medicine));
  }

  @override
  int get hashCode => Object.hash(runtimeType, medicine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicineChangedCopyWith<_$_MedicineChanged> get copyWith =>
      __$$_MedicineChangedCopyWithImpl<_$_MedicineChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Prescription> prescription) initialized,
    required TResult Function(Medicine medicine) onMedicineChanged,
    required TResult Function(int dose) onDoseChanged,
    required TResult Function(Duration frequency) onFrequencyChanged,
    required TResult Function(Duration duration) onDurationChanged,
    required TResult Function(List<Indication> listIndications)
        onIndicationsChanged,
    required TResult Function() saved,
  }) {
    return onMedicineChanged(medicine);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Prescription> prescription)? initialized,
    TResult? Function(Medicine medicine)? onMedicineChanged,
    TResult? Function(int dose)? onDoseChanged,
    TResult? Function(Duration frequency)? onFrequencyChanged,
    TResult? Function(Duration duration)? onDurationChanged,
    TResult? Function(List<Indication> listIndications)? onIndicationsChanged,
    TResult? Function()? saved,
  }) {
    return onMedicineChanged?.call(medicine);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Prescription> prescription)? initialized,
    TResult Function(Medicine medicine)? onMedicineChanged,
    TResult Function(int dose)? onDoseChanged,
    TResult Function(Duration frequency)? onFrequencyChanged,
    TResult Function(Duration duration)? onDurationChanged,
    TResult Function(List<Indication> listIndications)? onIndicationsChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (onMedicineChanged != null) {
      return onMedicineChanged(medicine);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_MedicineChanged value) onMedicineChanged,
    required TResult Function(_DoseChanged value) onDoseChanged,
    required TResult Function(_FrequencyChanged value) onFrequencyChanged,
    required TResult Function(_DurationChanged value) onDurationChanged,
    required TResult Function(_IndicationsChanged value) onIndicationsChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return onMedicineChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_MedicineChanged value)? onMedicineChanged,
    TResult? Function(_DoseChanged value)? onDoseChanged,
    TResult? Function(_FrequencyChanged value)? onFrequencyChanged,
    TResult? Function(_DurationChanged value)? onDurationChanged,
    TResult? Function(_IndicationsChanged value)? onIndicationsChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return onMedicineChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_MedicineChanged value)? onMedicineChanged,
    TResult Function(_DoseChanged value)? onDoseChanged,
    TResult Function(_FrequencyChanged value)? onFrequencyChanged,
    TResult Function(_DurationChanged value)? onDurationChanged,
    TResult Function(_IndicationsChanged value)? onIndicationsChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (onMedicineChanged != null) {
      return onMedicineChanged(this);
    }
    return orElse();
  }
}

abstract class _MedicineChanged implements PrescriptionFormEvent {
  const factory _MedicineChanged(final Medicine medicine) = _$_MedicineChanged;

  Medicine get medicine;
  @JsonKey(ignore: true)
  _$$_MedicineChangedCopyWith<_$_MedicineChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DoseChangedCopyWith<$Res> {
  factory _$$_DoseChangedCopyWith(
          _$_DoseChanged value, $Res Function(_$_DoseChanged) then) =
      __$$_DoseChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({int dose});
}

/// @nodoc
class __$$_DoseChangedCopyWithImpl<$Res>
    extends _$PrescriptionFormEventCopyWithImpl<$Res, _$_DoseChanged>
    implements _$$_DoseChangedCopyWith<$Res> {
  __$$_DoseChangedCopyWithImpl(
      _$_DoseChanged _value, $Res Function(_$_DoseChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dose = null,
  }) {
    return _then(_$_DoseChanged(
      null == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DoseChanged implements _DoseChanged {
  const _$_DoseChanged(this.dose);

  @override
  final int dose;

  @override
  String toString() {
    return 'PrescriptionFormEvent.onDoseChanged(dose: $dose)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoseChanged &&
            (identical(other.dose, dose) || other.dose == dose));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dose);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DoseChangedCopyWith<_$_DoseChanged> get copyWith =>
      __$$_DoseChangedCopyWithImpl<_$_DoseChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Prescription> prescription) initialized,
    required TResult Function(Medicine medicine) onMedicineChanged,
    required TResult Function(int dose) onDoseChanged,
    required TResult Function(Duration frequency) onFrequencyChanged,
    required TResult Function(Duration duration) onDurationChanged,
    required TResult Function(List<Indication> listIndications)
        onIndicationsChanged,
    required TResult Function() saved,
  }) {
    return onDoseChanged(dose);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Prescription> prescription)? initialized,
    TResult? Function(Medicine medicine)? onMedicineChanged,
    TResult? Function(int dose)? onDoseChanged,
    TResult? Function(Duration frequency)? onFrequencyChanged,
    TResult? Function(Duration duration)? onDurationChanged,
    TResult? Function(List<Indication> listIndications)? onIndicationsChanged,
    TResult? Function()? saved,
  }) {
    return onDoseChanged?.call(dose);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Prescription> prescription)? initialized,
    TResult Function(Medicine medicine)? onMedicineChanged,
    TResult Function(int dose)? onDoseChanged,
    TResult Function(Duration frequency)? onFrequencyChanged,
    TResult Function(Duration duration)? onDurationChanged,
    TResult Function(List<Indication> listIndications)? onIndicationsChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (onDoseChanged != null) {
      return onDoseChanged(dose);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_MedicineChanged value) onMedicineChanged,
    required TResult Function(_DoseChanged value) onDoseChanged,
    required TResult Function(_FrequencyChanged value) onFrequencyChanged,
    required TResult Function(_DurationChanged value) onDurationChanged,
    required TResult Function(_IndicationsChanged value) onIndicationsChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return onDoseChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_MedicineChanged value)? onMedicineChanged,
    TResult? Function(_DoseChanged value)? onDoseChanged,
    TResult? Function(_FrequencyChanged value)? onFrequencyChanged,
    TResult? Function(_DurationChanged value)? onDurationChanged,
    TResult? Function(_IndicationsChanged value)? onIndicationsChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return onDoseChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_MedicineChanged value)? onMedicineChanged,
    TResult Function(_DoseChanged value)? onDoseChanged,
    TResult Function(_FrequencyChanged value)? onFrequencyChanged,
    TResult Function(_DurationChanged value)? onDurationChanged,
    TResult Function(_IndicationsChanged value)? onIndicationsChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (onDoseChanged != null) {
      return onDoseChanged(this);
    }
    return orElse();
  }
}

abstract class _DoseChanged implements PrescriptionFormEvent {
  const factory _DoseChanged(final int dose) = _$_DoseChanged;

  int get dose;
  @JsonKey(ignore: true)
  _$$_DoseChangedCopyWith<_$_DoseChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FrequencyChangedCopyWith<$Res> {
  factory _$$_FrequencyChangedCopyWith(
          _$_FrequencyChanged value, $Res Function(_$_FrequencyChanged) then) =
      __$$_FrequencyChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration frequency});
}

/// @nodoc
class __$$_FrequencyChangedCopyWithImpl<$Res>
    extends _$PrescriptionFormEventCopyWithImpl<$Res, _$_FrequencyChanged>
    implements _$$_FrequencyChangedCopyWith<$Res> {
  __$$_FrequencyChangedCopyWithImpl(
      _$_FrequencyChanged _value, $Res Function(_$_FrequencyChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frequency = null,
  }) {
    return _then(_$_FrequencyChanged(
      null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_FrequencyChanged implements _FrequencyChanged {
  const _$_FrequencyChanged(this.frequency);

  @override
  final Duration frequency;

  @override
  String toString() {
    return 'PrescriptionFormEvent.onFrequencyChanged(frequency: $frequency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FrequencyChanged &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, frequency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FrequencyChangedCopyWith<_$_FrequencyChanged> get copyWith =>
      __$$_FrequencyChangedCopyWithImpl<_$_FrequencyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Prescription> prescription) initialized,
    required TResult Function(Medicine medicine) onMedicineChanged,
    required TResult Function(int dose) onDoseChanged,
    required TResult Function(Duration frequency) onFrequencyChanged,
    required TResult Function(Duration duration) onDurationChanged,
    required TResult Function(List<Indication> listIndications)
        onIndicationsChanged,
    required TResult Function() saved,
  }) {
    return onFrequencyChanged(frequency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Prescription> prescription)? initialized,
    TResult? Function(Medicine medicine)? onMedicineChanged,
    TResult? Function(int dose)? onDoseChanged,
    TResult? Function(Duration frequency)? onFrequencyChanged,
    TResult? Function(Duration duration)? onDurationChanged,
    TResult? Function(List<Indication> listIndications)? onIndicationsChanged,
    TResult? Function()? saved,
  }) {
    return onFrequencyChanged?.call(frequency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Prescription> prescription)? initialized,
    TResult Function(Medicine medicine)? onMedicineChanged,
    TResult Function(int dose)? onDoseChanged,
    TResult Function(Duration frequency)? onFrequencyChanged,
    TResult Function(Duration duration)? onDurationChanged,
    TResult Function(List<Indication> listIndications)? onIndicationsChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (onFrequencyChanged != null) {
      return onFrequencyChanged(frequency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_MedicineChanged value) onMedicineChanged,
    required TResult Function(_DoseChanged value) onDoseChanged,
    required TResult Function(_FrequencyChanged value) onFrequencyChanged,
    required TResult Function(_DurationChanged value) onDurationChanged,
    required TResult Function(_IndicationsChanged value) onIndicationsChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return onFrequencyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_MedicineChanged value)? onMedicineChanged,
    TResult? Function(_DoseChanged value)? onDoseChanged,
    TResult? Function(_FrequencyChanged value)? onFrequencyChanged,
    TResult? Function(_DurationChanged value)? onDurationChanged,
    TResult? Function(_IndicationsChanged value)? onIndicationsChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return onFrequencyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_MedicineChanged value)? onMedicineChanged,
    TResult Function(_DoseChanged value)? onDoseChanged,
    TResult Function(_FrequencyChanged value)? onFrequencyChanged,
    TResult Function(_DurationChanged value)? onDurationChanged,
    TResult Function(_IndicationsChanged value)? onIndicationsChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (onFrequencyChanged != null) {
      return onFrequencyChanged(this);
    }
    return orElse();
  }
}

abstract class _FrequencyChanged implements PrescriptionFormEvent {
  const factory _FrequencyChanged(final Duration frequency) =
      _$_FrequencyChanged;

  Duration get frequency;
  @JsonKey(ignore: true)
  _$$_FrequencyChangedCopyWith<_$_FrequencyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DurationChangedCopyWith<$Res> {
  factory _$$_DurationChangedCopyWith(
          _$_DurationChanged value, $Res Function(_$_DurationChanged) then) =
      __$$_DurationChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$_DurationChangedCopyWithImpl<$Res>
    extends _$PrescriptionFormEventCopyWithImpl<$Res, _$_DurationChanged>
    implements _$$_DurationChangedCopyWith<$Res> {
  __$$_DurationChangedCopyWithImpl(
      _$_DurationChanged _value, $Res Function(_$_DurationChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$_DurationChanged(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_DurationChanged implements _DurationChanged {
  const _$_DurationChanged(this.duration);

  @override
  final Duration duration;

  @override
  String toString() {
    return 'PrescriptionFormEvent.onDurationChanged(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DurationChanged &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DurationChangedCopyWith<_$_DurationChanged> get copyWith =>
      __$$_DurationChangedCopyWithImpl<_$_DurationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Prescription> prescription) initialized,
    required TResult Function(Medicine medicine) onMedicineChanged,
    required TResult Function(int dose) onDoseChanged,
    required TResult Function(Duration frequency) onFrequencyChanged,
    required TResult Function(Duration duration) onDurationChanged,
    required TResult Function(List<Indication> listIndications)
        onIndicationsChanged,
    required TResult Function() saved,
  }) {
    return onDurationChanged(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Prescription> prescription)? initialized,
    TResult? Function(Medicine medicine)? onMedicineChanged,
    TResult? Function(int dose)? onDoseChanged,
    TResult? Function(Duration frequency)? onFrequencyChanged,
    TResult? Function(Duration duration)? onDurationChanged,
    TResult? Function(List<Indication> listIndications)? onIndicationsChanged,
    TResult? Function()? saved,
  }) {
    return onDurationChanged?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Prescription> prescription)? initialized,
    TResult Function(Medicine medicine)? onMedicineChanged,
    TResult Function(int dose)? onDoseChanged,
    TResult Function(Duration frequency)? onFrequencyChanged,
    TResult Function(Duration duration)? onDurationChanged,
    TResult Function(List<Indication> listIndications)? onIndicationsChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (onDurationChanged != null) {
      return onDurationChanged(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_MedicineChanged value) onMedicineChanged,
    required TResult Function(_DoseChanged value) onDoseChanged,
    required TResult Function(_FrequencyChanged value) onFrequencyChanged,
    required TResult Function(_DurationChanged value) onDurationChanged,
    required TResult Function(_IndicationsChanged value) onIndicationsChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return onDurationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_MedicineChanged value)? onMedicineChanged,
    TResult? Function(_DoseChanged value)? onDoseChanged,
    TResult? Function(_FrequencyChanged value)? onFrequencyChanged,
    TResult? Function(_DurationChanged value)? onDurationChanged,
    TResult? Function(_IndicationsChanged value)? onIndicationsChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return onDurationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_MedicineChanged value)? onMedicineChanged,
    TResult Function(_DoseChanged value)? onDoseChanged,
    TResult Function(_FrequencyChanged value)? onFrequencyChanged,
    TResult Function(_DurationChanged value)? onDurationChanged,
    TResult Function(_IndicationsChanged value)? onIndicationsChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (onDurationChanged != null) {
      return onDurationChanged(this);
    }
    return orElse();
  }
}

abstract class _DurationChanged implements PrescriptionFormEvent {
  const factory _DurationChanged(final Duration duration) = _$_DurationChanged;

  Duration get duration;
  @JsonKey(ignore: true)
  _$$_DurationChangedCopyWith<_$_DurationChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IndicationsChangedCopyWith<$Res> {
  factory _$$_IndicationsChangedCopyWith(_$_IndicationsChanged value,
          $Res Function(_$_IndicationsChanged) then) =
      __$$_IndicationsChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Indication> listIndications});
}

/// @nodoc
class __$$_IndicationsChangedCopyWithImpl<$Res>
    extends _$PrescriptionFormEventCopyWithImpl<$Res, _$_IndicationsChanged>
    implements _$$_IndicationsChangedCopyWith<$Res> {
  __$$_IndicationsChangedCopyWithImpl(
      _$_IndicationsChanged _value, $Res Function(_$_IndicationsChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listIndications = null,
  }) {
    return _then(_$_IndicationsChanged(
      null == listIndications
          ? _value._listIndications
          : listIndications // ignore: cast_nullable_to_non_nullable
              as List<Indication>,
    ));
  }
}

/// @nodoc

class _$_IndicationsChanged implements _IndicationsChanged {
  const _$_IndicationsChanged(final List<Indication> listIndications)
      : _listIndications = listIndications;

  final List<Indication> _listIndications;
  @override
  List<Indication> get listIndications {
    if (_listIndications is EqualUnmodifiableListView) return _listIndications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listIndications);
  }

  @override
  String toString() {
    return 'PrescriptionFormEvent.onIndicationsChanged(listIndications: $listIndications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IndicationsChanged &&
            const DeepCollectionEquality()
                .equals(other._listIndications, _listIndications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listIndications));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IndicationsChangedCopyWith<_$_IndicationsChanged> get copyWith =>
      __$$_IndicationsChangedCopyWithImpl<_$_IndicationsChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Prescription> prescription) initialized,
    required TResult Function(Medicine medicine) onMedicineChanged,
    required TResult Function(int dose) onDoseChanged,
    required TResult Function(Duration frequency) onFrequencyChanged,
    required TResult Function(Duration duration) onDurationChanged,
    required TResult Function(List<Indication> listIndications)
        onIndicationsChanged,
    required TResult Function() saved,
  }) {
    return onIndicationsChanged(listIndications);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Prescription> prescription)? initialized,
    TResult? Function(Medicine medicine)? onMedicineChanged,
    TResult? Function(int dose)? onDoseChanged,
    TResult? Function(Duration frequency)? onFrequencyChanged,
    TResult? Function(Duration duration)? onDurationChanged,
    TResult? Function(List<Indication> listIndications)? onIndicationsChanged,
    TResult? Function()? saved,
  }) {
    return onIndicationsChanged?.call(listIndications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Prescription> prescription)? initialized,
    TResult Function(Medicine medicine)? onMedicineChanged,
    TResult Function(int dose)? onDoseChanged,
    TResult Function(Duration frequency)? onFrequencyChanged,
    TResult Function(Duration duration)? onDurationChanged,
    TResult Function(List<Indication> listIndications)? onIndicationsChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (onIndicationsChanged != null) {
      return onIndicationsChanged(listIndications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_MedicineChanged value) onMedicineChanged,
    required TResult Function(_DoseChanged value) onDoseChanged,
    required TResult Function(_FrequencyChanged value) onFrequencyChanged,
    required TResult Function(_DurationChanged value) onDurationChanged,
    required TResult Function(_IndicationsChanged value) onIndicationsChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return onIndicationsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_MedicineChanged value)? onMedicineChanged,
    TResult? Function(_DoseChanged value)? onDoseChanged,
    TResult? Function(_FrequencyChanged value)? onFrequencyChanged,
    TResult? Function(_DurationChanged value)? onDurationChanged,
    TResult? Function(_IndicationsChanged value)? onIndicationsChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return onIndicationsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_MedicineChanged value)? onMedicineChanged,
    TResult Function(_DoseChanged value)? onDoseChanged,
    TResult Function(_FrequencyChanged value)? onFrequencyChanged,
    TResult Function(_DurationChanged value)? onDurationChanged,
    TResult Function(_IndicationsChanged value)? onIndicationsChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (onIndicationsChanged != null) {
      return onIndicationsChanged(this);
    }
    return orElse();
  }
}

abstract class _IndicationsChanged implements PrescriptionFormEvent {
  const factory _IndicationsChanged(final List<Indication> listIndications) =
      _$_IndicationsChanged;

  List<Indication> get listIndications;
  @JsonKey(ignore: true)
  _$$_IndicationsChangedCopyWith<_$_IndicationsChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$PrescriptionFormEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'PrescriptionFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Prescription> prescription) initialized,
    required TResult Function(Medicine medicine) onMedicineChanged,
    required TResult Function(int dose) onDoseChanged,
    required TResult Function(Duration frequency) onFrequencyChanged,
    required TResult Function(Duration duration) onDurationChanged,
    required TResult Function(List<Indication> listIndications)
        onIndicationsChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Prescription> prescription)? initialized,
    TResult? Function(Medicine medicine)? onMedicineChanged,
    TResult? Function(int dose)? onDoseChanged,
    TResult? Function(Duration frequency)? onFrequencyChanged,
    TResult? Function(Duration duration)? onDurationChanged,
    TResult? Function(List<Indication> listIndications)? onIndicationsChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Prescription> prescription)? initialized,
    TResult Function(Medicine medicine)? onMedicineChanged,
    TResult Function(int dose)? onDoseChanged,
    TResult Function(Duration frequency)? onFrequencyChanged,
    TResult Function(Duration duration)? onDurationChanged,
    TResult Function(List<Indication> listIndications)? onIndicationsChanged,
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
    required TResult Function(_MedicineChanged value) onMedicineChanged,
    required TResult Function(_DoseChanged value) onDoseChanged,
    required TResult Function(_FrequencyChanged value) onFrequencyChanged,
    required TResult Function(_DurationChanged value) onDurationChanged,
    required TResult Function(_IndicationsChanged value) onIndicationsChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_MedicineChanged value)? onMedicineChanged,
    TResult? Function(_DoseChanged value)? onDoseChanged,
    TResult? Function(_FrequencyChanged value)? onFrequencyChanged,
    TResult? Function(_DurationChanged value)? onDurationChanged,
    TResult? Function(_IndicationsChanged value)? onIndicationsChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_MedicineChanged value)? onMedicineChanged,
    TResult Function(_DoseChanged value)? onDoseChanged,
    TResult Function(_FrequencyChanged value)? onFrequencyChanged,
    TResult Function(_DurationChanged value)? onDurationChanged,
    TResult Function(_IndicationsChanged value)? onIndicationsChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements PrescriptionFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$PrescriptionFormState {
  Prescription get prescription => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isUpdating => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<PrescriptionFailures, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrescriptionFormStateCopyWith<PrescriptionFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrescriptionFormStateCopyWith<$Res> {
  factory $PrescriptionFormStateCopyWith(PrescriptionFormState value,
          $Res Function(PrescriptionFormState) then) =
      _$PrescriptionFormStateCopyWithImpl<$Res, PrescriptionFormState>;
  @useResult
  $Res call(
      {Prescription prescription,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<PrescriptionFailures, Unit>> saveFailureOrSuccessOption});

  $PrescriptionCopyWith<$Res> get prescription;
}

/// @nodoc
class _$PrescriptionFormStateCopyWithImpl<$Res,
        $Val extends PrescriptionFormState>
    implements $PrescriptionFormStateCopyWith<$Res> {
  _$PrescriptionFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prescription = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      prescription: null == prescription
          ? _value.prescription
          : prescription // ignore: cast_nullable_to_non_nullable
              as Prescription,
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
              as Option<Either<PrescriptionFailures, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PrescriptionCopyWith<$Res> get prescription {
    return $PrescriptionCopyWith<$Res>(_value.prescription, (value) {
      return _then(_value.copyWith(prescription: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PrescriptionFormStateCopyWith<$Res>
    implements $PrescriptionFormStateCopyWith<$Res> {
  factory _$$_PrescriptionFormStateCopyWith(_$_PrescriptionFormState value,
          $Res Function(_$_PrescriptionFormState) then) =
      __$$_PrescriptionFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Prescription prescription,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<PrescriptionFailures, Unit>> saveFailureOrSuccessOption});

  @override
  $PrescriptionCopyWith<$Res> get prescription;
}

/// @nodoc
class __$$_PrescriptionFormStateCopyWithImpl<$Res>
    extends _$PrescriptionFormStateCopyWithImpl<$Res, _$_PrescriptionFormState>
    implements _$$_PrescriptionFormStateCopyWith<$Res> {
  __$$_PrescriptionFormStateCopyWithImpl(_$_PrescriptionFormState _value,
      $Res Function(_$_PrescriptionFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prescription = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$_PrescriptionFormState(
      prescription: null == prescription
          ? _value.prescription
          : prescription // ignore: cast_nullable_to_non_nullable
              as Prescription,
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
              as Option<Either<PrescriptionFailures, Unit>>,
    ));
  }
}

/// @nodoc

class _$_PrescriptionFormState implements _PrescriptionFormState {
  const _$_PrescriptionFormState(
      {required this.prescription,
      required this.showErrorMessages,
      required this.isUpdating,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final Prescription prescription;
  @override
  final bool showErrorMessages;
  @override
  final bool isUpdating;
  @override
  final bool isSaving;
  @override
  final Option<Either<PrescriptionFailures, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'PrescriptionFormState(prescription: $prescription, showErrorMessages: $showErrorMessages, isUpdating: $isUpdating, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrescriptionFormState &&
            (identical(other.prescription, prescription) ||
                other.prescription == prescription) &&
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
  int get hashCode => Object.hash(runtimeType, prescription, showErrorMessages,
      isUpdating, isSaving, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrescriptionFormStateCopyWith<_$_PrescriptionFormState> get copyWith =>
      __$$_PrescriptionFormStateCopyWithImpl<_$_PrescriptionFormState>(
          this, _$identity);
}

abstract class _PrescriptionFormState implements PrescriptionFormState {
  const factory _PrescriptionFormState(
      {required final Prescription prescription,
      required final bool showErrorMessages,
      required final bool isUpdating,
      required final bool isSaving,
      required final Option<Either<PrescriptionFailures, Unit>>
          saveFailureOrSuccessOption}) = _$_PrescriptionFormState;

  @override
  Prescription get prescription;
  @override
  bool get showErrorMessages;
  @override
  bool get isUpdating;
  @override
  bool get isSaving;
  @override
  Option<Either<PrescriptionFailures, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_PrescriptionFormStateCopyWith<_$_PrescriptionFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
