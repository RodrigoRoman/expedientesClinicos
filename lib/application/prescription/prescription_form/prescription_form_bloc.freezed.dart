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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PrescriptionFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Prescription> prescription) initialized,
    required TResult Function(BrandedMedicine medicine) onMedicineChanged,
    required TResult Function(Dose dose) onDoseChanged,
    required TResult Function(LabelDoubleAmount labelDoubleAmount)
        onDoseAmountChanged,
    required TResult Function(Duration frequency) onChanged,
    required TResult Function(List<Indication> listIndications)
        onIndicationsChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Prescription> prescription)? initialized,
    TResult? Function(BrandedMedicine medicine)? onMedicineChanged,
    TResult? Function(Dose dose)? onDoseChanged,
    TResult? Function(LabelDoubleAmount labelDoubleAmount)? onDoseAmountChanged,
    TResult? Function(Duration frequency)? onChanged,
    TResult? Function(List<Indication> listIndications)? onIndicationsChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Prescription> prescription)? initialized,
    TResult Function(BrandedMedicine medicine)? onMedicineChanged,
    TResult Function(Dose dose)? onDoseChanged,
    TResult Function(LabelDoubleAmount labelDoubleAmount)? onDoseAmountChanged,
    TResult Function(Duration frequency)? onChanged,
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
    required TResult Function(_DoseAmountChanged value) onDoseAmountChanged,
    required TResult Function(_FrequencyChanged value) onChanged,
    required TResult Function(_IndicationsChanged value) onIndicationsChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_MedicineChanged value)? onMedicineChanged,
    TResult? Function(_DoseChanged value)? onDoseChanged,
    TResult? Function(_DoseAmountChanged value)? onDoseAmountChanged,
    TResult? Function(_FrequencyChanged value)? onChanged,
    TResult? Function(_IndicationsChanged value)? onIndicationsChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_MedicineChanged value)? onMedicineChanged,
    TResult Function(_DoseChanged value)? onDoseChanged,
    TResult Function(_DoseAmountChanged value)? onDoseAmountChanged,
    TResult Function(_FrequencyChanged value)? onChanged,
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
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<Prescription> prescription});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$PrescriptionFormEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prescription = null,
  }) {
    return _then(_$InitializedImpl(
      null == prescription
          ? _value.prescription
          : prescription // ignore: cast_nullable_to_non_nullable
              as Option<Prescription>,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.prescription);

  @override
  final Option<Prescription> prescription;

  @override
  String toString() {
    return 'PrescriptionFormEvent.initialized(prescription: $prescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.prescription, prescription) ||
                other.prescription == prescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Prescription> prescription) initialized,
    required TResult Function(BrandedMedicine medicine) onMedicineChanged,
    required TResult Function(Dose dose) onDoseChanged,
    required TResult Function(LabelDoubleAmount labelDoubleAmount)
        onDoseAmountChanged,
    required TResult Function(Duration frequency) onChanged,
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
    TResult? Function(BrandedMedicine medicine)? onMedicineChanged,
    TResult? Function(Dose dose)? onDoseChanged,
    TResult? Function(LabelDoubleAmount labelDoubleAmount)? onDoseAmountChanged,
    TResult? Function(Duration frequency)? onChanged,
    TResult? Function(List<Indication> listIndications)? onIndicationsChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(prescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Prescription> prescription)? initialized,
    TResult Function(BrandedMedicine medicine)? onMedicineChanged,
    TResult Function(Dose dose)? onDoseChanged,
    TResult Function(LabelDoubleAmount labelDoubleAmount)? onDoseAmountChanged,
    TResult Function(Duration frequency)? onChanged,
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
    required TResult Function(_DoseAmountChanged value) onDoseAmountChanged,
    required TResult Function(_FrequencyChanged value) onChanged,
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
    TResult? Function(_DoseAmountChanged value)? onDoseAmountChanged,
    TResult? Function(_FrequencyChanged value)? onChanged,
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
    TResult Function(_DoseAmountChanged value)? onDoseAmountChanged,
    TResult Function(_FrequencyChanged value)? onChanged,
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
      _$InitializedImpl;

  Option<Prescription> get prescription;
  @JsonKey(ignore: true)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MedicineChangedImplCopyWith<$Res> {
  factory _$$MedicineChangedImplCopyWith(_$MedicineChangedImpl value,
          $Res Function(_$MedicineChangedImpl) then) =
      __$$MedicineChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BrandedMedicine medicine});

  $BrandedMedicineCopyWith<$Res> get medicine;
}

