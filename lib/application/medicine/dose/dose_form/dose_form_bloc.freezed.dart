// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dose_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DoseFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Option<Dose> intialMedicineOption) intial,
    required TResult Function(TimeInterval frequency) frequencyChanged,
    required TResult Function(TimeInterval duration) durationChanged,
    required TResult Function(int amount) amountChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Option<Dose> intialMedicineOption)? intial,
    TResult? Function(TimeInterval frequency)? frequencyChanged,
    TResult? Function(TimeInterval duration)? durationChanged,
    TResult? Function(int amount)? amountChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Option<Dose> intialMedicineOption)? intial,
    TResult Function(TimeInterval frequency)? frequencyChanged,
    TResult Function(TimeInterval duration)? durationChanged,
    TResult Function(int amount)? amountChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Initialized value) intial,
    required TResult Function(_FrequencyChanged value) frequencyChanged,
    required TResult Function(_DurationChanged value) durationChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_FrequencyChanged value)? frequencyChanged,
    TResult? Function(_DurationChanged value)? durationChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Initialized value)? intial,
    TResult Function(_FrequencyChanged value)? frequencyChanged,
    TResult Function(_DurationChanged value)? durationChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoseFormEventCopyWith<$Res> {
  factory $DoseFormEventCopyWith(
          DoseFormEvent value, $Res Function(DoseFormEvent) then) =
      _$DoseFormEventCopyWithImpl<$Res, DoseFormEvent>;
}

/// @nodoc
class _$DoseFormEventCopyWithImpl<$Res, $Val extends DoseFormEvent>
    implements $DoseFormEventCopyWith<$Res> {
  _$DoseFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$DoseFormEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'DoseFormEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Option<Dose> intialMedicineOption) intial,
    required TResult Function(TimeInterval frequency) frequencyChanged,
    required TResult Function(TimeInterval duration) durationChanged,
    required TResult Function(int amount) amountChanged,
    required TResult Function() saved,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Option<Dose> intialMedicineOption)? intial,
    TResult? Function(TimeInterval frequency)? frequencyChanged,
    TResult? Function(TimeInterval duration)? durationChanged,
    TResult? Function(int amount)? amountChanged,
    TResult? Function()? saved,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Option<Dose> intialMedicineOption)? intial,
    TResult Function(TimeInterval frequency)? frequencyChanged,
    TResult Function(TimeInterval duration)? durationChanged,
    TResult Function(int amount)? amountChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Initialized value) intial,
    required TResult Function(_FrequencyChanged value) frequencyChanged,
    required TResult Function(_DurationChanged value) durationChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_FrequencyChanged value)? frequencyChanged,
    TResult? Function(_DurationChanged value)? durationChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Initialized value)? intial,
    TResult Function(_FrequencyChanged value)? frequencyChanged,
    TResult Function(_DurationChanged value)? durationChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DoseFormEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<Dose> intialMedicineOption});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$DoseFormEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intialMedicineOption = null,
  }) {
    return _then(_$_Initialized(
      null == intialMedicineOption
          ? _value.intialMedicineOption
          : intialMedicineOption // ignore: cast_nullable_to_non_nullable
              as Option<Dose>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.intialMedicineOption);

  @override
  final Option<Dose> intialMedicineOption;

  @override
  String toString() {
    return 'DoseFormEvent.intial(intialMedicineOption: $intialMedicineOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.intialMedicineOption, intialMedicineOption) ||
                other.intialMedicineOption == intialMedicineOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, intialMedicineOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Option<Dose> intialMedicineOption) intial,
    required TResult Function(TimeInterval frequency) frequencyChanged,
    required TResult Function(TimeInterval duration) durationChanged,
    required TResult Function(int amount) amountChanged,
    required TResult Function() saved,
  }) {
    return intial(intialMedicineOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Option<Dose> intialMedicineOption)? intial,
    TResult? Function(TimeInterval frequency)? frequencyChanged,
    TResult? Function(TimeInterval duration)? durationChanged,
    TResult? Function(int amount)? amountChanged,
    TResult? Function()? saved,
  }) {
    return intial?.call(intialMedicineOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Option<Dose> intialMedicineOption)? intial,
    TResult Function(TimeInterval frequency)? frequencyChanged,
    TResult Function(TimeInterval duration)? durationChanged,
    TResult Function(int amount)? amountChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial(intialMedicineOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Initialized value) intial,
    required TResult Function(_FrequencyChanged value) frequencyChanged,
    required TResult Function(_DurationChanged value) durationChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return intial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_FrequencyChanged value)? frequencyChanged,
    TResult? Function(_DurationChanged value)? durationChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return intial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Initialized value)? intial,
    TResult Function(_FrequencyChanged value)? frequencyChanged,
    TResult Function(_DurationChanged value)? durationChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements DoseFormEvent {
  const factory _Initialized(final Option<Dose> intialMedicineOption) =
      _$_Initialized;

  Option<Dose> get intialMedicineOption;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FrequencyChangedCopyWith<$Res> {
  factory _$$_FrequencyChangedCopyWith(
          _$_FrequencyChanged value, $Res Function(_$_FrequencyChanged) then) =
      __$$_FrequencyChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({TimeInterval frequency});

  $TimeIntervalCopyWith<$Res> get frequency;
}

/// @nodoc
class __$$_FrequencyChangedCopyWithImpl<$Res>
    extends _$DoseFormEventCopyWithImpl<$Res, _$_FrequencyChanged>
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
              as TimeInterval,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeIntervalCopyWith<$Res> get frequency {
    return $TimeIntervalCopyWith<$Res>(_value.frequency, (value) {
      return _then(_value.copyWith(frequency: value));
    });
  }
}