/// @nodoc
class __$$MedicineChangedImplCopyWithImpl<$Res>
    extends _$PrescriptionFormEventCopyWithImpl<$Res, _$MedicineChangedImpl>
    implements _$$MedicineChangedImplCopyWith<$Res> {
  __$$MedicineChangedImplCopyWithImpl(
      _$MedicineChangedImpl _value, $Res Function(_$MedicineChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medicine = null,
  }) {
    return _then(_$MedicineChangedImpl(
      null == medicine
          ? _value.medicine
          : medicine // ignore: cast_nullable_to_non_nullable
              as BrandedMedicine,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandedMedicineCopyWith<$Res> get medicine {
    return $BrandedMedicineCopyWith<$Res>(_value.medicine, (value) {
      return _then(_value.copyWith(medicine: value));
    });
  }
}

/// @nodoc

class _$MedicineChangedImpl implements _MedicineChanged {
  const _$MedicineChangedImpl(this.medicine);

  @override
  final BrandedMedicine medicine;

  @override
  String toString() {
    return 'PrescriptionFormEvent.onMedicineChanged(medicine: $medicine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicineChangedImpl &&
            (identical(other.medicine, medicine) ||
                other.medicine == medicine));
  }

  @override
  int get hashCode => Object.hash(runtimeType, medicine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicineChangedImplCopyWith<_$MedicineChangedImpl> get copyWith =>
      __$$MedicineChangedImplCopyWithImpl<_$MedicineChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Prescription> prescription) initialized,
    required TResult Function(BrandedMedicine medicine) onMedicineChanged,
    required TResult Function(Dose dose) onDoseChanged,
    required TResult Function(LabelDoubleAmount labelDoubleAmount)
        onDoseAmountChanged,
    required TResult Function(Duration frequency) onChanged,
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
    TResult? Function(BrandedMedicine medicine)? onMedicineChanged,
    TResult? Function(Dose dose)? onDoseChanged,
    TResult? Function(LabelDoubleAmount labelDoubleAmount)? onDoseAmountChanged,
    TResult? Function(Duration frequency)? onChanged,
    TResult? Function(List<Indication> listIndications)? onIndicationsChanged,
    TResult? Function()? saved,
  }) {
    return onMedicineChanged?.call(medicine);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Prescription> prescription)? initialized,
    TResult Function(BrandedMedicine medicine)? onMedicineChanged,
    TResult Function(Dose dose)? onDoseChanged,
    TResult Function(LabelDoubleAmount labelDoubleAmount)? onDoseAmountChanged,
    TResult Function(Duration frequency)? onChanged,
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
    required TResult Function(_DoseAmountChanged value) onDoseAmountChanged,
    required TResult Function(_FrequencyChanged value) onChanged,
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
    TResult? Function(_DoseAmountChanged value)? onDoseAmountChanged,
    TResult? Function(_FrequencyChanged value)? onChanged,
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
    TResult Function(_DoseAmountChanged value)? onDoseAmountChanged,
    TResult Function(_FrequencyChanged value)? onChanged,
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
  const factory _MedicineChanged(final BrandedMedicine medicine) =
      _$MedicineChangedImpl;

  BrandedMedicine get medicine;
  @JsonKey(ignore: true)
  _$$MedicineChangedImplCopyWith<_$MedicineChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoseChangedImplCopyWith<$Res> {
  factory _$$DoseChangedImplCopyWith(
          _$DoseChangedImpl value, $Res Function(_$DoseChangedImpl) then) =
      __$$DoseChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Dose dose});

  $DoseCopyWith<$Res> get dose;
}

/// @nodoc
class __$$DoseChangedImplCopyWithImpl<$Res>
    extends _$PrescriptionFormEventCopyWithImpl<$Res, _$DoseChangedImpl>
    implements _$$DoseChangedImplCopyWith<$Res> {
  __$$DoseChangedImplCopyWithImpl(
      _$DoseChangedImpl _value, $Res Function(_$DoseChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dose = null,
  }) {
    return _then(_$DoseChangedImpl(
      null == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as Dose,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DoseCopyWith<$Res> get dose {
    return $DoseCopyWith<$Res>(_value.dose, (value) {
      return _then(_value.copyWith(dose: value));
    });
  }
}

/// @nodoc

class _$DoseChangedImpl implements _DoseChanged {
  const _$DoseChangedImpl(this.dose);

  @override
  final Dose dose;

  @override
  String toString() {
    return 'PrescriptionFormEvent.onDoseChanged(dose: $dose)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoseChangedImpl &&
            (identical(other.dose, dose) || other.dose == dose));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dose);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoseChangedImplCopyWith<_$DoseChangedImpl> get copyWith =>
      __$$DoseChangedImplCopyWithImpl<_$DoseChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Prescription> prescription) initialized,
    required TResult Function(BrandedMedicine medicine) onMedicineChanged,
    required TResult Function(Dose dose) onDoseChanged,
    required TResult Function(LabelDoubleAmount labelDoubleAmount)
        onDoseAmountChanged,
    required TResult Function(Duration frequency) onChanged,
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
    TResult? Function(BrandedMedicine medicine)? onMedicineChanged,
    TResult? Function(Dose dose)? onDoseChanged,
    TResult? Function(LabelDoubleAmount labelDoubleAmount)? onDoseAmountChanged,
    TResult? Function(Duration frequency)? onChanged,
    TResult? Function(List<Indication> listIndications)? onIndicationsChanged,
    TResult? Function()? saved,
  }) {
    return onDoseChanged?.call(dose);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Prescription> prescription)? initialized,
    TResult Function(BrandedMedicine medicine)? onMedicineChanged,
    TResult Function(Dose dose)? onDoseChanged,
    TResult Function(LabelDoubleAmount labelDoubleAmount)? onDoseAmountChanged,
    TResult Function(Duration frequency)? onChanged,
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
    required TResult Function(_DoseAmountChanged value) onDoseAmountChanged,
    required TResult Function(_FrequencyChanged value) onChanged,
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
    TResult? Function(_DoseAmountChanged value)? onDoseAmountChanged,
    TResult? Function(_FrequencyChanged value)? onChanged,
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
    TResult Function(_DoseAmountChanged value)? onDoseAmountChanged,
    TResult Function(_FrequencyChanged value)? onChanged,
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
  const factory _DoseChanged(final Dose dose) = _$DoseChangedImpl;

  Dose get dose;
  @JsonKey(ignore: true)
  _$$DoseChangedImplCopyWith<_$DoseChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoseAmountChangedImplCopyWith<$Res> {
  factory _$$DoseAmountChangedImplCopyWith(_$DoseAmountChangedImpl value,
          $Res Function(_$DoseAmountChangedImpl) then) =
      __$$DoseAmountChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LabelDoubleAmount labelDoubleAmount});

  $LabelDoubleAmountCopyWith<$Res> get labelDoubleAmount;
}