/// @nodoc

class _$_FrequencyChanged implements _FrequencyChanged {
  const _$_FrequencyChanged(this.frequency);

  @override
  final TimeInterval frequency;

  @override
  String toString() {
    return 'DoseFormEvent.frequencyChanged(frequency: $frequency)';
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
    required TResult Function() started,
    required TResult Function(Option<Dose> intialMedicineOption) intial,
    required TResult Function(TimeInterval frequency) frequencyChanged,
    required TResult Function(TimeInterval duration) durationChanged,
    required TResult Function(int amount) amountChanged,
    required TResult Function() saved,
  }) {
    return frequencyChanged(frequency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Option<Dose> intialMedicineOption)? intial,
    TResult? Function(TimeInterval frequency)? frequencyChanged,
    TResult? Function(TimeInterval duration)? durationChanged,
    TResult? Function(int amount)? amountChanged,
    TResult? Function()? saved,
  }) {
    return frequencyChanged?.call(frequency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Option<Dose> intialMedicineOption)? intial,
    TResult Function(TimeInterval frequency)? frequencyChanged,
    TResult Function(TimeInterval duration)? durationChanged,
    TResult Function(int amount)? amountChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (frequencyChanged != null) {
      return frequencyChanged(frequency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Initialized value) intial,
    required TResult Function(_FrequencyChanged value) frequencyChanged,
    required TResult Function(_DurationChanged value) durationChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return frequencyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_FrequencyChanged value)? frequencyChanged,
    TResult? Function(_DurationChanged value)? durationChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return frequencyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Initialized value)? intial,
    TResult Function(_FrequencyChanged value)? frequencyChanged,
    TResult Function(_DurationChanged value)? durationChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (frequencyChanged != null) {
      return frequencyChanged(this);
    }
    return orElse();
  }
}

abstract class _FrequencyChanged implements DoseFormEvent {
  const factory _FrequencyChanged(final TimeInterval frequency) =
      _$_FrequencyChanged;

  TimeInterval get frequency;
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
  $Res call({TimeInterval duration});

  $TimeIntervalCopyWith<$Res> get duration;
}

/// @nodoc
class __$$_DurationChangedCopyWithImpl<$Res>
    extends _$DoseFormEventCopyWithImpl<$Res, _$_DurationChanged>
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
              as TimeInterval,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeIntervalCopyWith<$Res> get duration {
    return $TimeIntervalCopyWith<$Res>(_value.duration, (value) {
      return _then(_value.copyWith(duration: value));
    });
  }
}

/// @nodoc

class _$_DurationChanged implements _DurationChanged {
  const _$_DurationChanged(this.duration);

  @override
  final TimeInterval duration;