/// @nodoc
class __$$DoseAmountChangedImplCopyWithImpl<$Res>
    extends _$PrescriptionFormEventCopyWithImpl<$Res, _$DoseAmountChangedImpl>
    implements _$$DoseAmountChangedImplCopyWith<$Res> {
  __$$DoseAmountChangedImplCopyWithImpl(_$DoseAmountChangedImpl _value,
      $Res Function(_$DoseAmountChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelDoubleAmount = null,
  }) {
    return _then(_$DoseAmountChangedImpl(
      null == labelDoubleAmount
          ? _value.labelDoubleAmount
          : labelDoubleAmount // ignore: cast_nullable_to_non_nullable
              as LabelDoubleAmount,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LabelDoubleAmountCopyWith<$Res> get labelDoubleAmount {
    return $LabelDoubleAmountCopyWith<$Res>(_value.labelDoubleAmount, (value) {
      return _then(_value.copyWith(labelDoubleAmount: value));
    });
  }
}

/// @nodoc

class _$DoseAmountChangedImpl implements _DoseAmountChanged {
  const _$DoseAmountChangedImpl(this.labelDoubleAmount);

  @override
  final LabelDoubleAmount labelDoubleAmount;

  @override
  String toString() {
    return 'PrescriptionFormEvent.onDoseAmountChanged(labelDoubleAmount: $labelDoubleAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoseAmountChangedImpl &&
            (identical(other.labelDoubleAmount, labelDoubleAmount) ||
                other.labelDoubleAmount == labelDoubleAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, labelDoubleAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoseAmountChangedImplCopyWith<_$DoseAmountChangedImpl> get copyWith =>
      __$$DoseAmountChangedImplCopyWithImpl<_$DoseAmountChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Prescription> prescription) initialized,
    required TResult Function(BrandedMedicine medicine) onMedicineChanged,
    required TResult Function(Dose dose) onDoseChanged,
    required TResult Function(LabelDoubleAmount labelDoubleAmount)
        onDoseAmountChanged,
    required TResult Function(Duration frequency) onChanged,
    required TResult Function(List<Indication> listIndications)
        onIndicationsChanged,
    required TResult Function() saved,
  }) {
    return onDoseAmountChanged(labelDoubleAmount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Prescription> prescription)? initialized,
    TResult? Function(BrandedMedicine medicine)? onMedicineChanged,
    TResult? Function(Dose dose)? onDoseChanged,
    TResult? Function(LabelDoubleAmount labelDoubleAmount)? onDoseAmountChanged,
    TResult? Function(Duration frequency)? onChanged,
    TResult? Function(List<Indication> listIndications)? onIndicationsChanged,
    TResult? Function()? saved,
  }) {
    return onDoseAmountChanged?.call(labelDoubleAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Prescription> prescription)? initialized,
    TResult Function(BrandedMedicine medicine)? onMedicineChanged,
    TResult Function(Dose dose)? onDoseChanged,
    TResult Function(LabelDoubleAmount labelDoubleAmount)? onDoseAmountChanged,
    TResult Function(Duration frequency)? onChanged,
    TResult Function(List<Indication> listIndications)? onIndicationsChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (onDoseAmountChanged != null) {
      return onDoseAmountChanged(labelDoubleAmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_MedicineChanged value) onMedicineChanged,
    required TResult Function(_DoseChanged value) onDoseChanged,
    required TResult Function(_DoseAmountChanged value) onDoseAmountChanged,
    required TResult Function(_FrequencyChanged value) onChanged,
    required TResult Function(_IndicationsChanged value) onIndicationsChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return onDoseAmountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_MedicineChanged value)? onMedicineChanged,
    TResult? Function(_DoseChanged value)? onDoseChanged,
    TResult? Function(_DoseAmountChanged value)? onDoseAmountChanged,
    TResult? Function(_FrequencyChanged value)? onChanged,
    TResult? Function(_IndicationsChanged value)? onIndicationsChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return onDoseAmountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_MedicineChanged value)? onMedicineChanged,
    TResult Function(_DoseChanged value)? onDoseChanged,
    TResult Function(_DoseAmountChanged value)? onDoseAmountChanged,
    TResult Function(_FrequencyChanged value)? onChanged,
    TResult Function(_IndicationsChanged value)? onIndicationsChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (onDoseAmountChanged != null) {
      return onDoseAmountChanged(this);
    }
    return orElse();
  }
}

abstract class _DoseAmountChanged implements PrescriptionFormEvent {
  const factory _DoseAmountChanged(final LabelDoubleAmount labelDoubleAmount) =
      _$DoseAmountChangedImpl;

  LabelDoubleAmount get labelDoubleAmount;
  @JsonKey(ignore: true)
  _$$DoseAmountChangedImplCopyWith<_$DoseAmountChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FrequencyChangedImplCopyWith<$Res> {
  factory _$$FrequencyChangedImplCopyWith(_$FrequencyChangedImpl value,
          $Res Function(_$FrequencyChangedImpl) then) =
      __$$FrequencyChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration frequency});
}