  @override
  String toString() {
    return 'DoseFormEvent.durationChanged(duration: $duration)';
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
    required TResult Function() started,
    required TResult Function(Option<Dose> intialMedicineOption) intial,
    required TResult Function(TimeInterval frequency) frequencyChanged,
    required TResult Function(TimeInterval duration) durationChanged,
    required TResult Function(int amount) amountChanged,
    required TResult Function() saved,
  }) {
    return durationChanged(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Option<Dose> intialMedicineOption)? intial,
    TResult? Function(TimeInterval frequency)? frequencyChanged,
    TResult? Function(TimeInterval duration)? durationChanged,
    TResult? Function(int amount)? amountChanged,
    TResult? Function()? saved,
  }) {
    return durationChanged?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Option<Dose> intialMedicineOption)? intial,
    TResult Function(TimeInterval frequency)? frequencyChanged,
    TResult Function(TimeInterval duration)? durationChanged,
    TResult Function(int amount)? amountChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (durationChanged != null) {
      return durationChanged(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Initialized value) intial,
    required TResult Function(_FrequencyChanged value) frequencyChanged,
    required TResult Function(_DurationChanged value) durationChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return durationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_FrequencyChanged value)? frequencyChanged,
    TResult? Function(_DurationChanged value)? durationChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return durationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Initialized value)? intial,
    TResult Function(_FrequencyChanged value)? frequencyChanged,
    TResult Function(_DurationChanged value)? durationChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (durationChanged != null) {
      return durationChanged(this);
    }
    return orElse();
  }
}

abstract class _DurationChanged implements DoseFormEvent {
  const factory _DurationChanged(final TimeInterval duration) =
      _$_DurationChanged;

  TimeInterval get duration;
  @JsonKey(ignore: true)
  _$$_DurationChangedCopyWith<_$_DurationChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AmountChangedCopyWith<$Res> {
  factory _$$_AmountChangedCopyWith(
          _$_AmountChanged value, $Res Function(_$_AmountChanged) then) =
      __$$_AmountChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({int amount});
}

/// @nodoc
class __$$_AmountChangedCopyWithImpl<$Res>
    extends _$DoseFormEventCopyWithImpl<$Res, _$_AmountChanged>
    implements _$$_AmountChangedCopyWith<$Res> {
  __$$_AmountChangedCopyWithImpl(
      _$_AmountChanged _value, $Res Function(_$_AmountChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$_AmountChanged(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AmountChanged implements _AmountChanged {
  const _$_AmountChanged(this.amount);

  @override
  final int amount;

  @override
  String toString() {
    return 'DoseFormEvent.amountChanged(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AmountChanged &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AmountChangedCopyWith<_$_AmountChanged> get copyWith =>
      __$$_AmountChangedCopyWithImpl<_$_AmountChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Option<Dose> intialMedicineOption) intial,
    required TResult Function(TimeInterval frequency) frequencyChanged,
    required TResult Function(TimeInterval duration) durationChanged,
    required TResult Function(int amount) amountChanged,
    required TResult Function() saved,
  }) {
    return amountChanged(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Option<Dose> intialMedicineOption)? intial,
    TResult? Function(TimeInterval frequency)? frequencyChanged,
    TResult? Function(TimeInterval duration)? durationChanged,
    TResult? Function(int amount)? amountChanged,
    TResult? Function()? saved,
  }) {
    return amountChanged?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Option<Dose> intialMedicineOption)? intial,
    TResult Function(TimeInterval frequency)? frequencyChanged,
    TResult Function(TimeInterval duration)? durationChanged,
    TResult Function(int amount)? amountChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Initialized value) intial,
    required TResult Function(_FrequencyChanged value) frequencyChanged,
    required TResult Function(_DurationChanged value) durationChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return amountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_FrequencyChanged value)? frequencyChanged,
    TResult? Function(_DurationChanged value)? durationChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return amountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Initialized value)? intial,
    TResult Function(_FrequencyChanged value)? frequencyChanged,
    TResult Function(_DurationChanged value)? durationChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(this);
    }
    return orElse();
  }
}

abstract class _AmountChanged implements DoseFormEvent {
  const factory _AmountChanged(final int amount) = _$_AmountChanged;