/// @nodoc
class __$$FrequencyChangedImplCopyWithImpl<$Res>
    extends _$PrescriptionFormEventCopyWithImpl<$Res, _$FrequencyChangedImpl>
    implements _$$FrequencyChangedImplCopyWith<$Res> {
  __$$FrequencyChangedImplCopyWithImpl(_$FrequencyChangedImpl _value,
      $Res Function(_$FrequencyChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frequency = null,
  }) {
    return _then(_$FrequencyChangedImpl(
      null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$FrequencyChangedImpl implements _FrequencyChanged {
  const _$FrequencyChangedImpl(this.frequency);

  @override
  final Duration frequency;

  @override
  String toString() {
    return 'PrescriptionFormEvent.onChanged(frequency: $frequency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FrequencyChangedImpl &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, frequency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FrequencyChangedImplCopyWith<_$FrequencyChangedImpl> get copyWith =>
      __$$FrequencyChangedImplCopyWithImpl<_$FrequencyChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Prescription> prescription) initialized,
    required TResult Function(BrandedMedicine medicine) onMedicineChanged,
    required TResult Function(Dose dose) onDoseChanged,
    required TResult Function(LabelDoubleAmount labelDoubleAmount)
        onDoseAmountChanged,
    required TResult Function(Duration frequency) onChanged,
    required TResult Function(List<Indication> listIndications)
        onIndicationsChanged,
    required TResult Function() saved,
  }) {
    return onChanged(frequency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Prescription> prescription)? initialized,
    TResult? Function(BrandedMedicine medicine)? onMedicineChanged,
    TResult? Function(Dose dose)? onDoseChanged,
    TResult? Function(LabelDoubleAmount labelDoubleAmount)? onDoseAmountChanged,
    TResult? Function(Duration frequency)? onChanged,
    TResult? Function(List<Indication> listIndications)? onIndicationsChanged,
    TResult? Function()? saved,
  }) {
    return onChanged?.call(frequency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Prescription> prescription)? initialized,
    TResult Function(BrandedMedicine medicine)? onMedicineChanged,
    TResult Function(Dose dose)? onDoseChanged,
    TResult Function(LabelDoubleAmount labelDoubleAmount)? onDoseAmountChanged,
    TResult Function(Duration frequency)? onChanged,
    TResult Function(List<Indication> listIndications)? onIndicationsChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (onChanged != null) {
      return onChanged(frequency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_MedicineChanged value) onMedicineChanged,
    required TResult Function(_DoseChanged value) onDoseChanged,
    required TResult Function(_DoseAmountChanged value) onDoseAmountChanged,
    required TResult Function(_FrequencyChanged value) onChanged,
    required TResult Function(_IndicationsChanged value) onIndicationsChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return onChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_MedicineChanged value)? onMedicineChanged,
    TResult? Function(_DoseChanged value)? onDoseChanged,
    TResult? Function(_DoseAmountChanged value)? onDoseAmountChanged,
    TResult? Function(_FrequencyChanged value)? onChanged,
    TResult? Function(_IndicationsChanged value)? onIndicationsChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return onChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_MedicineChanged value)? onMedicineChanged,
    TResult Function(_DoseChanged value)? onDoseChanged,
    TResult Function(_DoseAmountChanged value)? onDoseAmountChanged,
    TResult Function(_FrequencyChanged value)? onChanged,
    TResult Function(_IndicationsChanged value)? onIndicationsChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (onChanged != null) {
      return onChanged(this);
    }
    return orElse();
  }
}

abstract class _FrequencyChanged implements PrescriptionFormEvent {
  const factory _FrequencyChanged(final Duration frequency) =
      _$FrequencyChangedImpl;

  Duration get frequency;
  @JsonKey(ignore: true)
  _$$FrequencyChangedImplCopyWith<_$FrequencyChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IndicationsChangedImplCopyWith<$Res> {
  factory _$$IndicationsChangedImplCopyWith(_$IndicationsChangedImpl value,
          $Res Function(_$IndicationsChangedImpl) then) =
      __$$IndicationsChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Indication> listIndications});
}

/// @nodoc
class __$$IndicationsChangedImplCopyWithImpl<$Res>
    extends _$PrescriptionFormEventCopyWithImpl<$Res, _$IndicationsChangedImpl>
    implements _$$IndicationsChangedImplCopyWith<$Res> {
  __$$IndicationsChangedImplCopyWithImpl(_$IndicationsChangedImpl _value,
      $Res Function(_$IndicationsChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listIndications = null,
  }) {
    return _then(_$IndicationsChangedImpl(
      null == listIndications
          ? _value._listIndications
          : listIndications // ignore: cast_nullable_to_non_nullable
              as List<Indication>,
    ));
  }
}

/// @nodoc

class _$IndicationsChangedImpl implements _IndicationsChanged {
  const _$IndicationsChangedImpl(final List<Indication> listIndications)
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndicationsChangedImpl &&
            const DeepCollectionEquality()
                .equals(other._listIndications, _listIndications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listIndications));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndicationsChangedImplCopyWith<_$IndicationsChangedImpl> get copyWith =>
      __$$IndicationsChangedImplCopyWithImpl<_$IndicationsChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Prescription> prescription) initialized,
    required TResult Function(BrandedMedicine medicine) onMedicineChanged,
    required TResult Function(Dose dose) onDoseChanged,
    required TResult Function(LabelDoubleAmount labelDoubleAmount)
        onDoseAmountChanged,
    required TResult Function(Duration frequency) onChanged,
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
    TResult? Function(BrandedMedicine medicine)? onMedicineChanged,
    TResult? Function(Dose dose)? onDoseChanged,
    TResult? Function(LabelDoubleAmount labelDoubleAmount)? onDoseAmountChanged,
    TResult? Function(Duration frequency)? onChanged,
    TResult? Function(List<Indication> listIndications)? onIndicationsChanged,
    TResult? Function()? saved,
  }) {
    return onIndicationsChanged?.call(listIndications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Prescription> prescription)? initialized,
    TResult Function(BrandedMedicine medicine)? onMedicineChanged,
    TResult Function(Dose dose)? onDoseChanged,
    TResult Function(LabelDoubleAmount labelDoubleAmount)? onDoseAmountChanged,
    TResult Function(Duration frequency)? onChanged,
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
    required TResult Function(_DoseAmountChanged value) onDoseAmountChanged,
    required TResult Function(_FrequencyChanged value) onChanged,
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
    TResult? Function(_DoseAmountChanged value)? onDoseAmountChanged,
    TResult? Function(_FrequencyChanged value)? onChanged,
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
    TResult Function(_DoseAmountChanged value)? onDoseAmountChanged,
    TResult Function(_FrequencyChanged value)? onChanged,
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
      _$IndicationsChangedImpl;

  List<Indication> get listIndications;
  @JsonKey(ignore: true)
  _$$IndicationsChangedImplCopyWith<_$IndicationsChangedImpl> get copyWith =>
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
    extends _$PrescriptionFormEventCopyWithImpl<$Res, _$SavedImpl>
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
    return 'PrescriptionFormEvent.saved()';
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
    required TResult Function(Option<Prescription> prescription) initialized,
    required TResult Function(BrandedMedicine medicine) onMedicineChanged,
    required TResult Function(Dose dose) onDoseChanged,
    required TResult Function(LabelDoubleAmount labelDoubleAmount)
        onDoseAmountChanged,
    required TResult Function(Duration frequency) onChanged,
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
    TResult? Function(BrandedMedicine medicine)? onMedicineChanged,
    TResult? Function(Dose dose)? onDoseChanged,
    TResult? Function(LabelDoubleAmount labelDoubleAmount)? onDoseAmountChanged,
    TResult? Function(Duration frequency)? onChanged,
    TResult? Function(List<Indication> listIndications)? onIndicationsChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Prescription> prescription)? initialized,
    TResult Function(BrandedMedicine medicine)? onMedicineChanged,
    TResult Function(Dose dose)? onDoseChanged,
    TResult Function(LabelDoubleAmount labelDoubleAmount)? onDoseAmountChanged,
    TResult Function(Duration frequency)? onChanged,
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
    required TResult Function(_DoseAmountChanged value) onDoseAmountChanged,
    required TResult Function(_FrequencyChanged value) onChanged,
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
    TResult? Function(_DoseAmountChanged value)? onDoseAmountChanged,
    TResult? Function(_FrequencyChanged value)? onChanged,
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
    TResult Function(_DoseAmountChanged value)? onDoseAmountChanged,
    TResult Function(_FrequencyChanged value)? onChanged,
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
  const factory _Saved() = _$SavedImpl;
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
abstract class _$$PrescriptionFormStateImplCopyWith<$Res>
    implements $PrescriptionFormStateCopyWith<$Res> {
  factory _$$PrescriptionFormStateImplCopyWith(
          _$PrescriptionFormStateImpl value,
          $Res Function(_$PrescriptionFormStateImpl) then) =
      __$$PrescriptionFormStateImplCopyWithImpl<$Res>;
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
class __$$PrescriptionFormStateImplCopyWithImpl<$Res>
    extends _$PrescriptionFormStateCopyWithImpl<$Res,
        _$PrescriptionFormStateImpl>
    implements _$$PrescriptionFormStateImplCopyWith<$Res> {
  __$$PrescriptionFormStateImplCopyWithImpl(_$PrescriptionFormStateImpl _value,
      $Res Function(_$PrescriptionFormStateImpl) _then)
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
    return _then(_$PrescriptionFormStateImpl(
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

class _$PrescriptionFormStateImpl implements _PrescriptionFormState {
  const _$PrescriptionFormStateImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrescriptionFormStateImpl &&
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
  _$$PrescriptionFormStateImplCopyWith<_$PrescriptionFormStateImpl>
      get copyWith => __$$PrescriptionFormStateImplCopyWithImpl<
          _$PrescriptionFormStateImpl>(this, _$identity);
}

abstract class _PrescriptionFormState implements PrescriptionFormState {
  const factory _PrescriptionFormState(
      {required final Prescription prescription,
      required final bool showErrorMessages,
      required final bool isUpdating,
      required final bool isSaving,
      required final Option<Either<PrescriptionFailures, Unit>>
          saveFailureOrSuccessOption}) = _$PrescriptionFormStateImpl;

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
  _$$PrescriptionFormStateImplCopyWith<_$PrescriptionFormStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