  int get amount;
  @JsonKey(ignore: true)
  _$$_AmountChangedCopyWith<_$_AmountChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$DoseFormEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'DoseFormEvent.saved()';
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
    required TResult Function() started,
    required TResult Function(Option<Dose> intialMedicineOption) intial,
    required TResult Function(TimeInterval frequency) frequencyChanged,
    required TResult Function(TimeInterval duration) durationChanged,
    required TResult Function(int amount) amountChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Option<Dose> intialMedicineOption)? intial,
    TResult? Function(TimeInterval frequency)? frequencyChanged,
    TResult? Function(TimeInterval duration)? durationChanged,
    TResult? Function(int amount)? amountChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Option<Dose> intialMedicineOption)? intial,
    TResult Function(TimeInterval frequency)? frequencyChanged,
    TResult Function(TimeInterval duration)? durationChanged,
    TResult Function(int amount)? amountChanged,
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
    required TResult Function(_Started value) started,
    required TResult Function(_Initialized value) intial,
    required TResult Function(_FrequencyChanged value) frequencyChanged,
    required TResult Function(_DurationChanged value) durationChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Initialized value)? intial,
    TResult? Function(_FrequencyChanged value)? frequencyChanged,
    TResult? Function(_DurationChanged value)? durationChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Initialized value)? intial,
    TResult Function(_FrequencyChanged value)? frequencyChanged,
    TResult Function(_DurationChanged value)? durationChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements DoseFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$DoseFormState {
  Dose get dose => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isUpdating => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<DoseFailures, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoseFormStateCopyWith<DoseFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoseFormStateCopyWith<$Res> {
  factory $DoseFormStateCopyWith(
          DoseFormState value, $Res Function(DoseFormState) then) =
      _$DoseFormStateCopyWithImpl<$Res, DoseFormState>;
  @useResult
  $Res call(
      {Dose dose,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<DoseFailures, Unit>> saveFailureOrSuccessOption});

  $DoseCopyWith<$Res> get dose;
}

/// @nodoc
class _$DoseFormStateCopyWithImpl<$Res, $Val extends DoseFormState>
    implements $DoseFormStateCopyWith<$Res> {
  _$DoseFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dose = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      dose: null == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as Dose,
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
              as Option<Either<DoseFailures, Unit>>,
    ) as $Val);
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
abstract class _$$_DoseFormStateCopyWith<$Res>
    implements $DoseFormStateCopyWith<$Res> {
  factory _$$_DoseFormStateCopyWith(
          _$_DoseFormState value, $Res Function(_$_DoseFormState) then) =
      __$$_DoseFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Dose dose,
      bool showErrorMessages,
      bool isUpdating,
      bool isSaving,
      Option<Either<DoseFailures, Unit>> saveFailureOrSuccessOption});

  @override
  $DoseCopyWith<$Res> get dose;
}

/// @nodoc
class __$$_DoseFormStateCopyWithImpl<$Res>
    extends _$DoseFormStateCopyWithImpl<$Res, _$_DoseFormState>
    implements _$$_DoseFormStateCopyWith<$Res> {
  __$$_DoseFormStateCopyWithImpl(
      _$_DoseFormState _value, $Res Function(_$_DoseFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dose = null,
    Object? showErrorMessages = null,
    Object? isUpdating = null,
    Object? isSaving = null,
    Object? saveFailureOrSuccessOption = null,
  }) {
    return _then(_$_DoseFormState(
      dose: null == dose
          ? _value.dose
          : dose // ignore: cast_nullable_to_non_nullable
              as Dose,
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
              as Option<Either<DoseFailures, Unit>>,
    ));
  }
}

/// @nodoc

class _$_DoseFormState implements _DoseFormState {
  const _$_DoseFormState(
      {required this.dose,
      required this.showErrorMessages,
      required this.isUpdating,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final Dose dose;
  @override
  final bool showErrorMessages;
  @override
  final bool isUpdating;
  @override
  final bool isSaving;
  @override
  final Option<Either<DoseFailures, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'DoseFormState(dose: $dose, showErrorMessages: $showErrorMessages, isUpdating: $isUpdating, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoseFormState &&
            (identical(other.dose, dose) || other.dose == dose) &&
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
  int get hashCode => Object.hash(runtimeType, dose, showErrorMessages,
      isUpdating, isSaving, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DoseFormStateCopyWith<_$_DoseFormState> get copyWith =>
      __$$_DoseFormStateCopyWithImpl<_$_DoseFormState>(this, _$identity);
}

abstract class _DoseFormState implements DoseFormState {
  const factory _DoseFormState(
      {required final Dose dose,
      required final bool showErrorMessages,
      required final bool isUpdating,
      required final bool isSaving,
      required final Option<Either<DoseFailures, Unit>>
          saveFailureOrSuccessOption}) = _$_DoseFormState;

  @override
  Dose get dose;
  @override
  bool get showErrorMessages;
  @override
  bool get isUpdating;
  @override
  bool get isSaving;
  @override
  Option<Either<DoseFailures, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_DoseFormStateCopyWith<_$_DoseFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
